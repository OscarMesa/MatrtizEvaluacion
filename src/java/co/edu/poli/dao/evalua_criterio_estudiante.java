package co.edu.poli.dao;

import co.edu.poli.util.Columna;

public final class evalua_criterio_estudiante{

     @Columna(ClavePrimaria=true,AutoNumerico=true, Requered = true,NameForeingKey = "")
    private java.lang.Integer id_criterio_estudiante;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.Integer id_item_evaluacion;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String id_estudiante;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String estudiantes_tipodoc;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.Integer puntos_criterio_item;



     public java.lang.Integer getId_criterio_estudiante(){
           return this.id_criterio_estudiante;
     }

     public java.lang.Integer getId_item_evaluacion(){
           return this.id_item_evaluacion;
     }

     public java.lang.String getId_estudiante(){
           return this.id_estudiante;
     }

     public java.lang.String getEstudiantes_TipoDoc(){
           return this.estudiantes_tipodoc;
     }

     public java.lang.Integer getPuntos_criterio_item(){
           return this.puntos_criterio_item;
     }



     public void setId_criterio_estudiante(java.lang.Integer id_criterio_estudiante){
       this.id_criterio_estudiante = id_criterio_estudiante;
     }

     public void setId_item_evaluacion(java.lang.Integer id_item_evaluacion){
       this.id_item_evaluacion = id_item_evaluacion;
     }

     public void setId_estudiante(java.lang.String id_estudiante){
       this.id_estudiante = id_estudiante;
     }

     public void setEstudiantes_TipoDoc(java.lang.String estudiantes_tipodoc){
       this.estudiantes_tipodoc = estudiantes_tipodoc;
     }

     public void setPuntos_criterio_item(java.lang.Integer puntos_criterio_item){
       this.puntos_criterio_item = puntos_criterio_item;
     }

     public evalua_criterio_estudiante(){
     }

     public static void main(String... args){
     }
}