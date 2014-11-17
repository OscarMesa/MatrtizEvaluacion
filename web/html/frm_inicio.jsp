<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.io.PrintWriter"%>
<%--<%@ page import="co.edu.poli.servlet.SvrPersonal" language="java" %>--%>

<%
    Object u = request.getSession(true).getAttribute("usuario");

    if (u == null) {
        request.setAttribute("existe", "No hay una sesión activa");
        RequestDispatcher dispatcher = request.getRequestDispatcher("/html/Login2.jsp");
        dispatcher.include(request, response);
        out.println("no existe");
        
    }else{
    out.println(u);
    
%>

<html>
    <head>

        <meta charset="utf-8" />

        <title>Sistema de Evaluación por Competencias</title>
        <link rel="stylesheet" href="<c:url value="/css/vam.css"/>" />
        <link rel="stylesheet" href="<c:url value="/css/estilo_menu.css"/>" />
        <link rel="stylesheet" href="<c:url value="/css/layout.css"/>" type="text/css" media="screen">
        <link rel="stylesheet" href="<c:url value="/css/menu.css"/>" type="text/css" media="screen">

        <script src="<c:url value="/js/jquery-1.11.1.min.js" />"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css" />
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        
        

    </head>
    <body>

   <%@include file="banner_menu.jsp" %>

        <div style="margin-left: 15%; margin-bottom:4%; background-color: #ffffff; margin-right: 15%; padding: 2%">



            <div style="margin-top: 7%; margin-left: 13%">
                <iframe width="640" height="360" src="//www.youtube.com/embed/Y5a7GpJN_sI" frameborder="0" allowfullscreen></iframe>
            </div>


            <div class="center" style="width: 20%; margin-left:38%; margin-top: 2%;  background-color: #ffffff">
                <table style="margin-left: 20%">
                    <th>
                    <td><a href="https://www.flickr.com/photos/politecnicojic"><img src="<c:url value="/images/flickr.jpg"/>" border="0" height="41" width="38"></a></td>
                    <td><a href="https://www.facebook.com/polijic?ref=nf"><img src="<c:url value="/images/facebook.jpg"/>" border="0" height="41" width="38"></a></td>
                    <td><a href="https://twitter.com/politecnicoJIC"><img src="<c:url value="/images/twitter.jpg"/>" border="0" height="41" width="38"></a></td>
                    <td><a href="http://www.youtube.com/user/policolombiajic"><img src="<c:url value="/images/youtube.jpg"/>" border="0" height="41" width="38"></a></td>

                    </th>
                </table>

            </div>

            <%@include file="pie_pag.jsp" %>

        </div>
    </body>
</html>
<%
    }
%>
