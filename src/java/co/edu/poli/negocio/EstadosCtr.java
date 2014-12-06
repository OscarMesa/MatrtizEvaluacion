/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.poli.negocio;

import co.edu.poli.sql.EstadosSQL;
import co.edu.poli.sql.NormaSQL;
import co.edu.poli.util.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import co.edu.poli.dao.estado;
/**
 *
 * @author omesagar
 */
public class EstadosCtr {
    
    public ArrayList<estado> obtenerEstados()
    {
        try {
            Connection con = Conexion.getConexion();
            PreparedStatement st = con.prepareStatement(EstadosSQL.CargarEstados());
            ResultSet r = st.executeQuery();
            ArrayList<estado> estados = new ArrayList<>();
            while (r.next()) {                
                estado e = new estado();
                e.setCodigo(r.getInt("codigo"));
                e.setDescripcion(r.getString("descripcion"));
                estados.add(e);
            }
            return estados;
        } catch (SQLException ex) {
            Logger.getLogger(EstadosCtr.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
}
