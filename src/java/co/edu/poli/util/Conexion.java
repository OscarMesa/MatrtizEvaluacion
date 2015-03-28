/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.poli.util;

/**
 *
 * @author Oskar
 */
import java.sql.Connection;
import java.sql.DriverManager;
import javax.sql.DataSource;
import javax.naming.Context;
import javax.naming.InitialContext;

public class Conexion {
    
    private Connection cnn;
    public Conexion(){
    
    }
    
    public static Connection getConexion(){
        Connection con = null;
        
        try{
            String url = "jdbc:mysql://localhost/sistema_competencias";
            String user = "root";
            String password = "";
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url,user,password);
        }catch(Exception e){e.printStackTrace();}
         finally{return con;}
    }
    
    //Conexión con Glassfish
    public static Connection getConexion1(){
        Connection conexion = null;
        Context Ctx;
        DataSource ds;
        try{
            Ctx = new InitialContext();
            
            ds = (DataSource) Ctx.lookup("jdbc/ces3");
            conexion = ds.getConnection();
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
            return conexion;
        }
    }
    
    public static void main(String... args){
        Connection x = Conexion.getConexion();
        System.out.println(x);
    }
  
    
}
