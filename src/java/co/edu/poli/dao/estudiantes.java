package co.edu.poli.dao;

import co.edu.poli.util.Columna;

public final class estudiantes{

     @Columna(ClavePrimaria=true,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String documento;

     @Columna(ClavePrimaria=true,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String tipodoc;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String nombre1;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String nombre2;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String apellido1;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String apellido2;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String direccion;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String municipio;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String email;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String telefono;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.sql.Date fecha_nac;



     public java.lang.String getDocumento(){
           return this.documento;
     }

     public java.lang.String getTipoDoc(){
           return this.tipodoc;
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

     public java.lang.String getDireccion(){
           return this.direccion;
     }

     public java.lang.String getMunicipio(){
           return this.municipio;
     }

     public java.lang.String getEmail(){
           return this.email;
     }

     public java.lang.String getTelefono(){
           return this.telefono;
     }

     public java.sql.Date getFecha_Nac(){
           return this.fecha_nac;
     }



     public void setDocumento(java.lang.String documento){
       this.documento = documento;
     }

     public void setTipoDoc(java.lang.String tipodoc){
       this.tipodoc = tipodoc;
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

     public void setDireccion(java.lang.String direccion){
       this.direccion = direccion;
     }

     public void setMunicipio(java.lang.String municipio){
       this.municipio = municipio;
     }

     public void setEmail(java.lang.String email){
       this.email = email;
     }

     public void setTelefono(java.lang.String telefono){
       this.telefono = telefono;
     }

     public void setFecha_Nac(java.sql.Date fecha_nac){
       this.fecha_nac = fecha_nac;
     }

     public estudiantes(){
     }

     public static void main(String... args){
     }
}