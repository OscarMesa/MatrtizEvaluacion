/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package co.edu.poli.servlet;

import co.edu.poli.dao.norma;
import co.edu.poli.negocio.NormaCtr;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Vanessa Agudelo Marín
 */
@WebServlet(name = "SvrNormas", urlPatterns = {"/SvrNormas"})
public class SvrNormas extends HttpServlet {

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
        NormaCtr norma_controlador = new NormaCtr();
        
        if(action != null){
            
            if(action.equals("guardar")){
                norma norm = new norma();
                norm.setCodigo_norma(String.valueOf(request.getParameter("norma")));
                norm.setDescripcion(String.valueOf(request.getParameter("contenido_norma")));
                try {
                    boolean respuesta = norma_controlador.GuardarNorma(norm);
                    if(respuesta==true){
                        String mensaje = "La norma fue registrada con exitosamente";
                        request.setAttribute("exito", mensaje);
                        request.getRequestDispatcher("html/frm_norma_1.jsp").include(request, response);
                    }else{
                        String mensaje = "La norma no fue registrada";
                        request.setAttribute("error", mensaje);
                        request.getRequestDispatcher("html/frm_norma_1.jsp").include(request, response);
                    }
                } catch (SQLException ex) {
                    String excepcion = ex.getMessage();
                    request.setAttribute("error", excepcion);
                    request.getRequestDispatcher("html/frm_norma_1.jsp").include(request, response);
                }
            }else if(action.equals("modificar")){
                try {
                    // renderizamos a la vista y enviamos la norma que vamos a modificar. 
                    request.setAttribute("norma_actualizar", norma_controlador.MostrarNormaActualizar(Integer.parseInt(request.getParameter("id"))));                    
                    RequestDispatcher dispacher = getServletContext().getNamedDispatcher("html/frm_norma_1.jsp");
                    dispacher.include(request, response);
                } catch (SQLException ex) {
                    request.setAttribute("error", "Lo sentimos, tenemos problemas temporalmente en el servidor.");
                    RequestDispatcher dispacher = getServletContext().getNamedDispatcher("html/frm_norma_1.jsp");
                    dispacher.include(request, response);
                }catch(Exception e){
                    System.out.println(e.getMessage());
                }

            }else if(action.equals("desactivar")){
                try {
                    norma norm = new norma();
                    norm.setId_norma(Integer.parseInt(request.getParameter("id_norma")));
                    if(norma_controlador.desactivar(norm)){
                       request.setAttribute("exito", "El registro fue inactivado correctamente.");
                       request.getRequestDispatcher("html/frm_norma_1.jsp").include(request, response);
                    }else{
                        
                    }
                } catch (SQLException ex) {
                    request.setAttribute("error", ex.getMessage());
                    request.getRequestDispatcher("html/frm_norma_1.jsp").include(request, response);
                }
            }else if(action.equals("listar")){
                try {
                    request.setAttribute("listado", norma_controlador.Listar());
                    request.getRequestDispatcher("html/frm_listarNormas.jsp").include(request, response);
                } catch (SQLException ex) {
                    request.setAttribute("error", "Lo sentimos, tenemos problemas temporalmente en el servidor.");
                    request.getRequestDispatcher("html/frm_listarNormas.jsp").include(request, response);
                }
            }else if(action.equals("actualizar"))
            {
                norma norm = new norma();
                norm.setId_norma(Integer.parseInt(request.getParameter("id_norma")));
                norm.setCodigo_norma(String.valueOf(request.getParameter("norma")));
                norm.setDescripcion(String.valueOf(request.getParameter("contenido_norma")));
                try{
                    norma_controlador.Modificar(norm);
                    String mensaje = "La norma fue actualizada  exitosamente";
                    request.setAttribute("exito", mensaje);
                    request.setAttribute("norma_actualizar",norm);
                    request.getRequestDispatcher("html/frm_norma_1.jsp").include(request, response);
                }catch(SQLException ex)
                {
                    String excepcion = ex.getMessage();
                    request.setAttribute("error", excepcion);
                    request.getRequestDispatcher("html/frm_norma_1.jsp").include(request, response);
                }
            }else if(action.equals("consultar"))
            {
                try {
                    norma norm = new norma();
                    norm.setCodigo_norma(request.getParameter("id_norma"));                    
                    request.setAttribute("norma_actualizar", norma_controlador.ConsultarNorma(norm));
                    request.getRequestDispatcher("html/frm_norma_1.jsp").include(request, response);
                } catch (SQLException ex) {
                    String excepcion = ex.getMessage();
                    request.setAttribute("error", excepcion);
                    request.getRequestDispatcher("html/frm_norma_1.jsp").include(request, response);
                }
            }
        
        }else{
            response.sendRedirect("html/frm_norma_1.jsp");
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
