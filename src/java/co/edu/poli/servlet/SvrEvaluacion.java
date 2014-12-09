/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.poli.servlet;

import co.edu.poli.dao.encabezado_evaluacion;
import co.edu.poli.negocio.EvaluacionCtr;
import co.edu.poli.util.JsonBean;
import co.edu.poli.util.rules;
import co.edu.poli.util.searchOperation;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author omesagar
 */
public class SvrEvaluacion extends HttpServlet {

    public PrintWriter out;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        request.setAttribute("action", null);
        out = response.getWriter();
        EvaluacionCtr evaluacion_controlador = new EvaluacionCtr();

        if (action != null) {

            if (action.equals("obtenerModulos")) {
                String termino = "";
                if (request.getParameter("term") != null) {
                    termino = request.getParameter("term");
                }
                Gson gson = new Gson();
                String jsonModules = gson.toJson(evaluacion_controlador.obtenerModulos(termino));
                out.write(jsonModules);
                return;
            } else if (action.equals("obtenerNorma")) {
                if (request.getParameter("modulo") != null && request.getParameter("modulo").length() > 0) {
                    String termino = "";
                    if (request.getParameter("term") != null) {
                        termino = request.getParameter("term");
                    }
                    Gson gson = new Gson();
                    String jsonModules = gson.toJson(evaluacion_controlador.obtenerNormas(request.getParameter("modulo"),termino));
                    out.write(jsonModules);
                } else {
                    Gson gson = new Gson();
                    JsonBean j = new JsonBean("0", "Debe seleccionar un modulo.", null);
                    List<JsonBean> p = new ArrayList<>();
                    p.add(j);
                    String jsonModules = gson.toJson(p);
                    out.write(jsonModules);
                }
            }else if (action.equals("obtenerElemento")) {
                if (request.getParameter("norma") != null && request.getParameter("norma").length() > 0) {
                    String termino = "";
                    if (request.getParameter("term") != null) {
                        termino = request.getParameter("term");
                    }
                    Gson gson = new Gson();
                    String jsonModules = gson.toJson(evaluacion_controlador.obtenerElementos(request.getParameter("norma"),termino));
                    out.write(jsonModules);
                } else {
                    Gson gson = new Gson();
                    JsonBean j = new JsonBean("0", "Debe seleccionar una norma.", null);
                    List<JsonBean> p = new ArrayList<>();
                    p.add(j);
                    String jsonModules = gson.toJson(p);
                    out.write(jsonModules);
                }
            }else if (action.equals("obtenerResultado")) {
                if (request.getParameter("modulo") != null && request.getParameter("modulo").length() > 0) {
                    String termino = "";
                    if (request.getParameter("term") != null) {
                        termino = request.getParameter("term");
                    }
                    Gson gson = new Gson();
                    String jsonModules = gson.toJson(evaluacion_controlador.obtenerResultados(request.getParameter("modulo"),termino));
                    out.write(jsonModules);
                } else {
                    Gson gson = new Gson();
                    JsonBean j = new JsonBean("0", "Debe seleccionar un módulo.", null);
                    List<JsonBean> p = new ArrayList<>();
                    p.add(j);
                    String jsonModules = gson.toJson(p);
                    out.write(jsonModules);
                }
            }else if(action.equals("obtenerEvidencia")){
                if (request.getParameter("modulo") != null && request.getParameter("modulo").length() > 0) {
                    String termino = "";
                    if (request.getParameter("term") != null) {
                        termino = request.getParameter("term");
                    }
                    Gson gson = new Gson();
                    String jsonModules = gson.toJson(evaluacion_controlador.obtenerEvidencia(request.getParameter("modulo"),termino));
                    out.write(jsonModules);
                } else {
                    Gson gson = new Gson();
                    JsonBean j = new JsonBean("0", "Debe seleccionar un módulo.", null);
                    List<JsonBean> p = new ArrayList<>();
                    p.add(j);
                    String jsonModules = gson.toJson(p);
                    out.write(jsonModules);
                }
            }else if (action.equals("guardarEncabezadoEvaluacion")) {
                encabezado_evaluacion encabezado = new encabezado_evaluacion();
                encabezado.setDescripcion(request.getParameter("descripcion"));
                encabezado.setId_elemento(Integer.parseInt(request.getParameter("cmbElemento")));
                encabezado.setId_evidencia(Integer.parseInt(request.getParameter("cmbEvidencia")));
                encabezado.setId_modulo(String.valueOf(request.getParameter("cmbModulo")));
                encabezado.setId_norma(Integer.parseInt(request.getParameter("cmbNorma")));
                encabezado.setId_resultado(Integer.parseInt(request.getParameter("cmbResultado")));
                Gson respuesta = new Gson();
                String jsonModules = respuesta.toJson(evaluacion_controlador.guardarEncabezadoEvaluacion(encabezado));
                out.write(jsonModules);
            }else if(action.equals("list-encabezado")){
                encabezado_evaluacion encabezado = new encabezado_evaluacion();
                double page = Integer.parseInt(request.getParameter("page")); // get the requested page
		double limit = Integer.parseInt(request.getParameter("rows")); // get how many rows we want to have into the grid
		double sidx =  Integer.parseInt(request.getParameter("sidx")); // get index row - i.e. user click to sort
		double sord = Integer.parseInt(request.getParameter("sord")); // get the direction
                double start;
		if(request.getParameter("sidx")==null) sidx =1;

		boolean search = request.getParameter("_search")!=null?(request.getParameter("_search").equals("true")?true:false):false;
                
                Field campo = null;
                try {
                    campo = evaluacion_controlador.obj_searchOperation.getClass().getDeclaredField(String.valueOf(request.getParameter("searchOper")));
                } catch (NoSuchFieldException ex) {
                    Logger.getLogger(SvrEvaluacion.class.getName()).log(Level.SEVERE, null, ex);
                } catch (SecurityException ex) {
                    Logger.getLogger(SvrEvaluacion.class.getName()).log(Level.SEVERE, null, ex);
                }
                campo.setAccessible(true);
                try {
                    evaluacion_controlador.setWhere(search?(" WHERE "+String.format(campo.get(new rules()).toString(),String.valueOf(request.getParameter("searchField")),String.valueOf(request.getParameter("searchString")))):"");
                } catch (IllegalArgumentException ex) {
                    Logger.getLogger(SvrEvaluacion.class.getName()).log(Level.SEVERE, null, ex);
                } catch (IllegalAccessException ex) {
                    Logger.getLogger(SvrEvaluacion.class.getName()).log(Level.SEVERE, null, ex);
                }
                
                HashMap modulo = new HashMap<>();
                modulo.put("tbl", "modulos");
                modulo.put("alias", "m");
                modulo.put("campo", "Descripcion");
		evaluacion_controlador.camposForaneos.put("modulo", modulo);
                
                HashMap norma = new HashMap<>();
                norma.put("tbl", "norma");
                norma.put("alias", "n");
                norma.put("campo", "codigo_norma");
                evaluacion_controlador.camposForaneos.put("norma", norma);
                
                HashMap resultado = new HashMap<>();
                resultado.put("tbl", "resultado_aprendizaje");
                resultado.put("alias", "ra");
                resultado.put("campo", "codigo_resultado");
                evaluacion_controlador.camposForaneos.put("resultado", resultado);
                
                HashMap evidencia = new HashMap<>();
                evidencia.put("tbl", "evidencia");
                evidencia.put("alias", "e");
                evidencia.put("campo", "descripcion");
                evaluacion_controlador.camposForaneos.put("evidencia", evidencia);
                
                HashMap codigo_elemento = new HashMap<>();
                codigo_elemento.put("tbl", "elementos");
                codigo_elemento.put("alias", "el");
                codigo_elemento.put("campo", "codigo_elemento");
                evaluacion_controlador.camposForaneos.put("codigo_elemento", codigo_elemento);
               
                HashMap descripcion_encab = new HashMap<>();
                descripcion_encab.put("tbl", "encabezado_evaluacion");
                descripcion_encab.put("alias", "ee");
                descripcion_encab.put("campo", "descripcion");
                evaluacion_controlador.camposForaneos.put("descripcion_encab", descripcion_encab);
                
                HashMap id_encabezado = new HashMap<>();
                id_encabezado.put("tbl", "encabezado_evaluacion");
                id_encabezado.put("alias", "ee");
                id_encabezado.put("campo", "id_encabezado");
                evaluacion_controlador.camposForaneos.put("id_encabezado", id_encabezado);
                
                HashMap resultado1 = new HashMap<>();
                resultado1.put("tbl", "resultado_aprendizaje");
                resultado1.put("alias", "ra");
                resultado1.put("campo", "codigo_resultado");
                evaluacion_controlador.camposForaneos.put("resultado", resultado1);
               
		if (request.getParameter("_search")!=null && request.getParameter("_search").equals("true") && request.getParameter("filters")!=null && request.getParameter("filters").length()>0) {
			evaluacion_controlador.setWhere(" WHERE ");
                        Gson json = new Gson();
			searchOperation filters = json.fromJson(request.getParameter("filters").toString(),searchOperation.class);
			String comp = filters.getGroupOp();
                        rules rules = json.fromJson(filters.getRules(),rules.class);
			for (Field campoo : rules.getClass().getDeclaredFields()) {
                            System.out.println(campoo);
                            //$field->field = isset($this->objQuerys->camposForaneos[$field->field])?($this->objQuerys->camposForaneos[$field->field]['alias'].".".$field->field):$field->field;
                            //$this->objQuerys->where .= sprintf($this->objQuerys->array_searchOperation[$field->op],$field->field,$field->data)." ".$comp." ";
			}
			//if(strlen($this->objQuerys->where) > 0)$this->objQuerys->where = substr($this->objQuerys->where,0,-4);
		}

		int count = evaluacion_controlador.CountEncabezadoEvaluacion();
                double total_pages;
		if( count >0 ) {
			total_pages = Math.ceil(count/limit);
		} else { 
			total_pages = 0;
		}
		if (page > total_pages) page=total_pages;
		start = total_pages==0?0:(limit*page - limit); // do not put $limit*($page - 1)

//		responce = $this->objQuerys->GetEnviosByContenedor($sidx, $sord, $start , $limit, $total_pages);
//
//		    
//		echo json_encode($responce);
            }
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
