package co.edu.poli.dao;

import co.edu.poli.util.Columna;

public final class tipo_evidencias{

     @Columna(ClavePrimaria=true,AutoNumerico=true, Requered = true,NameForeingKey = "")
    private java.lang.Integer id_tipo_evidencia;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String descripcion;



     public java.lang.Integer getId_tipo_evidencia(){
           return this.id_tipo_evidencia;
     }

     public java.lang.String getDescripcion(){
           return this.descripcion;
     }



     public void setId_tipo_evidencia(java.lang.Integer id_tipo_evidencia){
       this.id_tipo_evidencia = id_tipo_evidencia;
     }

     public void setDescripcion(java.lang.String descripcion){
       this.descripcion = descripcion;
     }

     public tipo_evidencias(){
     }

     public static void main(String... args){
     }
}