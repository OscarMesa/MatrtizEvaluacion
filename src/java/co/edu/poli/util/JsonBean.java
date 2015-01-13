/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.poli.util;

/**
 *
 * @author 
 */
public class JsonBean {
    
    private String id;
    private String text;
    private Object objeto;

    public JsonBean(String id, String text, Object objeto) {
        this.id = id;
        this.text = text;
        this.objeto = objeto;
    }
    
    
    
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Object getObjeto() {
        return objeto;
    }

    public void setObjeto(Object objeto) {
        this.objeto = objeto;
    }
    
    
    
}
