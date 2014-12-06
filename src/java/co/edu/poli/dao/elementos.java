package co.edu.poli.dao;

import co.edu.poli.util.Columna;

public final class elementos{

     @Columna(ClavePrimaria=true,AutoNumerico=true, Requered = true,NameForeingKey = "")
    private java.lang.Integer id_elemento;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String codigo_elemento;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String descripcion;



     public java.lang.Integer getId_elemento(){
           return this.id_elemento;
     }

     public java.lang.String getCodigo_elemento(){
           return this.codigo_elemento;
     }

     public java.lang.String getDescripcion(){
           return this.descripcion;
     }



     public void setId_elemento(java.lang.Integer id_elemento){
       this.id_elemento = id_elemento;
     }

     public void setCodigo_elemento(java.lang.String codigo_elemento){
       this.codigo_elemento = codigo_elemento;
     }

     public void setDescripcion(java.lang.String descripcion){
       this.descripcion = descripcion;
     }

     public elementos(){
     }

     public static void main(String... args){
     }
}