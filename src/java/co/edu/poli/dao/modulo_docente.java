package co.edu.poli.dao;

import co.edu.poli.util.Columna;

public final class modulo_docente{

     @Columna(ClavePrimaria=true,AutoNumerico=true, Requered = true,NameForeingKey = "")
    private java.lang.Integer id_modulo_docente;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String id_modulo;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String id_docente;



     public java.lang.Integer getId_modulo_docente(){
           return this.id_modulo_docente;
     }

     public java.lang.String getId_modulo(){
           return this.id_modulo;
     }

     public java.lang.String getId_docente(){
           return this.id_docente;
     }



     public void setId_modulo_docente(java.lang.Integer id_modulo_docente){
       this.id_modulo_docente = id_modulo_docente;
     }

     public void setId_modulo(java.lang.String id_modulo){
       this.id_modulo = id_modulo;
     }

     public void setId_docente(java.lang.String id_docente){
       this.id_docente = id_docente;
     }

     public modulo_docente(){
     }

     public static void main(String... args){
     }
}