package co.edu.poli.dao;

import co.edu.poli.util.Columna;

public final class modulo_norma{

     @Columna(ClavePrimaria=true,AutoNumerico=true, Requered = true,NameForeingKey = "")
    private java.lang.Integer id_modulo_norma;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String id_modulo;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.Integer id_norma;



     public java.lang.Integer getId_modulo_norma(){
           return this.id_modulo_norma;
     }

     public java.lang.String getId_modulo(){
           return this.id_modulo;
     }

     public java.lang.Integer getId_norma(){
           return this.id_norma;
     }



     public void setId_modulo_norma(java.lang.Integer id_modulo_norma){
       this.id_modulo_norma = id_modulo_norma;
     }

     public void setId_modulo(java.lang.String id_modulo){
       this.id_modulo = id_modulo;
     }

     public void setId_norma(java.lang.Integer id_norma){
       this.id_norma = id_norma;
     }

     public modulo_norma(){
     }

     public static void main(String... args){
     }
}