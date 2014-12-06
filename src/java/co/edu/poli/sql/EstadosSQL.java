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
public class EstadosSQL {
    /**
     * Eeste metodo retorna la consultar para cargar todos los estados 
     * @return 
     */
    public static String CargarEstados()
    {
        return "SELECT * FROM estado";
    }
}
