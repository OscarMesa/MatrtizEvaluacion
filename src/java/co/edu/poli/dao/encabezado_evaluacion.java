package co.edu.poli.dao;

import co.edu.poli.util.Columna;
import co.edu.poli.util.Columna;
import java.util.ArrayList;
import java.util.HashMap;

public final class encabezado_evaluacion {

    @Columna(ClavePrimaria = true, AutoNumerico = true, Requered = true, NameForeingKey = "")
    private java.lang.Integer id_encabezado;

    @Columna(ClavePrimaria = false, AutoNumerico = false, Requered = false, NameForeingKey = "")
    private java.lang.String id_modulo;

    @Columna(ClavePrimaria = false, AutoNumerico = false, Requered = false, NameForeingKey = "")
    private java.lang.String descripcion;

    private HashMap<String, ArrayList<String>> normas;

    private ArrayList<String> resultados;

    private HashMap<String,String> evidencias;

    public java.lang.Integer getId_encabezado() {
        return this.id_encabezado;
    }
    
    
    public java.lang.String getId_modulo() {
        return this.id_modulo;
    }

    public java.lang.String getDescripcion() {
        return this.descripcion;
    }

    public void setId_encabezado(java.lang.Integer id_encabezado) {
        this.id_encabezado = id_encabezado;
    }

    public void setId_modulo(java.lang.String id_modulo) {
        this.id_modulo = id_modulo;
    }

    public void setDescripcion(java.lang.String descripcion) {
        this.descripcion = descripcion;
    }

    public encabezado_evaluacion() {
        descripcion = new String();
        evidencias = new HashMap<>();
        normas = new HashMap<>();
        resultados = new ArrayList<>();
    }

    public HashMap<String, ArrayList<String>> getNormas() {
        return normas;
    }

    public void setNormas(HashMap<String, ArrayList<String>> normas) {
        this.normas = normas;
    }

    public ArrayList<String> getResultados() {
        return resultados;
    }

    public void setResultados(ArrayList<String> resultados) {
        this.resultados = resultados;
    }

    public HashMap<String, String> getEvidencias() {
        return evidencias;
    }

    public void setEvidencias(HashMap<String, String> evidencias) {
        this.evidencias = evidencias;
    }
   
    public void agregarNorma(String norma)
    {
        if(!normas.containsKey(norma))
        {
            normas.put(norma, new ArrayList<String>());
        }
    }
    
    public void agregarElementoNorma(String norma, String elemento){
        normas.get(norma).add(elemento);
    }
    
    public void agregarResultado(String resultado){
        resultados.add(resultado);
    }
    
    public static void main(String... args) {
    }
}
