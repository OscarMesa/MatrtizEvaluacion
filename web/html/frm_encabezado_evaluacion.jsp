<%@page import="co.edu.poli.dao.estado"%>
<%@page import="co.edu.poli.negocio.EstadosCtr"%>
<%@page import="co.edu.poli.dao.norma"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Encabezado de Evaluación</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="<c:url value="/css/vam.css"/>" />
        <link rel="stylesheet" href="<c:url value="/css/estilo_menu.css"/>" />
        
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value="/libs/select2-3.5.2/select2.css"/>" />
        

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" />

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css" />

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="<c:url value="/libs/select2-3.5.2/select2.js"/>"></script>
        <script src="<c:url value="/lib/select2-3.5.2/select2_locale_es.js"/>"></script>
        
        
    </head>
    <body>
    <header>
            <%@include file="banner_menu.jsp" %>
        </header>
        <div style="margin-left: 15%; margin-bottom:4%; background-color: #ffffff; margin-right: 15%; padding: 2%">

    <div style="margin-left: 5%" class="table-responsive">
                <table border="0" class="table-condensed" cellspacing="0" cellpadding="2" width="85%">
                    <tr>
                        <td style="vertical-align:text-top" class="titulo" width="20%">Módulo</td>
                        <td class="contenido">
                            <input type="hidden" id="cmbModulo" style="width:950px;margin-bottom: 5px" class="input-xlarge" />
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align:text-top" class="titulo" width="20%">Norma de Competencia</td>
                        <td class="contenido">
                            <input type="hidden" id="cmbNorma" style="width:950px;margin-bottom: 5px" class="input-xlarge" />
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align:text-top" class="titulo" width="20%">Elemento de Competencia</td>
                        <td class="contenido">
                            <input type="hidden" id="cmbElemento" style="width:950px;margin-bottom: 5px" class="input-xlarge" />
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align:text-top" class="titulo" width="20%">Elemento de Competencia</td>
                        <td class="contenido">
                            <input type="hidden" id="cmbElemento" style="width:950px;margin-bottom: 5px" class="input-xlarge" />
                        </td>
                    </tr>
                </table>
    </div>
        </div>
        
    </body>
</html>

<script type="text/javascript">
    $('#cmbModulo').select2({
        placeholder: 'Módulo a evaluar',
        ajax: {
            url: "SvrEvaluacion",
            dataType: 'json',
            quietMillis: 100,
            data: function (term, page) {
                return {
                    action: 'obtenerModulos', //search term
                    page_limit: 10 // page size
                };
            },
            results: function (data, page) {
                return { results: data.results };
            }

        },
        initSelection: function(element, callback) {
            return $.getJSON("SvrEvaluacion"), null, function(data) {

                    return callback(data);

            });
        }

    });

    $("#cmbMercancia_Envio_2").change(function() {
        if($("#cmbMercancia_Envio_2").select2('data').id != 0)
        $('#cajas-disponibles').html("Número de cajas disponibles: " + $("#cmbMercancia_Envio_2").select2('data').NumCajasDisponibles); 
        else{
            $('#cajas-disponibles').html("");
            $('#cmbMercancia_Envio_2').select2('data', null);
        }
    });
</script>