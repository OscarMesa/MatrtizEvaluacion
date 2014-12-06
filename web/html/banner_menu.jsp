<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.io.PrintWriter"%>
        <table class="zona1" align="center" border="0" width="950" cellpadding="0" cellspacing="0">
            <tbody>
                <tr>
                    <td valign="top">
                        <div align="center">
                            <a href="/index.php"><img src="<c:url value="/images/banner_2014Mayo.png" />" alt="Banner" border="0" height="245" width="950"></a>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>


        <div style="margin-left: 14.5%;">
            <ul id="nav" style="height: 60px;">
                <li><a href="frm_inicio.html"><img src="<c:url value="/images/home.png" />"/> Inicio</a></li>
                <li><a href="#"><span><img style="width: 27px" src="<c:url value="/images/norm.ico"/>" /> Normas</span></a>
                    <div class="subs">
                        <div class="col">
                            <ul>
                                <li><a href="<c:url value="frm_norma_1.jsp" />"><img src="<c:url value="/images/bub.png"/>" />Normas de Competencia</a></li>
                                <li><a href="frm_asignar_norma_modulo.html"><img src="<c:url value="/images/bub.png"/>" /> Asignar Normas a Modulos</a></li>
                                <li><a href="frm_elementos.html"><img src="<c:url value="/images/bub.png"/>" /> Elementos de Competencia</a></li>
                                <li><a href="frm_asignar_elemento_norma.html"><img src="<c:url value="/images/bub.png"/>" /> Asignar Elementos a Normas</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li><a href=""><span><img src="<c:url value="/images/top5.png"/>" /> Resultados</span></a>
                    <div class="subs">
                        <div class="col">
                            <ul>
                                <li><a href="frm_resultados_aprendizaje.html"><img src="<c:url value="/images/bub.png"/>" /> Resultados de Apredizaje</a></li>
                                <li><a href="frm_asignar_resultado_modulo.html"><img src="<c:url value="/images/bub.png"/>" /> Asignar Resultados a Materias</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li><a href="#"><span><img src="<c:url value="/images/top3.png"/>" /> Criterios</span></a>
                    <div class="subs">
                        <div class="col">
                            <ul>
                                <li><a href="frm_criterios.html"><img src="<c:url value="/images/bub.png"/>" />Criterios y Rubricas de Evaluación</a></li>
                                <li><a href="frm_asignar_criterio_modulo.html"><img src="<c:url value="/images/bub.png"/>" />Asignar Criterio a Modulos</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li><a href="frm_evaluacion.html"><img src="<c:url value="/images/top4.png"/>" /> Evaluación</a>
                    <div class="subs">
                        <div class="col">
                            <ul>
                                <li><a href="<c:url value="frm_encabezado_evaluacion.jsp"/>"><img src="<c:url value="/images/bub.png"/>" />Encabezado evaluación</a></li>
                                <li><a href="<c:url value="frm_evidencias_modulo_porc.html"/>"><img src="<c:url value="/images/bub.png"/>" />Porcentajes de Evidencias para Modulos</a></li>
                                <li><a href="<c:url value="frm_item_evaluacion.jsp"/>"><img src="<c:url value="/images/bub.png"/>" />Seleccionar Ítems de Evaluación</a></li>
                                <li><a href="<c:url value="frm_evaluacion.jsp"/>"><img src="<c:url value="/images/bub.png"/>" />Evaluar Estudiantes</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li><a href="#"><img style="width: 27px" src="<c:url value="/images/reports.ico"/>" /> Reportes</a></li>
                <li><a href="#"><img style="width: 27px" src="<c:url value="/images/help3.ico" />" /> Ayuda</a>
                    <div class="subs">
                        <div class="col">
                            <ul>
                                <li><a href="#"><img src="<c:url value="/images/bub.png" />" /> Manual de Usuario</a></li>
                                <li><a href="#"><img style="width: 22px" src="<c:url value="/images/help4.ico" />" /> Acerca de</a></li>
                                
                                <form id="cerrar_sesion" action="<c:url value="/SvrPersonal"/>" method="post">
                                    <li><a onclick="$('#cerrar_sesion').submit()"><img style="width: 20px" src="<c:url value="/images/close.png"/>" name="salir" /> Cerrar Sesión</a></li>
                                    <input type="hidden" value="cerrar" name="action"/>
                                </form>
                            </ul>
                        </div>
                    </div>
                </li>
            </ul>
        </div>