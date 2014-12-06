package co.edu.poli.dao;

import co.edu.poli.util.Columna;

public final class evidencia{

     @Columna(ClavePrimaria=true,AutoNumerico=true, Requered = true,NameForeingKey = "")
    private java.lang.Integer id_evidencia;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String id_modulo;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.Integer id_tipo_evidencia;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String descripcion;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.Integer porcentaje;



     public java.lang.Integer getId_evidencia(){
           return this.id_evidencia;
     }

     public java.lang.String getId_modulo(){
           return this.id_modulo;
     }

     public java.lang.Integer getId_tipo_evidencia(){
           return this.id_tipo_evidencia;
     }

     public java.lang.String getDescripcion(){
           return this.descripcion;
     }

     public java.lang.Integer getPorcentaje(){
           return this.porcentaje;
     }



     public void setId_evidencia(java.lang.Integer id_evidencia){
       this.id_evidencia = id_evidencia;
     }

     public void setId_modulo(java.lang.String id_modulo){
       this.id_modulo = id_modulo;
     }

     public void setId_tipo_evidencia(java.lang.Integer id_tipo_evidencia){
       this.id_tipo_evidencia = id_tipo_evidencia;
     }

     public void setDescripcion(java.lang.String descripcion){
       this.descripcion = descripcion;
     }

     public void setPorcentaje(java.lang.Integer porcentaje){
       this.porcentaje = porcentaje;
     }

     public evidencia(){
     }

     public static void main(String... args){
     }
}