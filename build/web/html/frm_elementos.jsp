<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.io.PrintWriter"%>
<html>
    <head>

        <meta charset="utf-8" />

        <title>Elementos de Competencia</title>
        <%@include file="archivos_head.jsp" %>

    </head>
    <body>
        <%@include file="banner_menu.jsp" %>
        <div style="margin-left: 15%; margin-bottom:4%; background-color: #ffffff; margin-right: 15%; padding: 2%">
            <p class="titulo2">Elementos de competencia</p>
            <div class="table-responsive">   
                <table style="margin-left:10%" border="0" class="table-condensed" cellspacing="0" cellpadding="2" width="100%">
                    <tr>
                        <td><span style="color: red; font-size: 20px;">*</span></td>
                        <td class="titulo" colspan="2" width="20%">Código de elemento de competencia</td>
                        <td class="contenido" colspan="5">
                            <form>
                                <input style="width: 70%; height: 30px;" type="text" value="ETO-039" disabled="true"></input>
                            </form></td>
                    </tr>
                    <tr>
                        <td style="width: 10px;"><span style="color: red; font-size: 20px;">*</span></td>
                        <td class="titulo" colspan="2">Descripción Elemento</td>
                        <td class="contenido" colspan="5"><form><textarea style="width: 70%; height: 70px;" type="text" 
                                                                          value="Ingrese el contenido de la Norma de Competencia" required="true"></textarea></form></td>
                    </tr>

                </table>
            </div>

            <div id="zona_buttons">
                <table cellspacing="5" style="width: 70%; margin-top: 20px;">
                    <tr>

                        <td><a href=""><button style="width: 115px;" type="button" class="btn btn-success">Guardar</button></a></td>
                        <td><button style="width: 115px;" type="button" class="btn btn-success">Consultar</button></td>
                        <td><a href=""><button style="width: 115px;" type="button" class="btn btn-success">Eliminar</button></a></td>
                        <td><a href=""><button style="width: 115px;" type="button" class="btn btn-success">Listar</button></a></td>

                    </tr>
                </table>

            </div>
            <%@include file="pie_pag.jsp" %>
        </div>
    </body>
</html>
