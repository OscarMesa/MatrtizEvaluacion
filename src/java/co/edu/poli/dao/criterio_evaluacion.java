package co.edu.poli.dao;

import co.edu.poli.util.Columna;
public final class criterio_evaluacion{

     @Columna(ClavePrimaria=true,AutoNumerico=true, Requered = true,NameForeingKey = "")
    private java.lang.Integer id_criterio_evaluacion;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String descripcion;

     public java.lang.Integer getId_criterio_evaluacion(){
           return this.id_criterio_evaluacion;
     }

     public java.lang.String getDescripcion(){
           return this.descripcion;
     }  

     public void setId_criterio_evaluacion(java.lang.Integer id_criterio_evaluacion){
       this.id_criterio_evaluacion = id_criterio_evaluacion;
     }

     public void setDescripcion(java.lang.String descripcion){
       this.descripcion = descripcion;
     }

     public criterio_evaluacion(){
     }

     public static void main(String... args){
     }
}