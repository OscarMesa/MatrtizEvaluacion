/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.poli.util;

/**
 *
 * @author omesagar
 */
public enum estados {
    ACTIVO(1),
    INACTIVO(0);
    
    public final int valor_estado;
    
    estados(int i){
        valor_estado = i;
    }
    
    public int getValor_estado()
    {
        return valor_estado;
    }
}
