/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package co.edu.poli.sql;

/**
 *
 * @author Vanessa Agudelo Marín
 */
public class NormaSQL {
    
    /**
     * Este metodo consulta que el còdigo de la norma si exista en la base de datos
     * @return 
     */
    public static String ValidarNormaSQL(){
      return "SELECT * FROM norma WHERE codigo_norma=?";
    }
    
    public static String Actualizar_Existe(){
      return "SELECT * FROM norma WHERE id_norma = ? AND codigo_norma = ?";
    }
 
    
    public static String InsertarSQL(){
        return "INSERT INTO norma (codigo_norma, descripcion) VALUES (?,?)";
    }
    
    public static String ModificarSQL(){
        return "UPDATE norma SET codigo_norma=?,descripcion=? WHERE id_norma=?";
    }
    
    public static String ListarSQL(){
        return "SELECT * FROM norma";
    }
    
    public static String Desactivar()
    {
        return "UPDATE norma SET estado = ? WHERE id_norma=?";
    }
    
    public static String EliminarSQL(){
        return "DELETE FROM norma WHERE id_norma=?";
    }
    
    public static String SeleccionarNormaSQL(){
      return "SELECT * FROM norma WHERE id_norma=?";
    }
    
}
