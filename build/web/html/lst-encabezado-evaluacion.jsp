<%@page import="co.edu.poli.dao.estado"%>
<%@page import="co.edu.poli.negocio.EstadosCtr"%>
<%@page import="co.edu.poli.dao.norma"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
    <head>
        <title>Encabezados de una evaluación</title>
        <link rel="stylesheet" type="text/css" media="screen" href="<c:url value="/libs/jqgrid/css/ui.jqgrid.css"/>" /> 

        <%@include file="archivos_head.jsp" %> 

        <!-- Jqgrid -->
        <script src="<c:url value="/libs/jqgrid/js/i18n/grid.locale-es.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/libs/jqgrid/js/jquery.jqGrid.min.js"/>" type="text/javascript"></script>
    </head>
    <body>
        <header>
            <%@include file="banner_menu.jsp" %>
        </header>
        <div style="margin-left: 15%; margin-bottom:4%; background-color: #ffffff; margin-right: 15%; padding: 2%">

            <div style="margin-left: 5%;margin-top: 13px;margin-top: 54px;" class="table-responsive">
                <table id="list2"></table>
                <div id="pager2"></div>
            </div>

            <table id="grid"></table>
            <hr>
            <div>
                <div class="borderBottom" style="height:5em;">
                    <div class="floatLeftDiv borderRight">
                        <div class="padding">
                            <label>Postcode:</label>
                            <select id="pcSelect">
                                <option>BS21 7RH</option>
                                <option>BS1 8QT</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div>
                    <div style="float: left;">
                        <table id="projectTable"></table>
                        <div id="pagingDiv"></div>
                    </div>
                </div>
            </div>



            <%@include file="pie_pag.jsp" %>
        </div>
    </body>
</html>

<script type="text/javascript">
   jQuery(document).ready(function () {
  
             jQuery("#projectTable").jqGrid({
                 url: "<c:url value="/SvrEvaluacion?action=list-encabezado&type=BS21 7RH"/>",
                 datatype: "json",
                 jsonReader: {repeatitems: false, id: "ref"},
                 colNames:['First Name','Last Name', 'Address'],
                 colModel:[
                     {name:'firstName',index:'firstName', width:100},
                     {name:'lastName',index:'lastName', width:100},
                     {name:'address',index:'address', width:500}
                 ],
                 rowNum:20,
                 rowList:[20,60,100],
                 height:460,
                 pager: "#pagingDiv",
                 viewrecords: true,
                 caption: "Json Example"
             });
              
//             $("#pcSelect").change(function(){
//                 var postcode = $("#pcSelect").val();
//                 jQuery("#projectTable").jqGrid(
//                         "setGridParam",{
//                             url:"LoadJsonDataServlet?type="+ postcode,
//                             page:1})
//                         .trigger("reloadGrid");
//             });
       

            jQuery("#projectTable").jqGrid({
             url: "<c:url value="/SvrEvaluacion?action=list-encabezado"/>",
             //	postData: myparams,
             datatype: "json",
             cache: true,
             colNames:['Id', 'Módulo','Norma','Elemento','Resultado',  'Evidencia','Descripción'],
             colModel:[
             {name:'id_encabezado',index:'id_encabezado', width:50,  hidden: false},
             {name:'modulo',index:'modulo', width:90},
             {name:'norma',index:'norma', width:120, align:"right"},
             {name:'resultado',index:'resultado', width:110},	
             {name:'evidencia',index:'evidencia', width:100,align:"left"},		
             {name:'elemento',index:'elemento', width:100,align:"left"},		
             {name:'descripcion_encab',index:'descripcion_encab', width:220}
             ],
             rowNum						: 10, 	// Numero de registros por página
             rowList						: [10,20,30,50], 					// Lista del combo con números de páginas
             rownumbers					: true, 					// Si se muestra o no el numero del registro
             rownumWidth					: '30', 	
             pager: '#pagingDiv',
             sortname: 'id_encabezado	',
             viewrecords: true,
             sortorder: "DESC", 
             firstsortorder: 'DESC',
             caption:"Encabezados de las evaluaciones",
             autosearch: true,
             searchOnEnter: true,
             searchOperators: true,
             toolbar: [true, "top"],
             height:'auto',
             width: 'auto',    	
             gridview: true,
             });
      });
</script>