package co.edu.poli.dao;

import co.edu.poli.util.Columna;
public final class estado{

     @Columna(ClavePrimaria=true,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.Integer codigo;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String descripcion;



     public java.lang.Integer getCodigo(){
           return this.codigo;
     }

     public java.lang.String getDescripcion(){
           return this.descripcion;
     }



     public void setCodigo(java.lang.Integer codigo){
       this.codigo = codigo;
     }

     public void setDescripcion(java.lang.String descripcion){
       this.descripcion = descripcion;
     }

     public estado(){
     }

     public static void main(String... args){
     }
}