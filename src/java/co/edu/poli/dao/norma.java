package co.edu.poli.dao;

import co.edu.poli.util.Columna;

public final class norma{

     @Columna(ClavePrimaria=true,AutoNumerico=true, Requered = true,NameForeingKey = "")
    private java.lang.Integer id_norma;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String codigo_norma;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String descripcion;



     public java.lang.Integer getId_norma(){
           return this.id_norma;
     }

     public java.lang.String getCodigo_norma(){
           return this.codigo_norma;
     }

     public java.lang.String getDescripcion(){
           return this.descripcion;
     }

     public void setId_norma(java.lang.Integer id_norma){
       this.id_norma = id_norma;
     }

     public void setCodigo_norma(java.lang.String codigo_norma){
       this.codigo_norma = codigo_norma;
     }

     public void setDescripcion(java.lang.String descripcion){
       this.descripcion = descripcion;
     }

     public norma(){
     }
     
     @Override
    public String toString() {
        return this.id_norma+", "+codigo_norma+", " +descripcion;
    }

     public static void main(String... args){
     }
}