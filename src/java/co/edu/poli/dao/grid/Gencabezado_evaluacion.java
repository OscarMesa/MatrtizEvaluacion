/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.poli.dao.grid;

/**
 *
 * @author omesagar
 */
public class Gencabezado_evaluacion {
    private Object id_encabezado;
    private Object modulo;
    private Object norma;
    private Object resultado;
    private Object evidencia;
    private Object elemento;
    private Object descripcion_encab;

    public Gencabezado_evaluacion(String id_encabezado, String modulo, String norma, String resultado, String evidencia, String elemento, String descripcion_encab) {
        this.id_encabezado = id_encabezado;
        this.modulo = modulo;
        this.norma = norma;
        this.resultado = resultado;
        this.evidencia = evidencia;
        this.elemento = elemento;
        this.descripcion_encab = descripcion_encab;
    }

    public Gencabezado_evaluacion() {
    }

    public Object getId_encabezado() {
        return id_encabezado;
    }

    public void setId_encabezado(Object id_encabezado) {
        this.id_encabezado = id_encabezado;
    }

    public Object getModulo() {
        return modulo;
    }

    public void setModulo(String modulo) {
        this.modulo = modulo;
    }

    public Object getNorma() {
        return norma;
    }

    public void setNorma(Object norma) {
        this.norma = norma;
    }

    public Object getResultado() {
        return resultado;
    }

    public void setResultado(Object resultado) {
        this.resultado = resultado;
    }

    public Object getEvidencia() {
        return evidencia;
    }

    public void setEvidencia(Object evidencia) {
        this.evidencia = evidencia;
    }

    public Object getElemento() {
        return elemento;
    }

    public void setElemento(Object elemento) {
        this.elemento = elemento;
    }

    public Object getDescripcion_encab() {
        return descripcion_encab;
    }

    public void setDescripcion_encab(Object descripcion_encab) {
        this.descripcion_encab = descripcion_encab;
    }
    
    public String toString() {
        return "{\"descripcion_encab\":\"" + this.descripcion_encab + "\", \"elemento\":\"" + this.elemento + "\", \"evidencia\":\""
                + this.evidencia + "\", \"id_encabezado\":\"" + this.id_encabezado+ "\", \"modulo\":\"" + this.modulo
                +  "\", \"norma\":\"" + this.norma + "\", \"resultado\":\"" + this.resultado + "\"}";
    }
    
}
