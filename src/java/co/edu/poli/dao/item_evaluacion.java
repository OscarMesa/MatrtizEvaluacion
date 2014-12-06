package co.edu.poli.dao;

import co.edu.poli.util.Columna;

public final class item_evaluacion{

     @Columna(ClavePrimaria=true,AutoNumerico=true, Requered = true,NameForeingKey = "")
    private java.lang.Integer id_item_evaluacion;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.Integer id_evidencia;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.Integer id_criterio_evaluacion;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.Integer id_rubrica;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String descripcion_item;



     public java.lang.Integer getId_item_evaluacion(){
           return this.id_item_evaluacion;
     }

     public java.lang.Integer getId_evidencia(){
           return this.id_evidencia;
     }

     public java.lang.Integer getId_criterio_evaluacion(){
           return this.id_criterio_evaluacion;
     }

     public java.lang.Integer getId_rubrica(){
           return this.id_rubrica;
     }

     public java.lang.String getDescripcion_item(){
           return this.descripcion_item;
     }



     public void setId_item_evaluacion(java.lang.Integer id_item_evaluacion){
       this.id_item_evaluacion = id_item_evaluacion;
     }

     public void setId_evidencia(java.lang.Integer id_evidencia){
       this.id_evidencia = id_evidencia;
     }

     public void setId_criterio_evaluacion(java.lang.Integer id_criterio_evaluacion){
       this.id_criterio_evaluacion = id_criterio_evaluacion;
     }

     public void setId_rubrica(java.lang.Integer id_rubrica){
       this.id_rubrica = id_rubrica;
     }

     public void setDescripcion_item(java.lang.String descripcion_item){
       this.descripcion_item = descripcion_item;
     }

     public item_evaluacion(){
     }

     public static void main(String... args){
     }
}