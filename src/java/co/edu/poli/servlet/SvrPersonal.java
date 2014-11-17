package co.edu.poli.servlet;

import co.edu.poli.dao.personal;
import co.edu.poli.negocio.PersonalCtr;
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
 * @author Vanessa Agudelo Marin
 */
@WebServlet(name = "SvrPersonal", urlPatterns = {"/SvrPersonal"})
public class SvrPersonal extends HttpServlet {

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
        if (action != null) {
            if (action.equals("inicio")) {

                personal u = (personal) request.getSession().getAttribute("usuario");

//        request.getSession().setAttribute("usuario", null);
                if (u == null) {
                    try {
                        PersonalCtr p = new PersonalCtr();
                        personal user = p.Login(request.getParameter("user"), request.getParameter("password"));
                        if (user == null) {
                        // out.println("Usuario no existe");
                            //   RequestDispatcher rd = request.getRequestDispatcher("/html/Login2.html");
                            // rd.include(request, response);
                            out.println(user);
                            request.setAttribute("existe", "Este usuario no se encuentra registrado");

                            RequestDispatcher dispatcher = request.getRequestDispatcher("html/Login2.jsp");
                            dispatcher.include(request, response);
                            //response.sendRedirect("html/Login2.jsp");
                        } else {
                            out.println(user);
                            // out.println(user);
                            request.getSession(true).setAttribute("usuario", user);
                            request.getSession().setMaxInactiveInterval(36000);
                            request.getRequestDispatcher("html/frm_inicio.jsp").forward(request, response);
                        }

                    } catch (SQLException ex) {
                        Logger.getLogger(SvrPersonal.class.getName()).log(Level.SEVERE, null, ex);
                    }
                } else {

                    out.println("esta en sesion");
                    response.sendRedirect("html/frm_inicio.jsp");
                }

            } else if (action.equals("cerrar")) {
                out.println("cerrando sesion");
                request.getSession().setAttribute("usuario", null);
                request.getSession().removeAttribute("usuario");
                request.getSession().invalidate();
                response.sendRedirect("html/Login2.jsp");
            }
        } else {
//            RequestDispatcher dispatcher = request.getRequestDispatcher("html/Login2.jsp");
//            dispatcher.include(request, response);
            response.sendRedirect("html/frm_inicio.jsp");
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
    }

}
