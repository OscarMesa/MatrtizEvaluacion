package co.edu.poli.dao;

import co.edu.poli.util.Columna;

public final class resultado_modulo{

     @Columna(ClavePrimaria=true,AutoNumerico=true, Requered = true,NameForeingKey = "")
    private java.lang.Integer id_resul_modulo;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String id_modulo;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.Integer id_resultado;



     public java.lang.Integer getId_resul_modulo(){
           return this.id_resul_modulo;
     }

     public java.lang.String getId_modulo(){
           return this.id_modulo;
     }

     public java.lang.Integer getId_resultado(){
           return this.id_resultado;
     }



     public void setId_resul_modulo(java.lang.Integer id_resul_modulo){
       this.id_resul_modulo = id_resul_modulo;
     }

     public void setId_modulo(java.lang.String id_modulo){
       this.id_modulo = id_modulo;
     }

     public void setId_resultado(java.lang.Integer id_resultado){
       this.id_resultado = id_resultado;
     }

     public resultado_modulo(){
     }

     public static void main(String... args){
     }
}