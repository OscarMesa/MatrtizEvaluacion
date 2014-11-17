package co.edu.poli.dao;

import co.edu.poli.util.Columna;

public final class institucionesm{

     @Columna(ClavePrimaria=true,AutoNumerico=false, Requered = true,NameForeingKey = "")
    private java.lang.String codigo;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String coddane;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String nit;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String nombre;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String joradamt;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String telefono;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String municipio;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String comuna;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String direccion;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String email;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String rector;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String telrector;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String email_rector;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String coordinador;

     @Columna(ClavePrimaria=false,AutoNumerico=false, Requered = false,NameForeingKey = "")
    private java.lang.String tel_coord;



     public java.lang.String getCodigo(){
           return this.codigo;
     }

     public java.lang.String getCoddane(){
           return this.coddane;
     }

     public java.lang.String getNit(){
           return this.nit;
     }

     public java.lang.String getNombre(){
           return this.nombre;
     }

     public java.lang.String getJoradamt(){
           return this.joradamt;
     }

     public java.lang.String getTelefono(){
           return this.telefono;
     }

     public java.lang.String getMunicipio(){
           return this.municipio;
     }

     public java.lang.String getComuna(){
           return this.comuna;
     }

     public java.lang.String getDireccion(){
           return this.direccion;
     }

     public java.lang.String getEmail(){
           return this.email;
     }

     public java.lang.String getRector(){
           return this.rector;
     }

     public java.lang.String getTelrector(){
           return this.telrector;
     }

     public java.lang.String getEmail_rector(){
           return this.email_rector;
     }

     public java.lang.String getCoordinador(){
           return this.coordinador;
     }

     public java.lang.String getTel_coord(){
           return this.tel_coord;
     }



     public void setCodigo(java.lang.String codigo){
       this.codigo = codigo;
     }

     public void setCoddane(java.lang.String coddane){
       this.coddane = coddane;
     }

     public void setNit(java.lang.String nit){
       this.nit = nit;
     }

     public void setNombre(java.lang.String nombre){
       this.nombre = nombre;
     }

     public void setJoradamt(java.lang.String joradamt){
       this.joradamt = joradamt;
     }

     public void setTelefono(java.lang.String telefono){
       this.telefono = telefono;
     }

     public void setMunicipio(java.lang.String municipio){
       this.municipio = municipio;
     }

     public void setComuna(java.lang.String comuna){
       this.comuna = comuna;
     }

     public void setDireccion(java.lang.String direccion){
       this.direccion = direccion;
     }

     public void setEmail(java.lang.String email){
       this.email = email;
     }

     public void setRector(java.lang.String rector){
       this.rector = rector;
     }

     public void setTelrector(java.lang.String telrector){
       this.telrector = telrector;
     }

     public void setEmail_rector(java.lang.String email_rector){
       this.email_rector = email_rector;
     }

     public void setCoordinador(java.lang.String coordinador){
       this.coordinador = coordinador;
     }

     public void setTel_coord(java.lang.String tel_coord){
       this.tel_coord = tel_coord;
     }

     public institucionesm(){
     }

     public static void main(String... args){
     }
}