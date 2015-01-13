/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.poli.util.jqgrid;

import co.edu.poli.util.Conexion;
import com.google.gson.Gson;
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
    private int page;
    /**
     * Cantidad de registros a mostrar
     */
    private int limit;
    /**
     * get index row - i.e. user click to sort
     */
    private int sidx;
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
     * 
     * @param page
     * @param limit
     * @param sidx
     * @param sord
     * @param _search
     * @throws Exception 
     */
    public JqGridData(int page, int limit, int sidx, String sord, boolean _search,int totalRows) {
        this.totalRows = totalRows;
        this.page = page;
        this.limit = limit;
        this.sidx = sidx != 0 ? sidx : 1;
        this.sord = sord;
        campos = new HashMap<>();
        cnn = Conexion.getConexion();
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

    public String generarSelect() {
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
        StringBuilder y = new StringBuilder(this.sql);
        this.sql = y.replace(this.sql.length() - 1, this.sql.length(), "").toString();
        this.sql += " \nFROM " + this.tabla + "\n" + join;
        this.sqlCount += " \nFROM " + this.tabla + "\n" + join;
        return "";
    }

    public int getPage() {
        return page;
    }

    public List<T> getRows() {
        return rows;
    }

    public int getLimit() {
        return limit;
    }

    public int getSidx() {
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
        map.put("total", totalRows);
        map.put("rows", rows);
        Gson gson = new Gson();
        String resultData = gson.toJson(map);
        return resultData;
    }
}
