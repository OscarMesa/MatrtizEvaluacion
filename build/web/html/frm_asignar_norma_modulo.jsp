<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.io.PrintWriter"%>
<html>
    <head>

        <meta charset="utf-8" />

        <title>Asignación de Normas</title>
        <%@include file="archivos_head.jsp" %>
    </head>
    <body>
        <%@include file="banner_menu.jsp" %>
        <div style="margin-left: 15%; margin-bottom:4%; background-color: #ffffff; margin-right: 15%; padding: 2%">

          <p class="titulo2">Asignación de normas a módulos</p>
            <div class="table-responsive">
                
                <!--<div style="padding-top: 10px; padding-bottom: 10px; margin-right: 120px; margin-left: 120px; background-color: #fefee0; border-radius: 20px;">-->
                <table style="margin-left:10%" border="0" class="table-condensed" cellspacing="0" cellpadding="2" width="100%">
                    <tr>
                        <td><span class="campoObligatorio">*</span></td>
                        <td class="titulo" colspan="2" width="20%">Norma de Competencia</td>
                        <td class="contenido" colspan="5">
                             <select class="select" style="width:70%; height: 30px;">
                                <option value="0">Seleccione la Norma</option>
                                <option value="20">_____________________________</option>
                                <option value="1">D00-039</option>
                                <option value="2">D00-038</option>
                                <option value="3">D00-037</option>
                                <option value="4">D00-036</option>
                                <option value="5">D00-035</option>
                                <option value="6">D00-034</option>
                                <option value="7">D00-033</option>
                                <option value="8">D00-032</option>
                                <option value="9">D00-031</option>
                                <option value="10">D00-030</option>
                            </select></td>
                    </tr>
                   
                    <tr>
                         <td><span class="campoObligatorio">*</span></td>
                        <td class="titulo" colspan="2">Módulo</td>
                        <td colspan="5">
                           
                         <select class="select" style="width:70%; height: 30px;">
                                <option value="0">Seleccione el Módulo</option>
                                <option value="20">_____________________________</option>
                                <option value="1">Desarrollo del Pensamiento AnalÃ­tico y Sistemico 1</option>
                                <option value="2">Desarrollo del Pensamiento AnalÃ­tico y Sistemico 2</option>
                                <option value="3">Desarrollo del Pensamiento Logico Matemático 1A</option>
                                <option value="4">Desarrollo del Pensamiento Logico Matemático 1B</option>
                                <option value="5">Ciclo de Vida del Software</option>
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
           <%@include file="pie_pag.jsp" %>
        </div>
    </body>
</html>

