<%@page import="co.edu.poli.dao.estado"%>
<%@page import="co.edu.poli.negocio.EstadosCtr"%>
<%@page import="co.edu.poli.dao.norma"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Evaluaci�n Estudiante</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="<c:url value="/css/vam.css"/>" />
        <link rel="stylesheet" href="<c:url value="/css/estilo_menu.css"/>" />

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" />

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css" />

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

    </head>
    <body>
       <%@include file="banner_menu.jsp" %>
        
        <div style="margin-left: 15%; margin-bottom:4%; background-color: #ffffff; margin-right: 15%; padding: 2%">

             
            <p class="titulo2">Evaluaci�n Estudiantes</p>
            <div style="margin-left: 5%" class="table-responsive">
                <table border="0" class="table-condensed" cellspacing="0" cellpadding="2" width="85%">
                    <tr>
                        <td style="vertical-align:text-top" class="titulo" width="20%">Instituci�n</td>
                        <td class="contenido">
                            <form>
                                <input style="width: 70%; height: 30px;" type="text" value="Instituci�n Educativa Marco Fidel Suarez" disabled />
                            </form></td>
                    </tr>
                    <tr>
                        <td  style="vertical-align:text-top" class="titulo">Docente</td>
                        <td class="contenido"><form><input style="width: 70%; height: 30px;" type="text" value="Jhon Jairo Monsalve" disabled/></form></td>
                    </tr>
                    <tr>
                        <td style="vertical-align:text-top" class="titulo">M�dulo</td>
                        <td><select class="select" style="width:70%; height: 30px;">
                                <option value="0">Seleccione el Modulo</option>
                                <option value="1">Desarrollo del Pensamiento Anal�tico y Sistemico 1</option>
                                <option value="2">Desarrollo del Pensamiento Anal�tico y Sistemico 2</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td style="vertical-align:text-top" class="titulo">Estudiante</td>
                        <td class="contenido">
                            <select class="select" style="width:70%;height: 30px;">
                                <option value="0">Seleccione el Estudiante</option>
                                <option value="20">_____________________________</option>
                                <option value="1">Acero Bedoya Johan Felipe</option>
                                <option value="2">Agudelo Mar�n Vanessa</option>
                                <option value="3">Arcos Alvares Abdiel Salvador 
                                <option value="4">Arguello Sanchez Alejandro </option>
                                <option value="5">Banda Estrada David Abraham </option>
                                <option value="6">Bueno Contreras Jose Jorge </option>
                                <option value="7">Camacho Cordero Juan Ramon </option>
                                <option value="8">Gonzalez Tokman Alejandro Luis </option>
                                <option value="9">Jaramillo Gil Arturo </option>
                                <option value="10">Loredo Mendez Maria Del Rosario </option>
                                <option value="11">Medina Herrera Francisco Javier </option>
                                <option value="12">Paredon Mata Carlos Gerardo </option>
                                <option value="13">Rodriguez Gallardo Claudia Araceli </option>
                                <option value="14">Ruiz Aguilar Roxana Wendoline </option>
                                <option value="15">Santana Bejarano Hildegardo </option>
                                <option value="16">Soto Suarez Margarita </option>
                                <option value="17">Torres Flores David Guadalupe </option>
                                <option value="18">Vazquez Juarez Israel </option>
                                <option value="19">Villanueva Gutierrez Jose Ibrahim </option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align:text-top" class="titulo">Norma de Competencia</td>
                        <td><p class="contenido">Desarrollar el sistema que cumpla con los requerimientos de la soluci�n inform�tica</p></td>
                    </tr>
                    <tr>
                        <td style="vertical-align:text-top" class="titulo">Elemento de Competencia</td>
                        <td><p class="contenido">Construye los algoritmos para el caso de estudio o problema de acuerdo con la metodolog�a seleccionada y las especificaciones dadas por el cliente. </p></td>
                    </tr>
                    <tr>
                        <td style="vertical-align: text-top" class="titulo" >Resultado de Aprendizaje</td>
                        <td><p class="contenido">Identifica la secuencia de pasos l�gicos o acciones a realizar a partir de la interpretaci�n del diseño del sistema o caso de estudio, aplicando las diferentes estructuras de decisi�n y control que respondan a los requerimientos del problema</p></td>
                    </tr>
                    <tr>
                        <td  style="vertical-align:text-top" class="titulo">Nota Final</td>
                        <td class="contenido"><form class="center"><input style="margin-left:10px; width: 60px; height: 30px;" type="text" 
                                                                       value="---" disabled="true" /></form></td>
                    </tr>
                </table>
            </div>
            
            <div style="margin-top: 30px;">
                <table border="1" style="width: 98%; border-top-color: #006600 5px;"> 
                        <tr>
                            <td></td>
                        </tr>
                 
                </table>
            </div>


            <!--
            El siguiente contendo de div contiene la tabla correspondiente a la informaci�n
            de los criterios de evaluaci�n, rubricas y puntos correspondientes-->
            
            <div class="table-responsive" style="padding-right: 2%">
                
                <table class="table table-striped" cellspacing="0" cellpadding="2" width="90%" style="border-top-color: #006600">
                    <tr>
                        <td class="titulo center" colspan="2">Evidencia de conocimiento</td>
                        <td class="titulo center">Porcentaje</td>
                        <td class="titulo center">30%</td>
                        <td class="titulo center">Total de Puntos</td>
                        <td class="contenido"><form class="center"><input style="margin-left:10px; width: 60px; height: 30px;" type="text" 
                                                                       value="---" disabled="true" /></form></td>
                    </tr>

                    <tr >
                        <td class="titulo center" width="19%" rowspan="2">Criterios de Evaluaci�n</td>
                        <td class="titulo center" colspan="4">Rubricas</td>
                        <td class="titulo center" width="5%" rowspan="2">Resultado Parcial</td>
                    </tr>
                    <tr>
                        <td class="tahoma center" width="19%">Deficiente <br />(0)</td>
                        <td class="tahoma center" width="19%">Insuficiente <br />(1)</td>
                        <td class="tahoma center" width="19%">Aceptable <br />(2)</td>
                        <td class="tahoma center" width="19%">Bueno <br />(3)</td>
                    </tr>

                    <tr>
                        <td>Manejo de expresiones l�gico matem�ticas</td>
                        <td>No escribe correctamente expresiones algebraicas, aplicadas al diseño de algoritmos.</td>
                        <td>Escribe correctamente algunas expresiones algebraicas, aplicadas al diseño de algoritmos.</td>
                        <td>Escribe correctamente la mayor�a de expresiones algebraicas, aplicadas al diseño de algoritmos.</td>
                        <td>Escribe correctamente todas las expresiones algebraicas, aplicadas al diseño de algoritmos.</td>
                        <td class="center"><select class="select" style="width:70%; height: 30px;">
                                <option value="0">---</option>
                                <option value="1">0</option>
                                <option value="2">1</option>
                                <option value="3">2</option>
                                <option value="4">3</option>
                            </select></td>
                    </tr>

                    <tr>
                        <td>Identifica los datos y las variables del caso de estudio o problema a resolver</td>
                        <td>No identifica correctamente las variables o datos</td>
                        <td>Identifica algunos tipo de datos pero no plantea las variables para almacenarlos</td>
                        <td>Identifica y plantea correctamente la mayor�a de tipos de datos y las variables para su almacenamiento.</td>
                        <td>Identifica y plantea correctamente todos los tipos de datos y las variables para su almacenamiento.</td>
                        <td class="center"><select class="select" style="width:70%; height: 30px;">
                                <option value="0">---</option>
                                <option value="1">0</option>
                                <option value="2">1</option>
                                <option value="3">2</option>
                                <option value="4">3</option>
                            </select></td>
                    </tr>

                    <tr>
                        <td>Identifica los ciclos cuantitativos y cualitativos</td>
                        <td>No identifica los ciclos cuantitativos y cualitativos.</td>
                        <td>Identifica uno de los ciclos cuantitativos y cualitativo</td>
                        <td>Identifica aceptablemente los ciclos cuantitativos y cualitativo</td>
                        <td>Identifica correctamente los ciclos cuantitativos y cualitativo</td>
                        <td class="center"><select class="select" style="width:70%; height: 30px;">
                                <option value="0">---</option>
                                <option value="1">0</option>
                                <option value="2">1</option>
                                <option value="3">2</option>
                                <option value="4">3</option>
                            </select></td>
                    </tr>

                    <tr>
                        <td>Reconoce las estructuras c�clicas: Mientras, Para y Repetir Hasta.</td>
                        <td>No reconoce las estructuras c�clicas: Mientras, Para y Repetir Hasta.</td>
                        <td>Reconoce de forma insuficiente algunas de las estructuras c�clicas: Mientras, Para y Repetir Hasta.</td>
                        <td>Reconoce aceptablemente las estructuras c�clicas: Mientras, Para y Repetir Hasta.</td>
                        <td>Reconoce de forma clara y correcta las estructuras c�clicas: Mientras, Para y Repetir Hasta.</td>
                        <td class="center"><select class="select" style="width:70%; height: 30px;">
                                <option value="0">---</option>
                                <option value="1">0</option>
                                <option value="2">1</option>
                                <option value="3">2</option>
                                <option value="4">3</option>
                            </select></td>
                    </tr>

                    <tr>
                        <td>Interpreta el concepto de suiche o bandera.</td>
                        <td>No interpreta el concepto de suiche o bandera.</td>
                        <td>Interpreta de forma insuficiente el concepto de suiche o bandera.</td>
                        <td>Interpreta de forma aceptable el concepto de suiche o bandera.</td>
                        <td>Interpreta de forma correcta y clara concepto de suiche o bandera.</td>
                        <td class="center"><select class="select" style="width:70%; height: 30px;">
                                <option value="0">---</option>
                                <option value="1">0</option>
                                <option value="2">1</option>
                                <option value="3">2</option>
                                <option value="4">3</option>
                            </select></td>
                    </tr>
                    </table>
            </div>
            
            
            
            
       <div style="margin-top: 30px;">
                <table border="1" style="width: 98%; border-top-color: #006600 5px;"> 
                        <tr>
                            <td></td>
                        </tr>
                 
                </table>
            </div>


            
            
            <div class="table-responsive" style="padding-right: 2%">
                <table class="table table-striped" cellspacing="0" cellpadding="2" width="90%">
                    <tr>
                        <td class="titulo center" colspan="2">Evidencia de Desempeño</td>
                        <td class="titulo center">Porcentaje</td>
                        <td class="titulo center">20%</td>
                        <td class="titulo center">Total de Puntos</td>
                        <td class="contenido"><form class="center"><input style="margin-left:10px; width: 60px; height: 30px;" type="text" 
                                                                       value="---" disabled="true" /></form></td>
                    </tr>

                    <tr>
                        <td class="titulo center" width="19%" >Criterios de Evaluaci�n</td>
                        <td class="tahoma center" width="19%">Deficiente <br />(0)</td>
                        <td class="tahoma center" width="19%">Insuficiente <br />(1)</td>
                        <td class="tahoma center" width="19%">Aceptable <br />(2)</td>
                        <td class="tahoma center" width="19%">Bueno <br />(3)</td>
                        <td class="titulo center" width="5%" >Resultado Parcial</td>
                    </tr>

                    

                    <tr>
                        <td>Puntualidad en las tareas asignadas</td>
                        <td>No se ajusta al tiempo ni formas de entrega o no realiza los trabajos asignados</td>
                        <td>No se ajusta completamente a la forma y entrega con m�s de 5 d�as de retraso</td>
                        <td>Se ajusta al tiempo, pero no se ajusta a la forma</td>
                        <td>Se ajusta perfectamente a tiempos y formas de entrega</td>
                        <td class="center"><select class="select" style="width:70%; height: 30px;">
                                <option value="0">---</option>
                                <option value="1">0</option>
                                <option value="2">1</option>
                                <option value="3">2</option>
                                <option value="4">3</option>
                            </select></td>
                    </tr>
                    
                    
                       <tr>
                        <td>Trabajo aut�nomo</td>
                        <td>No realiza trabajo aut�nomo optativo, ni de ningún tipo</td>
                        <td>Realiza algunas de las actividades optativas pero de forma insuficiente</td>
                        <td>Evidencia trabajo aut�nomo notable con: actividades optativas y alguna actividades propias</td>
                        <td>Evidencia Excelente trabajo aut�nomo con: actividades optativas y otras actividades propias de gran calidad.</td>
                        <td class="center"><select class="select" style="width:70%; height: 30px;">
                                <option value="0">---</option>
                                <option value="1">0</option>
                                <option value="2">1</option>
                                <option value="3">2</option>
                                <option value="4">3</option>
                            </select></td>
                    </tr>
                    
                    
                       <tr>
                        <td>Trabajo en Equipo</td>
                        <td>Raramente escucha, comparte y apoya el esfuerzo de otros. Frecuentemente no es un buen miembro del grupo</td>
                        <td>A veces escucha, comparte y apoya el esfuerzo de otros, pero algunas veces no es un buen miembro del grupo.</td>
                        <td>Usualmente escucha, comparte y apoya el esfuerzo de otros. No causa "problemas" en el grupo.</td>
                        <td>Casi siempre escucha, comparte y apoya el esfuerzo de otros. Trata de mantener la uni�n de los miembros trabajando en grupo.</td>
                        <td class="center"><select class="select" style="width:70%; height: 30px;">
                                <option value="0">---</option>
                                <option value="1">0</option>
                                <option value="2">1</option>
                                <option value="3">2</option>
                                <option value="4">3</option>
                            </select></td>
                    </tr>
                    
                    
                       <tr>
                        <td>Integraci�n en equipo</td>
                        <td>No hay integraci�n</td>
                        <td>La integraci�n es regular </td>
                        <td>La integraci�n es buena</td>
                        <td>La integraci�n es excelente </td>
                        <td class="center"><select class="select" style="width:70%; height: 30px;">
                                <option value="0">---</option>
                                <option value="1">0</option>
                                <option value="2">1</option>
                                <option value="3">2</option>
                                <option value="4">3</option>
                            </select></td>
                    </tr>
                </table>
            </div>
            
            
          <div style="margin-top: 30px;">
                <table border="1" style="width: 98%; border-color: #009248 5px;"> 
                        <tr>
                            <td></td>
                        </tr>
                 
                </table>
            </div>

            <div class="table-responsive" style="padding-right: 2%">
                <table class="table table-striped" cellspacing="0" cellpadding="2" width="90%">
                    <tr>
                        <td class="titulo center" colspan="2">Evidencia de Producto</td>
                        <td class="titulo center">Porcentaje</td>
                        <td class="titulo center">40%</td>
                        <td class="titulo center">Total de Puntos</td>
                        <td class="contenido"><form class="center"><input style="margin-left:10px; width: 60px; height: 30px;" type="text" 
                                                                       value="---" disabled="true" /></form></td>
                    </tr>
                    <tr>
                        <td class="titulo center" width="19%" >Criterios de Evaluaci�n</td>
                        <td class="tahoma center" width="19%">Deficiente <br />(0)</td>
                        <td class="tahoma center" width="19%">Insuficiente <br />(1)</td>
                        <td class="tahoma center" width="19%">Aceptable <br />(2)</td>
                        <td class="tahoma center" width="19%">Bueno <br />(3)</td>
                        <td class="titulo center" width="5%" >Resultado Parcial</td>
                    </tr>
                    
                       <tr>
                        <td>Resuelve  problemas algor�tmicos que requieran la implementaci�n de estructuras condicionales inmplementandolos en un lenguaje de programaci�n</td>
                        <td>No resuelve problemas algor�tmicos que requieran la implementaci�n de estructuras condicionales inmplementandolos en un lenguaje de programaci�n</td>
                        <td>Resuelve problemas algor�tmicos, pero no usa estructuras condicionales ni las  inmplementa en un lenguaje de programaci�n</td>
                        <td>Resuelve problemas algor�tmicos, usa estructuras condicionales, pero debe mejorar la  inmplementaci�n en un lenguaje de programaci�n</td>
                        <td>Resuelve  satisfactoriamente problemas algor�tmicos que requieren implementaci�n de estructuras condicionales y las inmplementa en un lenguaje de programaci�n</td>
                        <td class="center"><select class="select" style="width:70%; height: 30px;">
                                <option value="0">---</option>
                                <option value="1">0</option>
                                <option value="2">1</option>
                                <option value="3">2</option>
                                <option value="4">3</option>
                            </select></td>
                    </tr>
                    
                    
                       <tr>
                        <td>Aplicar las diferentes estructuras de decisi�n y control que respondan a los requerimientos del problema.</td>
                        <td>No aplica las diferentes estructuras de decisi�n y control.</td>
                        <td>Aplica de forma insuficiente las diferentes estructuras de decisi�n y control o no responden a los requerimientos del problema.</td>
                        <td>Aplica de forma aceptable las diferentes estructuras de decisi�n y control.</td>
                        <td>Aplicar correctamente las diferentes estructuras de decisi�n y control que respondan a los requerimientos del problema.</td>
                        <td class="center"><select class="select" style="width:70%; height: 30px;">
                                <option value="0">---</option>
                                <option value="1">0</option>
                                <option value="2">1</option>
                                <option value="3">2</option>
                                <option value="4">3</option>
                            </select></td>
                    </tr>
                    
                    
                       <tr>
                        <td>Solucionar problemas complejos, aplicando la técnica de dividir en subprogramas o m�dulos, con el fin de que se identifiquen las diferentes partes de una soluci�n. </td>
                        <td>No Soluciona problemas complejos o los intenta solucionar pero no aplica la técnica de dividir en subprogramas.</td>
                        <td>Soluciona parcialmente problemas complejos, pero aplica de forma insuficiente la técnica de dividir en subprogramas.</td>
                        <td>Soluciona problemas complejos,  aplica de forma aceptable la técnica de dividir en subprogramas.</td>
                        <td>Soluciona correctamente problemas complejos, aplicando la técnica de dividir en subprogramas e identifica las diferentes partes de una soluci�n. </td>
                        <td class="center"><select class="select" style="width:70%; height: 30px;">
                                <option value="0">---</option>
                                <option value="1">0</option>
                                <option value="2">1</option>
                                <option value="3">2</option>
                                <option value="4">3</option>
                            </select></td>
                    </tr>
                </table>
            </div>
        
            <div id="zona_buttons">
                <table cellspacing="5" style="width: 70%; margin-top: 20px;">
                    <tr>

                        <td><a href=""><button style="width: 115px;" type="button" class="btn btn-success">Guardar</button></a></td>
                        <td><button style="width: 115px;" type="button" class="btn btn-success">Consultar</button></td>
                        <td><a href=""><button style="width: 115px;" type="button" class="btn btn-success">Modificar</button></a></td>
                        <td><a href=""><button style="width: 115px;" type="button" class="btn btn-success">Cancelar</button></a></td>

                    </tr>
                </table>

            </div>

            <div id="copyright">
                <p class="center">Politécnico Colombiano Jaime Isaza Cadavid</p>
                <p class="center">Direcci�n: Carrera 48 N° 7 -151 Medell�n - Colombia - Sur�merica</p>
                <p class="center">Linea de Atenci�n al Cliente: 018000417654 - Conmutador: (574) 319 7900 - 444 7654</p>
            </div>
            
            
            

        </div>
    </body>
</html>
