<%@page import="co.edu.poli.dao.estado"%>
<%@page import="co.edu.poli.negocio.EstadosCtr"%>
<%@page import="co.edu.poli.dao.norma"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
    <head>
        <title>Encabezado de Evaluación</title>
        <%@include file="archivos_head.jsp" %> 

        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value="/libs/select2-3.5.2/select2.css"/>" />
        <script src="<c:url value="/libs/select2-3.5.2/select2.js"/>"></script>
        <script src="<c:url value="/libs/select2-3.5.2/select2_locale_es.js"/>"></script>


    </head>
    <body>
        <header>
            <%@include file="banner_menu.jsp" %>
        </header>
        <div style="margin-left: 15%; margin-bottom:4%; background-color: #ffffff; margin-right: 15%; padding: 2%">
            <p class="titulo2">Encabezado de Evaluación</p>

            <div style="margin-left: 5%" class="table-responsive">
                <form action="<c:url value="/SvrEvaluacion"/>" method="POST" id="frm-encabezado-evaluacion">
                    <table border="0" class="table-condensed" cellspacing="0" cellpadding="2" width="85%">
                        <tr>
                            <td style="vertical-align:text-top; width:350px;" class="titulo" >Descripción de la Evaluación</td>
                            <td class="contenido">
                                <input type="text" id="txtDescripcion" style="width:550px;margin-bottom: 5px; " class="input-xlarge" name="descripcion" />
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align:text-top; width:360px;" class="titulo">Módulo</td>
                            <td class="contenido">
                                <input type="text" id="cmbModulo" style="width:550px;margin-bottom: 5px" class="input-xlarge" name="cmbModulo"/>
                                <label id="cmbModulo-error" class="error" for="cmbModulo"></label>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align:text-top; width:360px;" class="titulo">Normas de Competencia</td>
                            <td class="contenido">
                                <input type="hidden" id="cmbNorma" style="width:550px;margin-bottom: 5px" class="input-xlarge"  name="cmbNorma"/>
                                <label id="cmbNorma-error" class="error" for="cmbNorma"></label>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align:text-top; width:360px;" class="titulo">Elementos de Competencia</td>
                            <td class="contenido">
                                <input type="hidden" id="cmbElemento" style="width:550px;margin-bottom: 5px" class="input-xlarge" name="cmbElemento"/>
                                <label id="cmbElemento-error" class="error" for="cmbElemento"></label>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align:text-top; width:60px;" class="titulo">Resultados de Aprendizaje</td>
                            <td class="contenido">
                                <input type="hidden" id="cmbResultado" style="width:550px;margin-bottom: 5px" class="input-xlarge" name="cmbResultado"/>
                                <label id="cmbResultado-error" class="error" for="cmbResultado"></label>
                            </td>
                        </tr>
                        
                       
                    </table>
                    
                    
                    
                     <table style="margin-left:10%; width: 76%; margin-top: 2%" border="0" class="table-condensed" cellspacing="0" cellpadding="0">
                         
                          <tr>
                              <td class="titulo" colspan="6" style="text-align: center; margin-bottom: 30px; margin-top: 30px;">Porcentajes de Evidencias</td>
                    </tr>
                    
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
                </form>
                <div id="zona_buttons">
                    <table cellspacing="5" style="width: 70%; margin-top: 20px;">
                        <tr>

                            <td><a href=""><button style="width: 115px;" type="button" id="guardar" class="btn btn-success">Guardar</button></a></td>
                            <!--<td><button style="width: 115px;" type="button" class="btn btn-success">Consultar</button></td>-->
                            <!--<td><a href=""><button style="width: 115px;" type="button" class="btn btn-success">Modificar</button></a></td>-->
                            <td><a href=""><button style="width: 115px;" type="button" id="listar" class="btn btn-success">Listar</button></a></td>

                        </tr>
                    </table>
                </div>
            </div>
          <%@include file="pie_pag.jsp" %>
        </div>
    </body>
</html>

