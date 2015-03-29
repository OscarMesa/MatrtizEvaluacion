/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.poli.sql;

/**
 *
 * @author omesagar
 */
public class EvidenciaSQL {
    public static String obtenerTodasLasEvidencias(){
        return "SELECT * FROM evidencia";
    }
        
    public static String obtenerTodasLosTiposEvidencias(){
        return "SELECT * FROM tipo_evidencias";
    }
}
