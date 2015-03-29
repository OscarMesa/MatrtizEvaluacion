<%@page import="co.edu.poli.dao.estado"%>
<%@page import="co.edu.poli.negocio.EstadosCtr"%>
<%@page import="co.edu.poli.dao.norma"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8" />

        <title>Normas de Competencia</title>
        <link rel="stylesheet" href="<c:url value="/css/vam.css"/>" />
        <link rel="stylesheet" href="<c:url value="/css/estilo_menu.css"/>" />

        <script src="<c:url value="/js/jquery-1.11.1.min.js" />"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css" />
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#frm_normas .btn").click(function (e) {
                    $("#hd-accion").val($(this).val());
                });
                
                $("#eliminar").click(function(e){
                   eliminar_norma(e);
                });
                
                $("#consultar").click(function(e){
                    noValidar();
                    var codigo = prompt("Ingrese el código de la norma que desea eliminar", "CDO-000");
                    $("#id_norma").val(codigo);
                });
                
            });
            

            function eliminar_norma(e)
            {
                noValidar();
                if($("#id_norma_existe").length > 0){
                    if (!confirm('Realmente desea desactivar la norma ' + $('#codigo_norma').val() + '?')) {
                        e.preventDefault();
                    }
                }else
                {
                    alert("Debe consultar una norma.");
                     e.preventDefault();
                }
            
            }

            function noValidar()
            {
                $("#frm_normas").attr('novalidate', 'novalidate');
                return false;
            }
        </script>
    </head>
    <body>
        <%@include file="banner_menu.jsp" %>

        <div style="margin-left: 15%; margin-bottom:4%; background-color: #ffffff; margin-right: 15%; padding: 2%">

            <p class="titulo2">Normas de competencia</p>
            <form id="frm_normas" action="<c:url value="/SvrNormas"/>" method="post">
                <div class="table-responsive">
                    <% if(request.getAttribute("error") != null ){ %>
                    <div class="alert alert-danger"><% out.write(String.valueOf(request.getAttribute("error")));  %>
                    </div>
                    <% } %>
                    <table style="margin-left:10%" border="0" class="table-condensed" cellspacing="0" cellpadding="2" width="100%">
                        <%
                            norma n = new norma();
                            if (request.getAttribute("norma_actualizar") != null) {
                                n = ((norma) request.getAttribute("norma_actualizar"));
                           // out.print(n);
                        %>
                        <tr><td></td>
                            <!-- <td>ID</td>
                            <td><%
                                out.write(n.getId_norma() + "");
                                    %></label> -->
                                <input id="id_norma_existe" type="hidden"/>
                                <input  type="hidden" name="id_norma" value="<% out.write(n.getId_norma() + "");  %>"/>
                                <input  type="hidden" id="codigo_norma" name="codigo_norma" value="<% out.write(n.getCodigo_norma()+ "");  %>"/>
                          <!--  </td> 
                        </tr>-->
                        <%
                            }else{
                        %> 
                            <input  type="hidden" id="id_norma" name="id_norma" value=""/>
                        <%
                            }
                        %>

                        <tr>
                            <td><span class="campoObligatorio">*</span></td>
                            <td class="titulo" colspan="2" width="20%">Código de norma de competencia</td>
                            <td class="contenido" colspan="5">
                                <input style="width: 70%; height: 32px;" type="text" placeholder="Ingrese código de la norma (Ejm: NOR-001)" name="norma" 
                                       <%
                                           if (request.getAttribute("norma_actualizar") != null) {
                                               out.write("value='" + n.getCodigo_norma() + "'");
                                           }
                                       %>
                                       />
                            </td>
                        </tr>
                        <tr></tr>
                        <tr>
                            <td style="width: 10px;"><span style="color: red; font-size: 20px;">*</span></td>
                            <td class="titulo" colspan="2">Descripción Norma</td>
                            <td class="contenido" colspan="5">
                                <textarea  style="width: 70%; height: 70px;" placeholder="Ingrese el contenido de la Norma de Competencia" name="contenido_norma" required="true"><%
                                    if (request.getAttribute("norma_actualizar") != null) {
                                        out.write(n.getDescripcion());
                                    }
                                    %></textarea>
                            </td>
                        </tr>
                    </table>
                </div>

                <div id="zona_buttons">
                    <table cellspacing="5" style="width: 70%; margin-top: 20px;">
                        <tr>
                            <td><a href=""><button style="width: 115px;" type="submit" class="btn btn-success " value="<% out.write((request.getAttribute("norma_actualizar") == null ? "guardar" : "actualizar"));%>" name="guardar">Guardar</button></a></td>
                            <td><a href=""><button style="width: 115px;" type="submit" class="btn btn-success" value="consultar" name="consultar" id="consultar">Consultar</button></a></td>
                            <td><a href=""><button id="eliminar" style="width: 115px;" type="submit" class="btn btn-success" value="desactivar" name="desactivar">Eliminar</button> </a></td>
                            <td><a href=""><button style="width: 115px;" type="submit" class="btn btn-success" value="listar" name="listar" onclick="noValidar()">Listar</button></a></td>
                        </tr>
                        <tr>                            
                            <td><input type="hidden" value="" name="action" id="hd-accion"/></td>
                        </tr>
                    </table>
                </div> 
            </form>

            <%@include file="pie_pag.jsp" %>
        </div>
    </body>
</html>
