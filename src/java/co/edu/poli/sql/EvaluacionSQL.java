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
public class EvaluacionSQL {
    /**
     * Eeste metodo retorna la consultar para cargar todos los estados 
     * @return 
     */
    public static String CargarModulos()
    {
        return "SELECT * FROM modulos WHERE Codigo LIKE ? OR Descripcion LIKE ? OR Grado LIKE ? OR YearI LIKE ? OR YearF LIKE ? LIMIT 10";
    }
}
