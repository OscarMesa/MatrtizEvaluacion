/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.poli.servlet;

import co.edu.poli.dao.elementos;
import co.edu.poli.dao.encabezado_evaluacion;
import co.edu.poli.dao.evidencia;
import co.edu.poli.dao.grid.Gencabezado_evaluacion;
import co.edu.poli.dao.norma;
import co.edu.poli.negocio.EvaluacionCtr;
import co.edu.poli.util.JsonBean;
import co.edu.poli.util.jqgrid.Data;
import co.edu.poli.util.jqgrid.JqGridData;
import co.edu.poli.util.jqgrid.Person;
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

    private static final long serialVersionUID = 1L;
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
                    String respuesta = "<table border=1><tr><th>Norma de Competencia</th><th>Elemento de Competencia</th></tr>";
                    boolean sw = false;
                    for(norma e: evaluacion_controlador.obtenerNormas(request.getParameter("modulo"), termino))
                    {
                        respuesta += "<tr><td><label><input type='checkbox' name='norma["+e.getCodigo_norma()+"]' value='"+e.getCodigo_norma()+"'>"+e.getDescripcion()+"</label></td>";
                        respuesta += "<td>";
                        for(elementos t : evaluacion_controlador.obtenerElementos(String.valueOf(e.getId_norma()), "")){
                            respuesta +="<input type='checkbox' name='evidencia["+e.getCodigo_norma()+"]["+t.getId_elemento()+"]' value='"+t.getDescripcion()+"'>"+t.getDescripcion()+"</label><br/>";
                        }  
                        respuesta += "</td>";
                        respuesta += "</tr>";
                        sw = true;
                    }
                    respuesta += "</table>";
                    if(!sw)
                        out.write("0");
                    else
                        out.write(respuesta);
                } else {
                    Gson gson = new Gson();
                    JsonBean j = new JsonBean("0", "Debe seleccionar un modulo.", null);
                    List<JsonBean> p = new ArrayList<>();
                    p.add(j);
                    String jsonModules = gson.toJson(p);
                    out.write(jsonModules);
                }
            } else if (action.equals("obtenerElemento")) {
                if (request.getParameter("norma") != null && request.getParameter("norma").length() > 0) {
                    String termino = "";
                    if (request.getParameter("term") != null) {
                        termino = request.getParameter("term");
                    }
                    Gson gson = new Gson();
                    String jsonModules = gson.toJson(evaluacion_controlador.obtenerElementos(request.getParameter("norma"), termino));
                    out.write(jsonModules);
                } else {
                    Gson gson = new Gson();
                    JsonBean j = new JsonBean("0", "Debe seleccionar una norma.", null);
                    List<JsonBean> p = new ArrayList<>();
                    p.add(j);
                    String jsonModules = gson.toJson(p);
                    out.write(jsonModules);
                }
            } else if (action.equals("obtenerResultado")) {
                if (request.getParameter("modulo") != null && request.getParameter("modulo").length() > 0) {
                    String termino = "";
                    if (request.getParameter("term") != null) {
                        termino = request.getParameter("term");
                    }
                    Gson gson = new Gson();
                    String jsonModules = gson.toJson(evaluacion_controlador.obtenerResultados(request.getParameter("modulo"), termino));
                    out.write(jsonModules);
                } else {
                    Gson gson = new Gson();
                    JsonBean j = new JsonBean("0", "Debe seleccionar un módulo.", null);
                    List<JsonBean> p = new ArrayList<>();
                    p.add(j);
                    String jsonModules = gson.toJson(p);
                    out.write(jsonModules);
                }
            } else if (action.equals("obtenerEvidencia")) {
                if (request.getParameter("modulo") != null && request.getParameter("modulo").length() > 0) {
                    String termino = "";
                    if (request.getParameter("term") != null) {
                        termino = request.getParameter("term");
                    }
                    Gson gson = new Gson();
                    String jsonModules = gson.toJson(evaluacion_controlador.obtenerEvidencia(request.getParameter("modulo"), termino));
                    out.write(jsonModules);
                } else {
                    Gson gson = new Gson();
                    JsonBean j = new JsonBean("0", "Debe seleccionar un módulo.", null);
                    List<JsonBean> p = new ArrayList<>();
                    p.add(j);
                    String jsonModules = gson.toJson(p);
                    out.write(jsonModules);
                }
            } else if (action.equals("guardarEncabezadoEvaluacion")) {
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
            } else if (action.equals("list-encabezado")) {
                int totalRows = Integer.parseInt(String.valueOf(request.getParameter("rows")));
                int currentPageNumber = Integer.parseInt(String.valueOf(request.getParameter("page")));;
                int limitNumber = request.getParameter("rows") != null ? Integer.parseInt(request.getParameter("rows")) : 0;
                String sidx = request.getParameter("sidx") != null && !request.getParameter("sidx").equals("") ? (request.getParameter("sidx")) : "";
                String sordSerch = request.getParameter("sord") != null ? String.valueOf(request.getParameter("sord")) : "";
                boolean search = request.getParameter("_search") != null ? Boolean.parseBoolean(request.getParameter("_search")) : false;
                String filter = request.getParameter("filters") != null && !request.getParameter("filters").equals("") ? request.getParameter("filters") : null;
                String res = evaluacion_controlador.getEncabezadosEvaluacion(currentPageNumber, limitNumber, sidx, sordSerch, search, totalRows,filter);
                response.getWriter().write(res);
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
