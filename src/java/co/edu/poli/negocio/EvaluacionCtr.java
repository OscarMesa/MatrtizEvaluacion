/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.poli.negocio;

import co.edu.poli.dao.elementos;
import co.edu.poli.dao.encabezado_evaluacion;
import co.edu.poli.dao.estado;
import co.edu.poli.dao.evidencia;
import co.edu.poli.dao.modulos;
import co.edu.poli.dao.norma;
import co.edu.poli.dao.resultado_aprendizaje;
import co.edu.poli.sql.EstadosSQL;
import co.edu.poli.sql.EvaluacionSQL;
import co.edu.poli.util.Conexion;
import co.edu.poli.util.JsonBean;
import co.edu.poli.util.rules;
import co.edu.poli.util.searchOperation;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author omesagar
 */
public class EvaluacionCtr {
    
    private StringBuilder where;
    public  rules obj_searchOperation;
    public  HashMap<String,HashMap<String,String>> camposForaneos;

    public EvaluacionCtr() {
        obj_searchOperation = new rules();
        obj_searchOperation.setEq("%s=\"%s\"");
        obj_searchOperation.setNe("%s<>\"%s\"");
        obj_searchOperation.setBw("%s LIKE LOWER(\"%s%%\")");
        obj_searchOperation.setBn("%s NOT LIKE LOWER(\"%s%%\")");
        obj_searchOperation.setEw("%s LIKE LOWER(\"%%%s\")");
        obj_searchOperation.setEn("%s NOT LIKE LOWER(\"%%%s\")");
        obj_searchOperation.setCn("%s LIKE LOWER(\"%%%s%%\")");
        obj_searchOperation.setNc("%s NOT LIKE LOWER(\"%%%s%%\")");
        obj_searchOperation.setNu("%s IS NULL");
        obj_searchOperation.setNn("%s IS NOT NULL");
        obj_searchOperation.setIn("%s IN(%s)");
        obj_searchOperation.setNi("%s NOT IN(%s)");
        where = new StringBuilder();
    }
    
    public void setWhere(String _where_) {
        where = new StringBuilder(_where_);
    }
    
    public void appendWhere(String x)
    {
        where.append(x);
    }
    
    public String getWhere()
    {
        return this.where.toString();
    }

