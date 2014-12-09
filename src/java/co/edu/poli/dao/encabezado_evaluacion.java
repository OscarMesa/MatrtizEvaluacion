package co.edu.poli.dao;

import co.edu.poli.util.Columna;
import co.edu.poli.util.Columna;
public final class encabezado_evaluacion{

     @Columna(ClavePrimaria=true,AutoNumerico=true, Requered = true,NameForeingKey = "")
    private java.lang.Integer id_encabezado;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String id_modulo;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.Integer id_norma;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.Integer id_elemento;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.Integer id_resultado;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.Integer id_evidencia;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String descripcion;



     public java.lang.Integer getId_encabezado(){
           return this.id_encabezado;
     }

     public java.lang.String getId_modulo(){
           return this.id_modulo;
     }

     public java.lang.Integer getId_norma(){
           return this.id_norma;
     }

     public java.lang.Integer getId_elemento(){
           return this.id_elemento;
     }

     public java.lang.Integer getId_resultado(){
           return this.id_resultado;
     }

     public java.lang.Integer getId_evidencia(){
           return this.id_evidencia;
     }

     public java.lang.String getDescripcion(){
           return this.descripcion;
     }



     public void setId_encabezado(java.lang.Integer id_encabezado){
       this.id_encabezado = id_encabezado;
     }

     public void setId_modulo(java.lang.String id_modulo){
       this.id_modulo = id_modulo;
     }

     public void setId_norma(java.lang.Integer id_norma){
       this.id_norma = id_norma;
     }

     public void setId_elemento(java.lang.Integer id_elemento){
       this.id_elemento = id_elemento;
     }

     public void setId_resultado(java.lang.Integer id_resultado){
       this.id_resultado = id_resultado;
     }

     public void setId_evidencia(java.lang.Integer id_evidencia){
       this.id_evidencia = id_evidencia;
     }

     public void setDescripcion(java.lang.String descripcion){
       this.descripcion = descripcion;
     }

     public encabezado_evaluacion(){
     }

     public static void main(String... args){
     }
}