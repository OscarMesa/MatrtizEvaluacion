/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.poli.sql;

/**
 *
 * @author Vane
 */
public class PersonalSQL {

    public static String ValidarLogin() {
        return "SELECT * FROM personal WHERE Documento=? AND Clave=? ";
    }

}
