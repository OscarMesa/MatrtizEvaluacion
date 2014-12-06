package co.edu.poli.dao;

import co.edu.poli.util.Columna;

public final class modulos{

     @Columna(ClavePrimaria=true,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String codigo;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String descripcion;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String grado;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String yeari;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String yearf;



     public java.lang.String getCodigo(){
           return this.codigo;
     }

     public java.lang.String getDescripcion(){
           return this.descripcion;
     }

     public java.lang.String getGrado(){
           return this.grado;
     }

     public java.lang.String getYearI(){
           return this.yeari;
     }

     public java.lang.String getYearF(){
           return this.yearf;
     }



     public void setCodigo(java.lang.String codigo){
       this.codigo = codigo;
     }

     public void setDescripcion(java.lang.String descripcion){
       this.descripcion = descripcion;
     }

     public void setGrado(java.lang.String grado){
       this.grado = grado;
     }

     public void setYearI(java.lang.String yeari){
       this.yeari = yeari;
     }

     public void setYearF(java.lang.String yearf){
       this.yearf = yearf;
     }

     public modulos(){
     }

     public static void main(String... args){
     }
}