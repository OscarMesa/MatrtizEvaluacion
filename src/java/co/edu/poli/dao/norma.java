package co.edu.poli.dao;

import co.edu.poli.util.Columna;
import co.edu.poli.util.estados;
public final class norma{

     @Columna(ClavePrimaria=true,AutoNumerico=true, Requered = true,NameForeingKey = "")
    private java.lang.Integer id_norma;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String codigo_norma;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String descripcion;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private estados estado;



     public java.lang.Integer getId_norma(){
           return this.id_norma;
     }

     public java.lang.String getCodigo_norma(){
           return this.codigo_norma;
     }

     public java.lang.String getDescripcion(){
           return this.descripcion;
     }

     public estados getEstado(){
           return this.estado;
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

     public void setEstado(int estado){
       if(estado == 1){
         this.estado = estados.ACTIVO;
       }else if(estado == 0){
         this.estado = estados.INACTIVO;
       }
     }

     public norma(){
     }

     public static void main(String... args){
         estados myEnum = estados.INACTIVO;
         
         System.out.println(myEnum.getValor_estado());
     }

    @Override
    public String toString() {
        return "id: " + this.id_norma +  " codigo: " + this.codigo_norma + " descripcion " + this.descripcion;
    }
     
     
}