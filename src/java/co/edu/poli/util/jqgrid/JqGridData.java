/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.poli.util.jqgrid;

import co.edu.poli.util.Conexion;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 *
 * @author vanegumar
 */
public class JqGridData<E, T> {

    public Object myObjt;
    public Object gMyInstance;
    /**
     * Numero de la pagina en la que se encuentra
     */
    private double page;
    /**
     * Cantidad de registros a mostrar
     */
    private int limit;
    /**
     * get index row - i.e. user click to sort
     */
    private String sidx;
    /**
     * get index row - i.e. user click to sort
     */
    private String sord;
    /**
     * determinar si se puede buscar
     */
    private int _search;
    /**
     * Campo de filtro o buscar por algno de los campos en la consulta
     */
    private String filters;
    /**
     * Sql armado para ejecutar la consulta.
     */
    private String sql;
    /**
     * Sql para contar los registros de la consulta.
     */
    private String sqlCount;
    /**
     * Campos a mostrar de la tabla principal campo:alias
     */
    private HashMap<String, campoTabla> campos;
    /**
     * tabla principal de la consulta
     */
    private String tabla;
    /**
     * cantidad de resgistros a buscar
     */
    private int totalRows;

    /**
     * Variable para obtener la conexión.
     */
    private Connection cnn;
    /**
     * Registros de la busqueda
     */
    private List<T> rows;
    /**
     * Mapa con las operaciones de busqueda que puede retornar la Jqgrid
     */
    private HashMap<String, String> searchOperation;
    /**
     * Mapa que almacena la la busqueda de la grid
     */
    private HashMap filtersArr;
    /**
     * condicional de la aplicacion
     */
    private String where;
    /**
     * Cantaidad de registros que tree la busqueda.
     */
    private int count;
    /**
     *
     */
    private double total_pages;
    /**
     * 
     */
    private int start;
    /**
     *
     * @param page
     * @param limit
     * @param sidx
     * @param sord
     * @param _search
     * @throws Exception
     */
    public JqGridData(double page, int limit, String sidx, String sord, boolean _search, int totalRows, String filter) {
        this.totalRows = totalRows;
        this.page = page;
        this.limit = limit;
        this.sidx = sidx;
        this.sord = sord;
        this.filters = filter;
        this.where = "";
        this.count = 0;
        this.total_pages = 0;
        this.start = 0;
        campos = new HashMap<>();
        cnn = Conexion.getConexion();
        searchOperation = new HashMap<>();
        searchOperation.put("eq", "%s=\"%s\"");
        searchOperation.put("ne", "%s<>\"%s\"");
        searchOperation.put("bw", "%s LIKE LOWER(\"%s%%\")");
        searchOperation.put("bn", "%s NOT LIKE LOWER(\"%s%%\")");
        searchOperation.put("ew", "%s LIKE LOWER(\"%%%s\")");
        searchOperation.put("en", "%s NOT LIKE LOWER(\"%%%s\")");
        searchOperation.put("cn", "%s LIKE LOWER(\"%%%s%%\")");
        searchOperation.put("nc", "%s NOT LIKE LOWER(\"%%%s%%\")");
        searchOperation.put("nu", "%s IS NULL");
        searchOperation.put("nn", "%s IS NOT NULL");
        searchOperation.put("in", "%s IN(%s)");
        searchOperation.put("ni", "%s NOT IN(%s)");
        if (this.filters != null) {
            getJsonObject(this.filters);
        }
    }

    public void agregarCampo(String campo, campoTabla tabla) throws Exception {
        if (!campos.containsKey(campo)) {
            campos.put(campo, tabla);
        } else {
            throw new Exception("Esta clave ya fue agregada.");
        }
    }

    public void setInstnaciaClase(E myInstance, T gMyInstance) {
        myObjt = myInstance;
        this.gMyInstance = gMyInstance;
        this.tabla = myObjt.getClass().getSimpleName();
    }

    public void obtenerData() throws SQLException, InstantiationException, IllegalAccessException {
        ArrayList data = new ArrayList();
        this.generarSelect();
        PreparedStatement st = cnn.prepareStatement(this.sql);
        ResultSet r = st.executeQuery();
        while (r.next()) {
            Object obj = gMyInstance.getClass().newInstance();
            for (Field p : obj.getClass().getDeclaredFields()) {
                p.setAccessible(true);
                p.set(obj, r.getObject(p.getName()));
            }
            data.add(obj);
        }
        rows = data;
    }

