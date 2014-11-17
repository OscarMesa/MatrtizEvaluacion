/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.poli.negocio;

import co.edu.poli.dao.norma;
import co.edu.poli.sql.NormaSQL;
import co.edu.poli.util.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Vanessa Agudelo Marín
 */
public class NormaCtr {

    public ResultSet Listar() throws SQLException {
        Connection con = Conexion.getConexion();
        PreparedStatement st = con.prepareStatement(NormaSQL.ListarSQL());
        return st.executeQuery();
    }

    public norma MostrarNormaActualizar(int id) throws SQLException {
        Connection con = Conexion.getConexion();
        PreparedStatement st = con.prepareStatement(NormaSQL.SeleccionarNormaSQL());
        st.setObject(1, id);
        ResultSet r = st.executeQuery();
        if (r.next()) {
            norma norm = new norma();
            norm.setId_norma(r.getInt("id_norma"));
            norm.setCodigo_norma(r.getString("codigo_norma"));
            norm.setDescripcion(r.getString("descripcion"));
            return norm;
        } else {
            return null;
        }
    }

    /**
     * Este metodo ....
     *
     * @param norm
     * @return boolean
     * @throws SQLException
     */
    public boolean ValidarNorma(norma norm) throws SQLException {
        Connection con = Conexion.getConexion();
        PreparedStatement st = con.prepareStatement(NormaSQL.ValidarNormaSQL());
        st.setObject(1, norm.getCodigo_norma());
        /**
         * El metodo "executeQuery", permite obtener resultados de respuestas
         * para consultas de SELECT a diferencia del "execute" que permite
         * ejecutar la consulta y obtener los resultados de consultas Insert,
         * Delete, Update...
         */
        ResultSet r = st.executeQuery();
        if (r.next()) {
            return true;
        } else {
            return false;
        }
    }

    public boolean GuardarNorma(norma norm) throws SQLException {
        boolean respuesta = ValidarNorma(norm);
        if (respuesta == true) {
            throw new SQLException("Este codigo de norma no puede registrarse porque ya existe");
        } else {
            Connection con = Conexion.getConexion();
            PreparedStatement st = con.prepareStatement(NormaSQL.InsertarSQL());
            st.setString(1, norm.getCodigo_norma());
            st.setString(2, norm.getDescripcion());
            boolean r = st.execute();
            if (r == true) {
                //Guardado
                return true;
            } else {
                return false;
            }
        }
    }


    public boolean Modificar(norma norm) throws SQLException {
        boolean act_existe = Actualizar_Existe(norm);
        boolean respuesta = true;
        if(act_existe == false)
            respuesta = ValidarNorma(norm);
        
        if (respuesta == true) {
            throw new SQLException("Este codigo de norma no puede registrarse porque ya existe.");
        } else {
            Connection con = Conexion.getConexion();
            PreparedStatement st = con.prepareStatement(NormaSQL.ModificarSQL());
            st.setString(1, norm.getCodigo_norma());
            st.setString(2, norm.getDescripcion());
            st.setInt(3, norm.getId_norma());
            boolean r = st.execute();
            if (r == true) {
                //Guardado
                return true;
            } else {
                return false;
            }
        }
    }
    
    /**
     * Este metodo me permite saber si un registro a actualizar tiene el mismo codigo de norma, que tenia inicilamente. Con esto podemos actualizar el registro sin problemas, ya que es el mismo codigo de norma.
     * @param n
     * @return boolean Si es true si existe de lo contrario no existe y debemos proceder a validar si el codigo de la norma agregada existe.
     */
    public boolean Actualizar_Existe(norma norm) throws SQLException
    {
        Connection con = Conexion.getConexion();
        PreparedStatement st = con.prepareStatement(NormaSQL.Actualizar_Existe());
        st.setObject(1, norm.getId_norma());
        st.setObject(2, norm.getCodigo_norma());
        
        ResultSet r = st.executeQuery();
        if (r.next()) {
            return true;
        } else {
            return false;
        }
    }
    
    public static void main(String[] args) {

    }
}
