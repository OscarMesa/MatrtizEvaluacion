package co.edu.poli.dao;

import co.edu.poli.util.Columna;

public final class rubricas{

     @Columna(ClavePrimaria=true,AutoNumerico=true, Requered = true,NameForeingKey = "")
    private java.lang.Integer id_rubrica;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String descripcion;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.Integer valor;



     public java.lang.Integer getId_rubrica(){
           return this.id_rubrica;
     }

     public java.lang.String getDescripcion(){
           return this.descripcion;
     }

     public java.lang.Integer getValor(){
           return this.valor;
     }



     public void setId_rubrica(java.lang.Integer id_rubrica){
       this.id_rubrica = id_rubrica;
     }

     public void setDescripcion(java.lang.String descripcion){
       this.descripcion = descripcion;
     }

     public void setValor(java.lang.Integer valor){
       this.valor = valor;
     }

     public rubricas(){
     }

     public static void main(String... args){
     }
}