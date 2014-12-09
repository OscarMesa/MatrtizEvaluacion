<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.io.PrintWriter"%>
<html>
    <head>

        <meta charset="utf-8" />

        <title>Criterios de Evaluación</title>
        <%@include file="archivos_head.jsp" %>
    </head>
    <body>
        <%@include file="banner_menu.jsp" %>

        <div style="margin-left: 15%; margin-bottom:4%; background-color: #ffffff; margin-right: 15%; padding: 2%">
            <p class="titulo2">Criterios de evaluación</p>
            <div class="table-responsive">
                <table style="margin-left:10%" border="0" class="table-condensed" cellspacing="0" cellpadding="2" width="100%">
                    <tr>
                        <td><span class="campoObligatorio">*</span></td>
                        <td class="titulo"  width="20%">Código del criterio de evaluación</td>
                        <td class="contenido" >
                            <form>
                                <input style="width: 70%; height: 30px;" type="text" value="CTO-001" disabled="true"></input>
                            </form></td>
                    </tr>
                    <tr>
                        <td style="width: 10px;"><span class="campoObligatorio">*</span></td>
                        <td class="titulo" >Descripción Criterio</td>
                        <td class="contenido"><form><textarea style="width: 70%; height: 70px;" type="text" 
                                                                          value="Ingrese el contenido de la Norma de Competencia" required="true"></textarea></form></td>
                    </tr>
                    <tr>
                        <td><span class="campoObligatorio">*</span></td>
                        <td class="titulo" width="20%">Clasificación Criterio</td>
                        <td class="contenido">
                            <select class="select" style="width:70%; height: 30px;">
                                <option value="0">Seleccione Tipo de Evidencia</option>
                                <option value="20">_____________________________</option>
                                <option value="1">Evidencia de Conocimiento</option>
                                <option value="2">Evidencia de Producto</option>
                                <option value="3">Evidencia de Desempeño</option>
                            </select></td>
                    </tr>

                </table>
            </div>

            <div class="table-responsive">
                <div>
                    <p class="subtitulo">Rubricas</p>
                </div>

                <table style="margin-left:10%" border="0" class="table-condensed" cellspacing="0" cellpadding="2" width="100%">
                    <tr>
                        <td style="width: 10px;"><span class="campoObligatorio">*</span></td>
                        <td style="width: 20%; " class="titulo">Deficiente(0)</td>
                        <td class="contenido"><form><textarea style="width: 70%; height: 50px;" type="text" 
                                                                          value="Ingrese el contenido de la Norma de Competencia" required="true"></textarea></form></td>
                    </tr>

                    <tr>
                        <td style="width: 10px;"><span class="campoObligatorio">*</span></td>
                        <td class="titulo">Insuficiente(1)</td>
                        <td class="contenido">
                            <form>
                                <textarea style="width: 70%; height: 50px;" type="text" 
                                value="Ingrese el contenido de la Norma de Competencia" required="true"></textarea>
                            </form>
                        </td>
                    </tr>


                    <tr>
                        <td style="width: 10px;"><span class="campoObligatorio">*</span></td>
                        <td class="titulo">Aceptable(2)</td>
                       <td class="contenido">
                            <form>
                                <textarea style="width: 70%; height: 50px;" type="text" 
                                value="Ingrese el contenido de la Norma de Competencia" required="true"></textarea>
                            </form>
                        </td>
                    </tr>

                    <tr>
                        <td style="width: 10px;"><span class="campoObligatorio">*</span></td>
                        <td class="titulo">Bueno(3)</td>
                        <td class="contenido">
                            <form>
                                <textarea style="width: 70%; height: 50px;" type="text" value="Ingrese el contenido de la Norma de Competencia" required></textarea>
                            </form>
                        </td>
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
