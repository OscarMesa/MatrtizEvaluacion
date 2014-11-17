<%@page import="java.sql.ResultSet"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.io.PrintWriter"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" href="<c:url value="/css/vam.css"/>" />
        <link rel="stylesheet" href="<c:url value="/css/estilo_menu.css"/>" />
        <link rel="stylesheet" href="<c:url value="/css/layout.css"/>" type="text/css" media="screen">
        <link rel="stylesheet" href="<c:url value="/css/menu.css"/>" type="text/css" media="screen">

        <script src="<c:url value="/js/jquery-1.11.1.min.js" />"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css" />
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

        <script src="<c:url value="/js/jquery-1.11.1.min.js" />"></script>
        <title>Listar normas</title>
    </head>
    <body>
        <header>
            <%@include file="banner_menu.jsp" %>
        </header>
        <div style="margin-left: 15%; margin-bottom:4%; background-color: #ffffff; margin-right: 15%; padding: 2%">
            <h1></h1>
            <br/>
            <table id="listado-normas">
                <thead>
                    <tr>
                        <th style="width: 40px;">ID</th>
                        <th style="width: 70px;">Código</th>
                        <th style="width: 700px;">Descripción</th>
                        <th colspan="2">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <%
                                ResultSet r = ((ResultSet)request.getAttribute("listado"));
                                while(r.next()){
                                    out.write("<tr>" +
                                            "<td>" +r.getString("id_norma") + "</td>" +
                                            "<td>" +r.getString("codigo_norma") + "</td>" +
                                            "<td>" +r.getString("descripcion") + "</td>" +
                                            "<td><a href=\"SvrNormas?action=modificar&id="+r.getString("id_norma")+"\"> Editar</a>" + "</td>" +
                                            "<td><a href=\"SvrNormas?action=eliminar&id="+r.getString("id_norma")+"\"> Eliminar</a>" + "</td>" +
                                            "</tr>");
                                }
                            %>
                        </td>
                    </tr>
                </tbody>
            </table>
            <footer>
                <%@include file="pie_pag.jsp" %>
            </footer>
        </div>
    </body>
</html>
