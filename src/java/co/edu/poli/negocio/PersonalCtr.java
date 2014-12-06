/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.poli.negocio;
 
import co.edu.poli.sql.PersonalSQL;
import java.sql.Connection;
import co.edu.poli.util.Conexion;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import co.edu.poli.dao.personal;
import java.sql.ResultSet;

/**
 *
 * @author Vanessa Agudelo Marin
 */
public class PersonalCtr {
    
    /**
     * este metodo me permite obtener el usuario que inicio sesión
     * @param Documento
     * @param Clave
     * @return personal dao de la tabla personal. 
     * @throws SQLException 
     */
    public personal Login(String Documento, String Clave) throws SQLException{
        
        Connection con = Conexion.getConexion();
        try {
            PreparedStatement st = con.prepareStatement(PersonalSQL.ValidarLogin());
            st.setObject(1, Documento);
            st.setObject(2, Clave);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                personal usuario = new personal();
                usuario.setDocumento(rs.getString("Documento"));
                usuario.setNombre1(rs.getString("Nombre1"));
                usuario.setNombre2(rs.getString("Nombre2"));
                usuario.setApellido1(rs.getString("Apellido1"));
                usuario.setApellido2(rs.getString("Apellido2"));
                usuario.setFecha_Nac(rs.getTimestamp("Fecha_Nac"));
                usuario.setTelefono(rs.getString("Telefono"));
                usuario.setCelular(rs.getString("Celular"));
                usuario.setCargo(rs.getString("Cargo"));
                usuario.setEmail(rs.getString("email"));
                usuario.setPosgrado(rs.getString("Posgrado"));
                usuario.setEst_Univer(rs.getString("Est_Univer"));
                usuario.setDiplomado_Doc(rs.getString("Diplomado_Doc"));
                usuario.setExp_Media(rs.getDouble("Exp_Media"));
                usuario.setExp_ArtPoli(rs.getDouble("Exp_ArtPoli"));
                usuario.setExp_Universit(rs.getDouble("Exp_Universit"));
                usuario.setClave(rs.getString("Clave"));
                
                return usuario;
            }
        } catch (SQLException e) {
             System.out.println(e.getMessage());
        }finally{
            con.close();
        }
        return null;
    }

    public PersonalCtr() {
        
        
    }
    
    public static void main(String[] args) {
        PersonalCtr x = new PersonalCtr();
       
        try {
            personal k =  x.Login("1017173652", "10171736");
            System.out.println(k);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }   
}
