package co.edu.poli.dao;

import co.edu.poli.util.Columna;
import co.edu.poli.util.Columna;
public final class personal{

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String documento;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String nombre1;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String nombre2;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String apellido1;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String apellido2;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.sql.Timestamp fecha_nac;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String cargo;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String telefono;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String celular;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String email;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String posgrado;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String est_univer;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String diplomado_doc;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.Double exp_media;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.Double exp_artpoli;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.Double exp_universit;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String clave;



     public java.lang.String getDocumento(){
           return this.documento;
     }

     public java.lang.String getNombre1(){
           return this.nombre1;
     }

     public java.lang.String getNombre2(){
           return this.nombre2;
     }

     public java.lang.String getApellido1(){
           return this.apellido1;
     }

     public java.lang.String getApellido2(){
           return this.apellido2;
     }

     public java.sql.Timestamp getFecha_Nac(){
           return this.fecha_nac;
     }

     public java.lang.String getCargo(){
           return this.cargo;
     }

     public java.lang.String getTelefono(){
           return this.telefono;
     }

     public java.lang.String getCelular(){
           return this.celular;
     }

     public java.lang.String getEmail(){
           return this.email;
     }

     public java.lang.String getPosgrado(){
           return this.posgrado;
     }

     public java.lang.String getEst_Univer(){
           return this.est_univer;
     }

     public java.lang.String getDiplomado_Doc(){
           return this.diplomado_doc;
     }

     public java.lang.Double getExp_Media(){
           return this.exp_media;
     }

     public java.lang.Double getExp_ArtPoli(){
           return this.exp_artpoli;
     }

     public java.lang.Double getExp_Universit(){
           return this.exp_universit;
     }

     public java.lang.String getClave(){
           return this.clave;
     }



     public void setDocumento(java.lang.String documento){
       this.documento = documento;
     }

     public void setNombre1(java.lang.String nombre1){
       this.nombre1 = nombre1;
     }

     public void setNombre2(java.lang.String nombre2){
       this.nombre2 = nombre2;
     }

     public void setApellido1(java.lang.String apellido1){
       this.apellido1 = apellido1;
     }

     public void setApellido2(java.lang.String apellido2){
       this.apellido2 = apellido2;
     }

     public void setFecha_Nac(java.sql.Timestamp fecha_nac){
       this.fecha_nac = fecha_nac;
     }

     public void setCargo(java.lang.String cargo){
       this.cargo = cargo;
     }

     public void setTelefono(java.lang.String telefono){
       this.telefono = telefono;
     }

     public void setCelular(java.lang.String celular){
       this.celular = celular;
     }

     public void setEmail(java.lang.String email){
       this.email = email;
     }

     public void setPosgrado(java.lang.String posgrado){
       this.posgrado = posgrado;
     }

     public void setEst_Univer(java.lang.String est_univer){
       this.est_univer = est_univer;
     }

     public void setDiplomado_Doc(java.lang.String diplomado_doc){
       this.diplomado_doc = diplomado_doc;
     }

     public void setExp_Media(java.lang.Double exp_media){
       this.exp_media = exp_media;
     }

     public void setExp_ArtPoli(java.lang.Double exp_artpoli){
       this.exp_artpoli = exp_artpoli;
     }

     public void setExp_Universit(java.lang.Double exp_universit){
       this.exp_universit = exp_universit;
     }

     public void setClave(java.lang.String clave){
       this.clave = clave;
     }

     public personal(){
     }

     public static void main(String... args){
     }

    @Override
    public String toString() {
        return this.documento+", "+clave+", " +nombre1 +", "+ apellido1+", "+cargo+ ", "+celular;
    }
     
}