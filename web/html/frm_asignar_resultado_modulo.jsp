<html>
    <head>

        <meta charset="utf-8" />

        <title>Asignación de Resultados</title>
        <%@include file="archivos_head.jsp" %>
    </head>
    <body>
        
         <%@include file="banner_menu.jsp" %>

        <div style="margin-left: 15%; margin-bottom:4%; background-color: #ffffff; margin-right: 15%; padding: 2%">

            <p class="titulo2">Asignación de resultados a modulos</p>
            <div class="table-responsive">
                <table style="margin-left:10%" border="0" class="table-condensed" cellspacing="0" cellpadding="2" width="100%">
                    <tr>
                        <td><span class="campoObligatorio">*</span></td>
                        <td class="titulo" colspan="2" width="20%">Resultado de Aprendizaje</td>
                        <td class="contenido" colspan="5">
                            <select class="select" style="width:70%; height: 30px;">
                                <option value="0">Seleccione el Resultado de Aprendizaje</option>
                                <option value="20">_____________________________</option>
                                <option value="1">RTDO-039</option>
                                <option value="2">RTDO-038</option>
                                <option value="3">RTDO-037</option>
                                <option value="4">RTDO-036</option>
                                <option value="5">RTDO-035</option>
                                <option value="6">RTDO-034</option>
                                <option value="7">RTDO-033</option>
                                <option value="8">RTDO-032</option>
                                <option value="9">RTDO-031</option>
                                <option value="10">RTDO-030</option>
                            </select></td>
                    </tr>

                    <tr>
                        <td><span class="campoObligatorio">*</span></td>
                        <td class="titulo" colspan="2">Modulo</td>
                        <td colspan="5">

                            <select class="select" style="width:70%; height: 30px;">
                                <option value="0">Seleccione el Modulo</option>
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

