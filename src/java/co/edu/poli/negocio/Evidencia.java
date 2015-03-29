/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.poli.negocio;

import co.edu.poli.dao.evidencia;
import co.edu.poli.dao.tipo_evidencias;
import co.edu.poli.sql.EvidenciaSQL;
import co.edu.poli.util.Conexion;
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
public class Evidencia {
    
    public ArrayList<tipo_evidencias> getAllTiposEvidencia()
    {
        try {
            Connection con = Conexion.getConexion();
            PreparedStatement st = con.prepareStatement(EvidenciaSQL.obtenerTodasLosTiposEvidencias());
            System.out.println(st);
            ResultSet r = st.executeQuery();
            ArrayList<tipo_evidencias> evidencias = new ArrayList<>();
            if (r.next()) {
                do {
                    tipo_evidencias e = new tipo_evidencias();
                    e.setDescripcion(r.getString("descripcion"));
                    e.setId_tipo_evidencia(r.getInt("id_tipo_evidencia"));
                    evidencias.add(e);
                } while (r.next());
            }
            return evidencias;
        } catch (SQLException ex) {
            Logger.getLogger(EstadosCtr.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
}
