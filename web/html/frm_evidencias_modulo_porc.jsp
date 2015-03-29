<html>
    <head>

        <meta charset="utf-8" />

        <title>Porcentajes Evidencias por Modulo</title>
        
        <%@include file="archivos_head.jsp" %>

        <script src="validCampoFranz.js"></script>
        
        <script type="text/javascript">
            $(function() {
                //Para escribir solo letras
                $('#miCampo1').validCampoFranz(' abcdefghijklmnñopqrstuvwxyzáéiou');

                //Para escribir solo numeros    
                $('#miCampo2').validCampoFranz('0123456789');
            });
        </script> 

    </head>
    <body>
       <%@include file="banner_menu.jsp" %>
        <div style="margin-left: 15%; margin-bottom:4%; background-color: #ffffff; margin-right: 15%; padding: 2%">
            <p class="titulo2">Valores de evidencias por modulos</p>

            <div class="table-responsive">
                <table style="margin-left:10%" border="0" class="table-condensed" cellspacing="0" cellpadding="2" width="100%">
                    <tr>
                        <td style="width: 2%"><span style="color: red; font-size: 20px;">*</span></td>
                        <td class="titulo">Insitución</td>
                        <td class="contenido">
                            <select class="select" style="width:70%; height: 30px;">
                                <option value="0">Seleccione Institución</option>
                                <option value="20">_____________________________</option>
                                <option value="1">Institución Educativa Alfonso Lopez</option>
                                <option value="2">Institución Educativa Ana de Castrillón</option>
                                <option value="3">Institución Educativa Cadena las Playas</option>
                                <option value="4">Institución Educativa Cefa Centro Formativo</option>
                                <option value="5">Institución Educativa Concejo de MedellÃ­n</option>
                                <option value="6">Institución Educativa Estrella Velez</option>
                                <option value="7">Institución Educativa Félix Henao</option>
                                <option value="8">Institución Educativa Gonzalo MejÃ­a</option>
                                <option value="9">Institución Educativa Hector Abad Gómez</option>
                                <option value="10">Inem José Félix de Restrepo</option>
                            </select></td>
                    </tr>

                    <tr>
                        <td><span class="campoObligatorio">*</span></td>
                        <td class="titulo">Modulo</td>
                        <td >

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



                <table style="margin-left:10%; width: 76%; margin-top: 2%" border="0" class="table-condensed" cellspacing="0" cellpadding="0">
                    
                    <tr >
                        <td style="width: 2%" class="titulo"><span class="campoObligatorio">*</span></td>
                        <td style="width: 38%" class="titulo">Conocimiento</td>
                        <td style="width: 2%" class="titulo"><span class="campoObligatorio">*</span></td>
                        <td style="width: 40%" class="titulo">Desempeño</td>
                        <td style="width: 2%" class="titulo"><span class="campoObligatorio">*</span></td>
                        <td style="width: 16%" class="titulo">Producto</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td class="contenido">
                            <form>
                                <input style="width: 100px;height: 32px; border-radius: 4px;" autofocus="true" type="text" />
                            </form>
                        </td>
                        <td></td>
                        <td class="contenido">
                            <form>
                                <input style="width: 100px;height: 32px; border-radius: 4px;" autofocus="true" type="text" />
                            </form>
                        </td>
                        <td></td>
                        <td class="contenido">
                            <form>
                                <input style="width: 100px;height: 32px; border-radius: 4px;" autofocus="true" type="text" />
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
                        <td><a href=""><button style="width: 115px;" type="button" class="btn btn-success">Eliminar</button></a></td>
                        <td><a href=""><button style="width: 115px;" type="button" class="btn btn-success">Listar</button></a></td>

                    </tr>
                </table>

            </div>
            <%@include file="pie_pag.jsp" %>
        </div>
    </body>
</html>