<script type="text/javascript">
    
    $(document).on("click", "#listar",function(e){
        e.preventDefault();
        window.location.href = '<c:url value="/html/lst-encabezado-evaluacion.jsp"/>';
    });
    
    $(document).on("click", "#guardar",function(e){
        if(validarformulario())
        {
            $("#cargando").show();
            $.ajax({
                url: $("#frm-encabezado-evaluacion").attr('action'),
                dataType:'JSON',
                type: 'POST',
                data: $("#frm-encabezado-evaluacion").serialize() + '&action=guardarEncabezadoEvaluacion',
                error:function(e)
                {
                    console.log(e);
                    alert("Error en el servidor");
                    $("#cargando").hide();
                }
            }).done(function(data){
                $("#cargando").hide();
                if(data.respuesta){
                    abrirModal("modal-message",data.mensaje,"Registro guardado exitasamente.");
                    resetFields();
                }else{
                    abrirModal("modal-message",data.mensaje,"Error.");
                }
            });
        }
        return false;
        e.preventDefault();
    });
    
    function resetFields()
    {
        $("#frm-encabezado-evaluacion").trigger("reset");
        $('#cmbModulo').select2('data', null);
        $('#cmbNorma').select2('data', null);
        $('#cmbResultado').select2('data', null);
        $('#cmbEvidencia').select2('data', null);
        $('#cmbElemento').select2('data', null);
    }
    
    function validarformulario(){
        if($("#frm-encabezado-evaluacion").valid() && validatSelect2Modulo() && validatSelect2Norma() && validatSelect2Elemento() && validatSelect2Resultado() && validatSelect2Evidencia())
        {    return true;
        }else{
            return false;
        }
    }
    
    function validatSelect2Modulo(){
        if($('#cmbModulo').select2('data')!=null && $('#cmbModulo').select2('data').id!='')
        {
            return true;
        }
        $('#cmbModulo-error').html("El módulo es requerido.");
        $('#cmbModulo-error').css("display","block");
        return false;
    }
    
    function validatSelect2Norma(){
        if($('#cmbNorma').select2('data')!=null && $('#cmbNorma').select2('data').id>0)
        {
            return true;
        }
        $('#cmbNorma-error').html("La norma es requerido.");
        $('#cmbNorma-error').css("display","block");
        return false;
    }
    function validatSelect2Elemento(){
        if($('#cmbElemento').select2('data')!=null && $('#cmbElemento').select2('data').id>0)
        {
            return true;
        }
        $('#cmbElemento-error').html("El elemento es requerido.");
        $('#cmbElemento-error').css("display","block");
        return false;
    }
    function validatSelect2Resultado(){
        if($('#cmbResultado').select2('data')!=null && $('#cmbResultado').select2('data').id>0)
        {
            return true;
        }
        $('#cmbResultado-error').html("El resultado es requerido.");
        $('#cmbResultado-error').css("display","block");
        return false;
        
    }
    function validatSelect2Evidencia(){
        if($('#cmbEvidencia').select2('data')!=null && $('#cmbEvidencia').select2('data').id>0)
        {
            return true;
        }
        $('#cmbEvidencia-error').html("La evidencia es requerido.");
        $('#cmbEvidencia-error').css("display","block");
        return false;
        
    }
    $('#cmbModulo').select2({
        placeholder: 'Módulo a evaluar',
        ajax: {
            url: "../SvrEvaluacion",
            dataType: 'json',
            quietMillis: 100,
            cache: true,
            data: function (term, page) {
                $('#cmbNorma').select2('data', null);
                $('#cmbResultado').select2('data', null);
                $('#cmbEvidencia').select2('data', null);
                return {
                    term: term,
                    action: 'obtenerModulos', //search term
                    page_limit: 10 // page size
                };
            },
            results: function (data, page) {
                $('#cmbModulo-error').css("display","none");
                return {results: data};
            }

        },
        initSelection: function (element, callback) {
            return $.getJSON("../SvrEvaluacion1", null, function (data) {

                return callback(data);

            });
        }

    });

    $('#cmbNorma').select2({
        placeholder: 'Norma a evaluar',
        ajax: {
            url: "../SvrEvaluacion",
            dataType: 'json',
            quietMillis: 100,
            cache: true,
            data: function (term, page) {
                $('#cmbElemento').select2('data', null);
                return {
                    term: term,
                    modulo: ($("#cmbModulo").select2("data") != null ? $("#cmbModulo").select2("data").id : ""),
                    action: 'obtenerNorma', //search term
                    page_limit: 10 // page size
                };
            },
            results: function (data, page) {
                $('#cmbNorma-error').css("display","none");
                return {results: data};
            }

        },
        initSelection: function (element, callback) {
            return $.getJSON("../SvrEvaluacion", null, function (data) {

                return callback(data);

            });
        }

    });

    $('#cmbElemento').select2({
        placeholder: 'Elemento a evaluar',
        ajax: {
            url: "../SvrEvaluacion",
            dataType: 'json',
            quietMillis: 100,
            cache: true,
            data: function (term, page) {
                return {
                    term: term,
                    norma: ($("#cmbNorma").select2("data") != null ? $("#cmbNorma").select2("data").id : ""),
                    action: 'obtenerElemento', //search term
                    page_limit: 10 // page size
                };
            },
            results: function (data, page) {
                $('#cmbElemento-error').css("display","none");
                return {results: data};
            }

        },
        initSelection: function (element, callback) {
            return $.getJSON("../SvrEvaluacion", null, function (data) {

                return callback(data);

            });
        }

    });

    $('#cmbResultado').select2({
        placeholder: 'Resultado esperado.',
        ajax: {
            url: "../SvrEvaluacion",
            dataType: 'json',
            quietMillis: 100,
            cache: true,
            data: function (term, page) {
                return {
                    term: term,
                    modulo: ($("#cmbModulo").select2("data") != null ? $("#cmbModulo").select2("data").id : ""),
                    action: 'obtenerResultado', //search term
                    page_limit: 10 // page size
                };
            },
            results: function (data, page) {
                $('#cmbResultado-error').css('display','none');
                return {results: data};
            }

        },
        initSelection: function (element, callback) {
            return $.getJSON("../SvrEvaluacion", null, function (data) {

                return callback(data);

            });
        }

    });

    $('#cmbEvidencia').select2({
        placeholder: 'Evidencia a evaluar.',
        ajax: {
            url: "../SvrEvaluacion",
            dataType: 'json',
            quietMillis: 100,
            cache: true,
            data: function (term, page) {
                return {
                    term: term,
                    modulo: ($("#cmbModulo").select2("data") != null ? $("#cmbModulo").select2("data").id : ""),
                    action: 'obtenerEvidencia', //search term
                    page_limit: 10 // page size
                };
            },
            results: function (data, page) {
                $('#cmbEvidencia-error').css('display','none');
                return {results: data};
            }

        },
        initSelection: function (element, callback) {
            return $.getJSON("../SvrEvaluacion", null, function (data) {

                return callback(data);

            });
        }

    });

    $("#frm-encabezado-evaluacion").validate({
        rules: {
            descripcion: "required",
            cmbModulo : "required",
           
        },
        messages: {
            descripcion : {
                required: "La descripcion es requerida.",
            },
            cmbModulo : {
                required: "El modulo es requerida.",
            }
        }
    });
    
    

</script>