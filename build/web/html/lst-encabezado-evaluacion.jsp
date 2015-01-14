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
            <table id="grid"></table>
            <hr>
            <div>
                <div>
                    <div style="">
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

//             jQuery("#projectTable").jqGrid({
//                 url: "<c:url value="/SvrEvaluacion?action=list-encabezado&type=BS21 7RH"/>",
//                 datatype: "json",
//                 jsonReader: {repeatitems: false, id: "ref"},
//                 colNames:['First Name','Last Name', 'Address'],
//                 colModel:[
//                     {name:'firstName',index:'firstName', width:100},
//                     {name:'lastName',index:'lastName', width:100},
//                     {name:'address',index:'address', width:500}
//                 ],
//                 rowNum:20,
//                 rowList:[20,60,100],
//                 height:460,
//                 pager: "#pagingDiv",
//                 viewrecords: true,
//                 caption: "Json Example"
//             });

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
            colNames: ['Id', 'Módulo', 'Norma', 'Elemento', 'Resultado', 'Evidencia', 'Descripción'],
            colModel: [
                {name: 'id_encabezado', index: 'id_encabezado', width: 50, hidden: false},
                {name: 'modulo', index: 'modulo', width: 90},
                {name: 'norma', index: 'norma', width: 120, align: "right"},
                {name: 'resultado', index: 'resultado', width: 110},
                {name: 'evidencia', index: 'evidencia', width: 100, align: "left"},
                {name: 'elemento', index: 'elemento', width: 100, align: "left"},
                {name: 'descripcion_encab', index: 'descripcion_encab', width: 220}
            ],
            rowNum: 5, // Numero de registros por página
            rowList: [5, 10, 15, 20], // Lista del combo con números de páginas
            rownumbers: true, // Si se muestra o no el numero del registro
            rownumWidth: '30',
            pager: '#pagingDiv',
            sortname: 'id_encabezado	',
            viewrecords: true,
            sortorder: "DESC",
            firstsortorder: 'DESC',
            caption: "Encabezados de las evaluaciones",
            autosearch: true,
            searchOnEnter: true,
            searchOperators: true,
            toolbar: [true, "top"],
            height: 'auto',
            width: 'auto',
            gridview: true,
        }).navGrid("#pagingDiv", {view: false, del: false, add: false, edit: false});

        $('#t_projectTable')
                .append($("<div id=\"btn-serch\"><label for=\"globalSearchText\">Buscar:&nbsp;" +
                        "<input id=\"globalSearchText\" type=\"text\"></input>&nbsp;" +
                        "<button id=\"globalSearchInput\" type=\"button\">Buscar</button></label></div>"));

        $("#globalSearchText").keypress(function (e) {
            var key = e.charCode || e.keyCode || 0;
            if (key === $.ui.keyCode.ENTER) { // 13
                $("#globalSearchInput").click();
            }
        });

        $("#globalSearchInput").button({
            icons: {primary: "ui-icon-search"},
            text: false
        }).click(reloadGrid);

    });

    function reloadGrid(all) {

        var rules = [], i, cm, postData = jQuery("#projectTable").jqGrid("getGridParam", "postData"),
                colModel = jQuery("#projectTable").jqGrid("getGridParam", "colModel"),
                l = colModel.length;
        if (all == true) {
            searchText = "";
        }
        else {
            searchText = $("#globalSearchText").val();
        }
        for (i = 0; i < l; i++) {
            cm = colModel[i];
            if (cm.search !== false && (cm.stype === undefined || cm.stype === "text")) {
                rules.push({
                    field: cm.name,
                    op: "cn",
                    data: searchText
                });
            }
        }
        postData.filters = JSON.stringify({
            groupOp: "OR",
            rules: rules
        });
        jQuery("#projectTable").jqGrid("setGridParam", {search: true});
        jQuery("#projectTable").trigger("reloadGrid", [{page: 1, current: true}]);
        return false;
    }

</script>

<style type="text/css">
    .ui-pg-input{
        display: inline-block;
    }

    #globalSearchText, #globalSearchText{padding: 8px 0px 2px 5px;}
    .ui-jqgrid .ui-userdata { height: auto; }
    .ui-jqgrid .ui-userdata div { margin: .1em .5em .2em;}
    .ui-jqgrid .ui-userdata div>* { vertical-align: middle; }

    #btn-serch label{display: inline-block;margin: 2px;}
    #btn-serch input{display: inline-block;margin: 0px;}
    #globalSearch, #globalSearchInput{padding: 3px 0px 0px;}

    .ui-jqgrid .ui-userdata div {
        margin: .1em .5em .2em;
    }
</style>