/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.poli.util.jqgrid;

import java.util.HashMap;

/**
 * Este metodo almcenara la informacion de los campos de la tabla foranea.
 * @author vanessa
 */
public class tablaForanea<T> {
    private String campo;
    private String tabla;
    private String alias;
    private T myBean;
    /**
     * campos a mostrar en la grid de la tabla foranea campo:alias
     */
    private HashMap<String, String> camposMostrar;
    
    public tablaForanea()
    {
        camposMostrar = new HashMap<>();
    }

    public tablaForanea(String campo, String tabla, String alias, HashMap<String, String> camposMostrar) {
        this.campo = campo;
        this.tabla = tabla;
        this.alias = alias;
        this.camposMostrar = camposMostrar;
    }
    
    public void agregarCampoForaneo(String campo, String alias) throws Exception
    {
        if(!camposMostrar.containsKey(campo))
            camposMostrar.put(campo, alias);
        else
            throw new Exception("Esta clave ya fue agregada.");
    }

    public String getCampo() {
        return campo;
    }

    public void setCampo(String campo) {
        this.campo = campo;
    }

    public String getTabla() {
        return tabla;
    }

    public void setTabla(String tabla) {
        this.tabla = tabla;
    }

    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias;
    }

    public HashMap<String, String> getCamposMostrar() {
        return camposMostrar;
    }

    public void setCamposMostrar(HashMap<String, String> camposMostrar) {
        this.camposMostrar = camposMostrar;
    }

    public T getMyBean() {
        return myBean;
    }

    public void setMyBean(T myBean) {
        this.myBean = myBean;
    }
    
}
