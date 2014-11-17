package co.edu.poli.dao;

import co.edu.poli.util.Columna;

public final class resultado_aprendizaje{

     @Columna(ClavePrimaria=true,AutoNumerico=true, Requered = true,NameForeingKey = "")
    private java.lang.Integer id_resultado;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String codigo_resultado;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String descripcion;



     public java.lang.Integer getId_resultado(){
           return this.id_resultado;
     }

     public java.lang.String getCodigo_resultado(){
           return this.codigo_resultado;
     }

     public java.lang.String getDescripcion(){
           return this.descripcion;
     }



     public void setId_resultado(java.lang.Integer id_resultado){
       this.id_resultado = id_resultado;
     }

     public void setCodigo_resultado(java.lang.String codigo_resultado){
       this.codigo_resultado = codigo_resultado;
     }

     public void setDescripcion(java.lang.String descripcion){
       this.descripcion = descripcion;
     }

     public resultado_aprendizaje(){
     }

     public static void main(String... args){
     }
}