    public ArrayList<JsonBean> obtenerModulos(String termino) {
        try {
            Connection con = Conexion.getConexion();
            PreparedStatement st = con.prepareStatement(EvaluacionSQL.CargarModulos());
            st.setString(1, "%" + termino + "%");
            st.setString(2, "%" + termino + "%");
            st.setString(3, "%" + termino + "%");
            st.setString(4, "%" + termino + "%");
            st.setString(5, "%" + termino + "%");
            System.out.println(st);
            ResultSet r = st.executeQuery();
            ArrayList<JsonBean> modulos = new ArrayList<>();
            while (r.next()) {
                modulos e = new modulos();
                e.setCodigo(r.getString("codigo"));
                e.setDescripcion(r.getString("descripcion"));
                e.setGrado(r.getString("grado"));
                e.setGrado(r.getString("grado"));
                JsonBean j = new JsonBean(r.getString("codigo"), r.getString("descripcion"), e);
                modulos.add(j);
            }
            return modulos;
        } catch (SQLException ex) {
            Logger.getLogger(EstadosCtr.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static void main(String[] args) {
//        new EvaluacionCtr().obtenerModulos();
    }

    public Object obtenerNormas(String modulo, String termino) {
        try {
            Connection con = Conexion.getConexion();
            PreparedStatement st = con.prepareStatement(EvaluacionSQL.CargarNormasModulo());
            st.setString(1, modulo);
            st.setString(2, "%" + termino + "%");
            st.setString(3, "%" + termino + "%");
            System.out.println(st);
            ResultSet r = st.executeQuery();
            ArrayList<JsonBean> normas = new ArrayList<>();
            if (r.next()) {
                do {
                    norma e = new norma();
                    e.setCodigo_norma(r.getString("codigo_norma"));
                    e.setDescripcion(r.getString("descripcion"));
                    e.setEstado(r.getInt("estado"));
                    e.setId_norma(r.getInt("id_norma"));
                    JsonBean j = new JsonBean(r.getString("id_norma"), r.getString("codigo_norma"), e);
                    normas.add(j);
                } while (r.next());
            } else {
                normas.add(new JsonBean("0", "No se encontro norma relacionada", null));
            }
            return normas;
        } catch (SQLException ex) {
            Logger.getLogger(EstadosCtr.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Object obtenerElementos(String norma, String termino) {
        try {
            Connection con = Conexion.getConexion();
            PreparedStatement st = con.prepareStatement(EvaluacionSQL.CargarElementoNormas());
            st.setString(1, norma);
            st.setString(2, "%" + termino + "%");
            st.setString(3, "%" + termino + "%");
            System.out.println(st);
            ResultSet r = st.executeQuery();
            ArrayList<JsonBean> normas = new ArrayList<>();
            if (r.next()) {
                do {
                    elementos e = new elementos();
                    e.setCodigo_elemento(r.getString("codigo_elemento"));
                    e.setDescripcion(r.getString("descripcion"));
                    e.setId_elemento(r.getInt("id_elemento"));
                    JsonBean j = new JsonBean(r.getString("id_elemento"), r.getString("codigo_elemento"), e);
                    normas.add(j);
                } while (r.next());
            } else {
                normas.add(new JsonBean("0", "No se encontro elemento relacionada", null));
            }
            return normas;
        } catch (SQLException ex) {
            Logger.getLogger(EstadosCtr.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Object obtenerResultados(String modulo, String termino) {
        try {
            Connection con = Conexion.getConexion();
            PreparedStatement st = con.prepareStatement(EvaluacionSQL.CargarResultadoModulo());
            st.setString(1, modulo);
            st.setString(2, "%" + termino + "%");
            st.setString(3, "%" + termino + "%");
            System.out.println(st);
            ResultSet r = st.executeQuery();
            ArrayList<JsonBean> resultados = new ArrayList<>();
            if (r.next()) {
                do {
                    resultado_aprendizaje e = new resultado_aprendizaje();
                    e.setCodigo_resultado(r.getString("codigo_resultado"));
                    e.setDescripcion(r.getString("descripcion"));
                    e.setId_resultado(r.getInt("id_resultado"));
                    JsonBean j = new JsonBean(r.getString("id_resultado"), (r.getString("codigo_resultado") + " | " + r.getString("descripcion").substring(0, 50) + "..."), e);
                    resultados.add(j);
                } while (r.next());
            } else {
                resultados.add(new JsonBean("0", "No se encontro resultado de aprendizaje relacionado", null));
            }
            return resultados;
        } catch (SQLException ex) {
            Logger.getLogger(EstadosCtr.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Object obtenerEvidencia(String modulo, String termino) {
        try {
            Connection con = Conexion.getConexion();
            PreparedStatement st = con.prepareStatement(EvaluacionSQL.CargarEvidenciaModulo());
            st.setString(1, modulo);
            st.setString(2, "%" + termino + "%");
            st.setString(3, "%" + termino + "%");
            System.out.println(st);
            ResultSet r = st.executeQuery();
            ArrayList<JsonBean> resultados = new ArrayList<>();
            if (r.next()) {
                do {
                    evidencia e = new evidencia();
                    e.setDescripcion(r.getString("descripcion"));
                    e.setId_evidencia(r.getInt("id_evidencia"));
                    e.setId_modulo(r.getString("Id_modulo"));
                    e.setId_tipo_evidencia(r.getInt("id_tipo_evidencia"));
                    e.setPorcentaje(r.getInt("porcentaje"));
                    JsonBean j = new JsonBean(r.getString("id_evidencia"), (r.getString("descripcion") + " | " + r.getString("tpdescripcion") + " | " + r.getString("porcentaje") + "%"), e);
                    resultados.add(j);
                } while (r.next());
            } else {
                resultados.add(new JsonBean("0", "No se encontro evidencia relacionado", null));
            }
            return resultados;
        } catch (SQLException ex) {
            Logger.getLogger(EstadosCtr.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Object guardarEncabezadoEvaluacion(encabezado_evaluacion encabezado) {
        Map resultado = new HashMap();
        try {
            Connection con = Conexion.getConexion();
            PreparedStatement st = con.prepareStatement(EvaluacionSQL.GuardarEncabezadoEvaluacion());
            st.setString(1, encabezado.getId_modulo());
            st.setInt(2, encabezado.getId_norma());
            st.setInt(3, encabezado.getId_elemento());
            st.setInt(4, encabezado.getId_resultado());
            st.setInt(5, encabezado.getId_evidencia());
            st.setString(6, encabezado.getDescripcion());
            System.out.println(st);

            if (st.executeUpdate() > 0) {
                resultado.put("respuesta", true);
                resultado.put("mensaje", "El registro fue resgristrado exitosamente.");
            } else {
                resultado.put("respuesta", false);
                resultado.put("mensaje", "Se a generado un error durante la inserción.");
            }
            return resultado;
        } catch (SQLException ex) {
            resultado.put("respuesta", false);
            resultado.put("mensaje", ex.getMessage());
        }
        return resultado;
    }
    
    public int CountEncabezadoEvaluacion()
    {
        try {
            Connection con = Conexion.getConexion();
            PreparedStatement st = con.prepareStatement(EvaluacionSQL.coutnEncabezadoEvaluacionList(this.where.toString()));
            ResultSet r = st.executeQuery();
            if(r.next())
                return r.getInt("count");
        }catch(SQLException e)
        {
            System.out.println(e);
        }
        return 0;
    }


}