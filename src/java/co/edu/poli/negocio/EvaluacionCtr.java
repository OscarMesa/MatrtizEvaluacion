/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.poli.negocio;

import co.edu.poli.dao.estado;
import co.edu.poli.dao.modulos;
import co.edu.poli.sql.EstadosSQL;
import co.edu.poli.sql.EvaluacionSQL;
import co.edu.poli.util.Conexion;
import co.edu.poli.util.JsonBean;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author omesagar
 */
public class EvaluacionCtr {
    
    public ArrayList<JsonBean> obtenerModulos(String termino)
    {
        try {
            Connection con = Conexion.getConexion();
            PreparedStatement st = con.prepareStatement(EvaluacionSQL.CargarModulos());
            st.setString(1, "%"+termino+"%");
            st.setString(2, "%"+termino+"%");
            st.setString(3, "%"+termino+"%");
            st.setString(4, "%"+termino+"%");
            st.setString(5, "%"+termino+"%");
            System.out.println(st);
            ResultSet r = st.executeQuery();
            ArrayList<JsonBean> modulos = new ArrayList<>();
            while (r.next()) {                 
                modulos e = new modulos();
                e.setCodigo(r.getString("codigo"));
                e.setDescripcion(r.getString("descripcion"));
                e.setGrado(r.getString("grado"));
                e.setGrado(r.getString("grado"));
                JsonBean j = new JsonBean(r.getString("codigo"),r.getString("descripcion"),e);
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

    public Object obtenerNormas(String termino) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
