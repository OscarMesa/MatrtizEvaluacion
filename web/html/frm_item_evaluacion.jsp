<%@page import="co.edu.poli.dao.estado"%>
<%@page import="co.edu.poli.negocio.EstadosCtr"%>
<%@page import="co.edu.poli.dao.norma"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Ítems de Evaluación</title>
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
        <header>
            <%@include file="banner_menu.jsp" %>
        </header>
        <div style="margin-left: 15%; margin-bottom:4%; background-color: #ffffff; margin-right: 15%; padding: 2%">
            <p class="titulo2">Ítems de Evaluación</p>
            <div style="margin-left: 20%" class="table-responsive">
                <table border="0" class="table-condensed" cellspacing="0" cellpadding="2" width="100%">
                    <tr>
                        <td class="titulo" colspan="2" width="20%">Institución</td>
                        <td class="contenido" colspan="5">
                            <form>
                                <input style="width: 70%; height: 30px;" type="text" value="Institución Educativa Marco Fidel Suarez" disabled/>
                            </form></td>
                    </tr>
                    <tr>
                        <td class="titulo" colspan="2">Docente</td>
                        <td class="contenido" colspan="5"><form><input style="width: 70%; height: 30px;" type="text" value="Jhon Jairo Monsalve" disabled></form></td>
                    </tr>
                    <tr>
                        <td class="titulo" colspan="2">Modulo</td>
                        <td colspan="5"><select class="select" style="width:70%; height: 30px;">
                                <option value="0">Seleccione el Modulo</option>
                                <option value="1">Desarrollo del Pensamiento Analítico y Sistemico 1</option>
                                <option value="2">Desarrollo del Pensamiento Analítico y Sistemico 2</option>
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

                <table class="table table-striped" cellspacing="0" cellpadding="2" width="90%" style="border-top-color: #006600">
                    <tr>
                        <td class="titulo center" colspan="2">Evidencias de Conocimiento</td>
                        <td class="titulo center">Porcentaje <br />40%</td>
                    </tr>

                    <tr>
                        <td class="titulo center" width="19%">Criterios de Evaluación</td>
                        <td class="titulo center">Descripción</td>
                        <td class="titulo center" width="5%">Seleccione</td>
                    </tr>


                    <tr>
                        <td class="center">CTO-000</td>
                        <td>Manejo de expresiones lógico matemÃ¡ticas</td>
                        <td class="center"><input type="checkbox" name="transporte" value="1"></td>
                    </tr>

                    <tr>
                        <td class="center">CTO-000</td>
                        <td>Identifica los datos y las variables del caso de estudio o problema a resolver</td>
                        <td class="center"><input type="checkbox" name="transporte" value="1"></td>
                    </tr>

                    <tr>
                        <td class="center">CTO-000</td>
                        <td>Identifica los ciclos cuantitativos y cualitativos</td>
                        <td class="center"><input type="checkbox" name="transporte" value="1"></td>
                    </tr>

                    <tr>
                        <td class="center">CTO-000</td>
                        <td>Reconoce las estructuras cíclicas: Mientras, Para y Repetir Hasta.</td>
                        <td class="center"><input type="checkbox" name="transporte" value="1"></td>
                    </tr>

                    <tr>
                        <td class="center">CTO-000</td>
                        <td>Interpreta el concepto de suiche o bandera.</td>
                        <td class="center"><input type="checkbox" name="transporte" value="1"></td>
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
                        <td class="titulo center" colspan="2">Evidencias de DesempeÃ±o</td>
                        <td class="titulo center">Porcentaje <br />20%</td>
                    </tr>

                    <tr>
                        <td class="titulo center" width="19%">Criterios de Evaluación</td>
                        <td class="titulo center">Descripción</td>
                        <td class="titulo center" width="5%">Seleccione</td>
                    </tr>


                    <tr>
                        <td class="center">CTO-000</td>
                        <td>Puntualidad en las tareas asignadas</td>
                        <td class="center"><input type="checkbox" name="transporte" value="1"></td>
                    </tr>


                    <tr>
                        <td class="center">CTO-000</td>
                        <td>Trabajo autónomo</td>
                        <td class="center"><input type="checkbox" name="transporte" value="1"></td>
                    </tr>


                    <tr>
                        <td class="center">CTO-000</td>
                        <td>Trabajo en Equipo</td>
                        <td class="center"><input type="checkbox" name="transporte" value="1"></td>
                    </tr>


                    <tr>
                        <td class="center">CTO-000</td>
                        <td>Integración en equipo</td>
                        <td class="center"><input type="checkbox" name="transporte" value="1"></td>
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
                        <td class="titulo center" colspan="2">Evidencias de Producto</td>
                        <td class="titulo center">Porcentaje <br />40%</td>
                    </tr>

                    <tr>
                        <td class="titulo center" width="19%">Criterios de Evaluación</td>
                        <td class="titulo center">Descripción</td>
                        <td class="titulo center" width="5%">Seleccione</td>
                    </tr>


                    <tr>
                        <td class="center">CTO-000</td>
                        <td>Resuelve  problemas algorítmicos que requieran la implementación de estructuras condicionales inmplementandolos en un lenguaje de programación</td>
                        <td class="center"><input type="checkbox" name="transporte" value="1"></td>


                    <tr>
                        <td class="center">CTO-000</td>
                        <td>Aplicar las diferentes estructuras de decisión y control que respondan a los requerimientos del problema.</td>
                        <td class="center"><input type="checkbox" name="transporte" value="1"></td>
                    </tr>


                    <tr>
                        <td class="center">CTO-000</td>
                        <td>Solucionar problemas complejos, aplicando la tÃ©cnica de dividir en subprogramas o módulos, con el fin de que se identifiquen las diferentes partes de una solución. </td>
                        <td class="center"><input type="checkbox" name="transporte" value="1"></td>
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
                <p class="center">PolitÃ©cnico Colombiano Jaime Isaza Cadavid</p>
                <p class="center">Dirección: Carrera 48 NÂ° 7 -151 Medellín - Colombia - SurÃ¡merica</p>
                <p class="center">Linea de Atención al Cliente: 018000417654 - Conmutador: (574) 319 7900 - 444 7654</p>
            </div>

        </div>
    </body>
</html>
