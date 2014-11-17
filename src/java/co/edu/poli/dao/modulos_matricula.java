package co.edu.poli.dao;

import co.edu.poli.util.Columna;

public final class modulos_matricula{

     @Columna(ClavePrimaria=true,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String matricula_codigo;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String personal_documento;

     @Columna(ClavePrimaria=true,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String codmat;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.Integer id_dim;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.Double notadef;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.Double recup;



     public java.lang.String getMatricula_Codigo(){
           return this.matricula_codigo;
     }

     public java.lang.String getPersonal_Documento(){
           return this.personal_documento;
     }

     public java.lang.String getCodMat(){
           return this.codmat;
     }

     public java.lang.Integer getID_DIM(){
           return this.id_dim;
     }

     public java.lang.Double getNotaDef(){
           return this.notadef;
     }

     public java.lang.Double getRecup(){
           return this.recup;
     }



     public void setMatricula_Codigo(java.lang.String matricula_codigo){
       this.matricula_codigo = matricula_codigo;
     }

     public void setPersonal_Documento(java.lang.String personal_documento){
       this.personal_documento = personal_documento;
     }

     public void setCodMat(java.lang.String codmat){
       this.codmat = codmat;
     }

     public void setID_DIM(java.lang.Integer id_dim){
       this.id_dim = id_dim;
     }

     public void setNotaDef(java.lang.Double notadef){
       this.notadef = notadef;
     }

     public void setRecup(java.lang.Double recup){
       this.recup = recup;
     }

     public modulos_matricula(){
     }

     public static void main(String... args){
     }
}