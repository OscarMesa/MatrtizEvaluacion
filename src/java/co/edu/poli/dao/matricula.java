package co.edu.poli.dao;

import co.edu.poli.util.Columna;

public final class matricula{

     @Columna(ClavePrimaria=true,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String codigo;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String iem;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String docest;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String tipodoc;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String year;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String codent;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String programa;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String estado;



     public java.lang.String getCodigo(){
           return this.codigo;
     }

     public java.lang.String getIEM(){
           return this.iem;
     }

     public java.lang.String getDocEst(){
           return this.docest;
     }

     public java.lang.String getTipoDoc(){
           return this.tipodoc;
     }

     public java.lang.String getYEAR(){
           return this.year;
     }

     public java.lang.String getCodEnt(){
           return this.codent;
     }

     public java.lang.String getPrograma(){
           return this.programa;
     }

     public java.lang.String getESTADO(){
           return this.estado;
     }



     public void setCodigo(java.lang.String codigo){
       this.codigo = codigo;
     }

     public void setIEM(java.lang.String iem){
       this.iem = iem;
     }

     public void setDocEst(java.lang.String docest){
       this.docest = docest;
     }

     public void setTipoDoc(java.lang.String tipodoc){
       this.tipodoc = tipodoc;
     }

     public void setYEAR(java.lang.String year){
       this.year = year;
     }

     public void setCodEnt(java.lang.String codent){
       this.codent = codent;
     }

     public void setPrograma(java.lang.String programa){
       this.programa = programa;
     }

     public void setESTADO(java.lang.String estado){
       this.estado = estado;
     }

     public matricula(){
     }

     public static void main(String... args){
     }
}