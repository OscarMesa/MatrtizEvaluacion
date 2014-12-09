<html>
    <head>

        <meta charset="utf-8" />

        <title>Resultados de Aprendizaje</title>
        
         <%@include file="archivos_head.jsp" %>

    </head>
    <body>
        
        <%@include file="banner_menu.jsp" %>

        <div style="margin-left: 15%; margin-bottom:4%; background-color: #ffffff; margin-right: 15%; padding: 2%">

            <p class="titulo2">Resultados de aprendizaje</p>
            <div class="table-responsive">
                <table style="margin-left:10%" border="0" class="table-condensed" cellspacing="0" cellpadding="2" width="100%">
                    <tr>
                        <td><span style="color: red; font-size: 20px;">*</span></td>
                        <td class="titulo" colspan="2" width="20%">Código del Resultado</td>
                        <td class="contenido" colspan="5">
                            <form>
                                <input style="width: 70%; height: 30px;" type="text" value="RTDO-033" disabled="true"></input>
                            </form></td>
                    </tr>
                    <tr>
                        <td style="width: 10px;"><span style="color: red; font-size: 20px;">*</span></td>
                        <td class="titulo" colspan="2">Descripción</td>
                        <td class="contenido" colspan="5"><form><textarea style="width: 70%; height: 70px;" type="text" 
                                                                          value="Ingrese el contenido del Resultado de Aprendizaje" required="true"></textarea></form></td>
                    </tr>

                </table>
            </div>
            <!--<p>Recuerde que la debe asignar la Norma de Competencia a un Modulo</p>-->
            <div id="zona_buttons">
                <table cellspacing="5" style="width: 70%; margin-top: 20px;">
                    <tr>

                        <td><a href=""><button style="width: 115px;" type="button" class="btn btn-success">Guardar</button></a></td>
                        <td><button style="width: 115px;" type="button" class="btn btn-success">Consultar</button></td>
                        <td><a href=""><button style="width: 115px;" type="button" class="btn btn-success">Modificar</button></a></td>
                        <td><a href=""><button style="width: 115px;" type="button" class="btn btn-success">Cancelar</button></a></td>

                    </tr>
                </table>
                <!--<div>-->
            </div>

            <%@include file="pie_pag.jsp" %>
            
        </div>
    </body>
</html>
