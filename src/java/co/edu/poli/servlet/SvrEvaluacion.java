/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.poli.servlet;

import co.edu.poli.negocio.EvaluacionCtr;
import co.edu.poli.util.JsonBean;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
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
        
        if(action != null){
            
            if(action.equals("obtenerModulos")){
                String termino = "";  
                if(request.getParameter("term") != null){
                    termino = request.getParameter("term");
                }
                Gson gson = new Gson();
                String jsonModules = gson.toJson(evaluacion_controlador.obtenerModulos(termino));
                out.write(jsonModules);
                return;
            }else if(action.equals("obtenerNorma")){
                if(request.getParameter("modulo") != null && !request.getParameter("modulo").endsWith("")){
                String termino = "";  
                if(request.getParameter("term") != null){
                    termino = request.getParameter("term");
                }
                Gson gson = new Gson();
                String jsonModules = gson.toJson(evaluacion_controlador.obtenerNormas(termino));
                out.write(jsonModules);
                }else{
                    Gson gson = new Gson();
                    JsonBean j = new JsonBean("0", "Debe seleccionar un modulo.", null);
                    List<JsonBean> p =new ArrayList<>();
                    p.add(j);
                    String jsonModules = gson.toJson(p);
                    out.write(jsonModules);
                }
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
