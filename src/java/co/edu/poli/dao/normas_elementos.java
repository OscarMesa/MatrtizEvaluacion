package co.edu.poli.dao;

import co.edu.poli.util.Columna;

public final class normas_elementos{

     @Columna(ClavePrimaria=true,AutoNumerico=true, Requered = true,NameForeingKey = "")
    private java.lang.Integer norma_elemento;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.Integer id_norma;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.Integer id_elemento;



     public java.lang.Integer getNorma_elemento(){
           return this.norma_elemento;
     }

     public java.lang.Integer getId_norma(){
           return this.id_norma;
     }

     public java.lang.Integer getId_elemento(){
           return this.id_elemento;
     }



     public void setNorma_elemento(java.lang.Integer norma_elemento){
       this.norma_elemento = norma_elemento;
     }

     public void setId_norma(java.lang.Integer id_norma){
       this.id_norma = id_norma;
     }

     public void setId_elemento(java.lang.Integer id_elemento){
       this.id_elemento = id_elemento;
     }

     public normas_elementos(){
     }

     public static void main(String... args){
     }
}