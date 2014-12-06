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
    
    public ArrayList<modulos> obtenerModulos()
    {
        try {
            Connection con = Conexion.getConexion();
            PreparedStatement st = con.prepareStatement(EvaluacionSQL.CargarModulos());
            ResultSet r = st.executeQuery();
            ArrayList<modulos> modulos = new ArrayList<>();
            while (r.next()) {                
                modulos e = new modulos();
                e.setCodigo(r.getString("codigo"));
                e.setDescripcion(r.getString("descripcion"));
                e.setGrado(r.getString("grado"));
                e.setGrado(r.getString("grado"));
                modulos.add(e);
            }
            return modulos;
        } catch (SQLException ex) {
            Logger.getLogger(EstadosCtr.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    
    public static void main(String[] args) {
        new EvaluacionCtr().obtenerModulos();
    }
    
}
