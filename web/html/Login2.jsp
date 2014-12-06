<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.io.PrintWriter"%>
<%@ page import="co.edu.poli.servlet.SvrPersonal" language="java" %>

<%
    Object u = request.getSession().getAttribute("usuario");

    if (u != null) {
        out.println(u);
        request.setAttribute("existe", "No hay una sesión activa");
        RequestDispatcher dispatcher = request.getRequestDispatcher("/html/Login2.jsp");
        //dispatcher.include(request, response);
        response.sendRedirect("frm_inicio.jsp");
    }else{
    
    
%>

<!DOCTYPE html>
<html>

    <head>

        <meta charset="UTF-8">

        <title>Random Login Form - CodePen</title>

        <style>
            @import url(http://fonts.googleapis.com/css?family=Exo:100,200,400);
            @import url(http://fonts.googleapis.com/css?family=Source+Sans+Pro:700,400,300);

            body{
                margin: 0;
                padding: 0;
                background: #fff;

                color: #fff;
                font-family: Arial;
                font-size: 12px;
            }

            .body{
                position: absolute;
                top: -20px;
                left: -20px;
                right: -40px;
                bottom: -40px;
                width: auto;
                height: auto;
                background-image: url('<c:url value="/images/fondo_poli.jpg"/>');
                background-size: cover;
                //-webkit-filter: blur(0px);
                z-index: 0;
            }

            .grad{
                position: absolute;
                top: -20px;
                left: -20px;
                right: -40px;
                bottom: -40px;
                width: auto;
                height: auto;
                //background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(0,0,0,0)), color-stop(100%,rgba(0,0,0,0.65))); /* Chrome,Safari4+ */
                z-index: 1;
                opacity: 0.7;
            }



            .header{
                position: absolute;
                top: calc(50% - 35px);
                left: calc(43% - 255px);
                z-index: 2;
            }

            .tituloSistema{
                position: absolute;
                top: calc(20% - 35px);
                left: calc(38% - 255px);
                z-index: 2;
                float: left;
                color: #009241;
                font-family: 'Exo', sans-serif;
                font-size: 42px;
                font-weight: 400;
            }

            #copyright{
                position: absolute;
                margin-top: 5%;
                font-size: 14px; 
                line-height: 5px;
                top: calc(80% - 35px);
                left: calc(48% - 255px);
                color: #000;
                text-align: center;
                font-family: 'Exo', sans-serif;
            }

            .header div{
                float: left;
                color: #009241;
                font-family: 'Exo', sans-serif;
                font-size: 35px;
                font-weight: 200;
            }

            .header div span{
                color: #003300 !important;      
            }

            .login{
                position: absolute;
                top: calc(50% - 75px);
                left: calc(50% - 50px);
                height: 150px;
                width: 350px;
                padding: 10px;
                z-index: 2;
            }

            .login input[type=text]{
                width: 250px;
                height: 30px;
                background: transparent;
                border: 1px solid rgba(255,255,255,0.6);
                border-radius: 2px;
                color: #009248;
                font-family: 'Exo', sans-serif;
                font-size: 17px;
                font-weight: 400;
                padding: 4px;
                border-color: #009248;
            }

            .login input[type=password]{
                width: 250px;
                height: 30px;
                background: transparent;
                border: 1px solid rgba(255,255,255,0.6);
                border-radius: 2px;
                border-color: #009248;
                color: #009248;
                font-family: 'Exo', sans-serif;
                font-size: 17px;
                font-weight: 400;
                padding: 4px;
                margin-top: 10px;
            }

            .login input[type=button],input[type=submit]{
                width: 260px;
                height: 35px;
                background: #fff;
                border: 1px solid #fff;
                cursor: pointer;
                border-radius: 2px;
                color: #a18d6c;
                font-family: 'Exo', sans-serif;
                font-size: 16px;
                font-weight: 400;
                padding: 6px;
                margin-top: 10px;
            }

            .login input[type=button]:hover{
                opacity: 0.8;
            }

            .login input[type=button]:active{
                opacity: 0.6;
            }

            .login input[type=text]:focus{
                outline: none;
                border: 1px solid rgba(255,255,255,0.9);
            }

            .login input[type=password]:focus{
                outline: none;
                border: 1px solid rgba(255,255,255,0.9);
            }

            .login input[type=button]:focus{
                outline: none;
            }


            ::-webkit-input-placeholder{
                color: #009248;
            }

            ::-moz-input-placeholder{
                color: rgba(255,255,255,0.6);
            }

        </style>

        <script src="<c:url value="/js/prefixfree.min.js"/>"></script>

    </head>

    <body>
        <!--<img style="position: absolute" src="../images/poli_50.jpg" border="0">-->



        <div class="body"></div>
        <img style="position: absolute; margin-top: 3%" src="<c:url value="/images/poli_50.jpg"/>" border="0">
        <img style="float: right; position: absolute; margin-top: 3%; margin-left: 88%" src="<c:url value="/images/escudo.jpg"/>" border="0">

        <div class="tituloSistema">
            <div>Sistema de Evaluación por Competencias</div>
        </div>

        <div class="grad"></div>

        <div class="header">

            <div>Ingreso al Sistema</div>
        </div>
        <br>

       
        <div class="login">
            
            <div style="color: #b93653; font-family: 'Exo', sans-serif; margin-bottom: 10px; font-size: 15px;">
            
            <%

                String message = (String) request.getAttribute("existe");
                if(message!=null){
                    out.println(message);
                }
            %>
            
            
            
        </div>
            
            <form class="" action="<c:url value="/SvrPersonal"/>" method="post">
                <input type="text" placeholder="username" name="user"/><br/>
                <input type="password" placeholder="password" name="password"/><br/>

                <input type="hidden" value="inicio" name="action"/>
                <input  type="submit" value="Login"/>
            </form>
        </div>



         <%@include file="pie_pag.jsp" %>
        <script src='http://codepen.io/assets/libs/fullpage/jquery.js'></script>

    </body>

</html>

<%
}
%>