<html>
    <head>

        <meta charset="utf-8" />

        <title>Asignar Criterios de Evaluación</title>
        <%@include file="archivos_head.jsp" %>
    </head>
    <body>
        
    <%@include file="banner_menu.jsp" %>
        <div style="margin-left: 15%; margin-bottom:4%; background-color: #ffffff; margin-right: 15%; padding: 2%">
            
            <p class="titulo2">Asignación de criterios a modulo</p>
            <div class="table-responsive">
                <table style="margin-left:10%" border="0" class="table-condensed" cellspacing="0" cellpadding="2" width="100%">
                    <tr>
                        <td><span style="color: red; font-size: 20px;">*</span></td>
                        <td class="titulo" colspan="2" width="20%">Código del criterio</td>
                        <td class="contenido" colspan="5">
                             <select class="select" style="width:70%; height: 30px;">
                                <option value="0">Seleccione el Criterio de Evaluación</option>
                                <option value="20">_____________________________</option>
                                <option value="1">CTO-001</option>
                                <option value="2">CTO-002</option>
                                <option value="3">CTO-003</option>
                                <option value="4">CTO-004</option>
                                <option value="5">CTO-005</option>
                                <option value="6">CTO-006</option>
                                <option value="7">CTO-007</option>
                                <option value="8">CTO-008</option>
                                <option value="9">CTO-009</option>
                                <option value="10">CTO-010</option>
                            </select></td>
                    </tr>
                   
                    <tr>
                           <td><span class="campoObligatorio">*</span></td>
                        <td class="titulo" colspan="2">Modulo</td>
                        <td colspan="5">
                           
                         <select class="select" style="width:70%; height: 30px;">
                                <option value="0">Seleccione el Modulo</option>
                                <option value="20">_____________________________</option>
                                <option value="1">Desarrollo del Pensamiento Analítico y Sistemico 1</option>
                                <option value="2">Desarrollo del Pensamiento Analítico y Sistemico 2</option>
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
                    
            <%@include file="pie_pag.jsp" %>
            </div>
        </div>
    </body>
</html>