    public String generarSelect() throws SQLException {
        String join = "";
        this.sql = "SELECT ";
        this.sqlCount = "SELECT COUNT(*) AS count";
        for (Field x : myObjt.getClass().getDeclaredFields()) {
            campoTabla c = campos.get(x.getName());
            if (c != null) {
                if (c.isMostar()) {
                    this.sql += this.tabla + "." + c.getCampo() + " AS " + c.getAlias() + ",";
                }
                if (c.getForaneo() != null) {
                    tablaForanea foraneo = c.getForaneo();
                    join += " LEFT OUTER JOIN " + foraneo.getTabla() + " ON " + this.tabla + "." + c.getCampo() + "=" + foraneo.getTabla() + "." + foraneo.getCampo() + "\n";
                    for (Iterator iterator = foraneo.getCamposMostrar().entrySet().iterator(); iterator.hasNext();) {
                        Map.Entry e = (Map.Entry) iterator.next();
                        this.sql += " " + foraneo.getTabla() + "." + e.getKey() + " AS " + e.getValue() + ",";
                    }
                }
            }
        }
        if (filtersArr != null) {
            Iterator it = filtersArr.entrySet().iterator();
            for (filter d : (ArrayList<filter>) filtersArr.get("rules")) {
                for (Field w : gMyInstance.getClass().getDeclaredFields()) {
                    if (w.getName().equals(d.getField())) {
                        w.setAccessible(true);
                        Column col;
                        if ((col = w.getAnnotation(Column.class)) != null) {
                            this.where += String.format(searchOperation.get(d.getOp()), col.tabla() + "." + col.columna(), d.getData()).toString() + " OR ";
                        }
                        break;
                    }
                }
            }
            StringBuilder y = new StringBuilder(this.where);
            where = y.delete(this.where.length() - 4, this.where.length()).toString();
            System.out.println(this.where);
        }
        StringBuilder y = new StringBuilder(this.sql);
        this.sql = y.replace(this.sql.length() - 1, this.sql.length(), "").toString();
        this.sql += " \nFROM " + this.tabla + "\n" + join;
        this.sqlCount += " \nFROM " + this.tabla + "\n" + join;
        if (!this.where.equals("")) {
            this.sql += " WHERE " + this.where;
            this.sqlCount += " WHERE " + this.where;
        }
        if (!this.sidx.equals("")) {
            this.sql += " ORDER BY " + this.sidx + " " + this.sord;
//            this.sqlCount += " ORDER BY " + this.sidx + " " + this.sord;
        }
        this.generarCountSql();

        if (this.count > 0) {
            total_pages = (double)Math.ceil((double)this.count / this.limit);
        } else {
            total_pages = 0;
        }
        if (this.page > this.total_pages) {
            this.page = this.total_pages;
        }
        this.start = (int)(this.total_pages == 0 ? 0 : (this.limit * this.page - this.limit));
        
        this.sql += " LIMIT " + String.valueOf(this.start) + ","+String.valueOf(this.limit);
        System.out.println("hello");
        return "";
    }

    /**
     * @author Vanessa Agudelo con esete metodo podemos determinar cuantos
     * registros traee la consulta
     */
    public void generarCountSql() throws SQLException {
        PreparedStatement st = cnn.prepareStatement(this.sqlCount);
        ResultSet r = st.executeQuery();
        while (r.next()) {
            this.count = r.getInt("count");
        }
    }

    public double getPage() {
        return page;
    }

    public List<T> getRows() {
        return rows;
    }

    public int getLimit() {
        return limit;
    }

    public String getSidx() {
        return sidx;
    }

    public String getSord() {
        return sord;
    }

    public Object getMyObjt() {
        return myObjt;
    }

    public void setMyObjt(Object myObjt) {
        this.myObjt = myObjt;
    }

    public Object getgMyInstance() {
        return gMyInstance;
    }

    public void setgMyInstance(Object gMyInstance) {
        this.gMyInstance = gMyInstance;
    }

    public int getSearch() {
        return _search;
    }

    public void setSearch(int _search) {
        this._search = _search;
    }

    public String getFilters() {
        return filters;
    }

    public void setFilters(String filters) {
        this.filters = filters;
    }

    public String getSql() {
        return sql;
    }

    public void setSql(String sql) {
        this.sql = sql;
    }

    public HashMap<String, campoTabla> getCampos() {
        return campos;
    }

    public void setCampos(HashMap<String, campoTabla> campos) {
        this.campos = campos;
    }

    public String getTabla() {
        return tabla;
    }

    public void setTabla(String tabla) {
        this.tabla = tabla;
    }

    public int getTotalRows() {
        return totalRows;
    }

    public void setTotalRows(int totalRows) {
        this.totalRows = totalRows;
    }

    public Connection getCnn() {
        return cnn;
    }

    public void setCnn(Connection cnn) {
        this.cnn = cnn;
    }

    public String getJsonString() {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("page", page);
        map.put("total", this.total_pages);
        map.put("records", this.count);
        map.put("rows", rows);
        Gson gson = new Gson();
        String resultData = gson.toJson(map);
        return resultData;
    }

    public void getJsonObject(String j) {

        /*String j = "{groupOp:OR,rules:[{field:id_encabezado,op:cn,data:prueba},"
         + "{field:modulo,op:cn,data:prueba},"
         + "{field:norma,op:cn,data:prueba},"
         + "{field:resultado,op:cn,data:prueba},"
         + "{field:evidencia,op:cn,data:prueba},"
         + "{field:elemento,op:cn,data:prueba},"
         + "{field:descripcion_encab,op:cn,data:prueba98}]}";*/
        filtersArr = new HashMap();
        Gson gson = new Gson();
        JsonElement jelement = new JsonParser().parse(j);
        JsonObject jobject = jelement.getAsJsonObject();
        filtersArr.put("groupOp", jobject.get("groupOp"));
        JsonArray array = jobject.getAsJsonArray("rules");
        ArrayList<filter> f = new ArrayList<>();

        for (int i = 0; i < array.size(); i++) {
            {
                JsonObject cont = array.get(i).getAsJsonObject();
                f.add(new filter(cont.get("field").getAsString(), cont.get("op").getAsString(), cont.get("data").getAsString()));
            }
        }
        filtersArr.put("rules", f);
//        System.out.println(System.out.printf(searchOperation.get("cn").toString(),"oscar","mesa").toString());
    }

    public String getSqlCount() {
        return sqlCount;
    }

    public void setSqlCount(String sqlCount) {
        this.sqlCount = sqlCount;
    }

    public HashMap<String, String> getSearchOperation() {
        return searchOperation;
    }

    public void setSearchOperation(HashMap<String, String> searchOperation) {
        this.searchOperation = searchOperation;
    }

    public HashMap getFiltersArr() {
        return filtersArr;
    }

    public void setFiltersArr(HashMap filtersArr) {
        this.filtersArr = filtersArr;
    }

    public static void main(String[] args) {
//        new JqGridData(0,0, "", "", false, 20).getJsonObject();
    }

}
