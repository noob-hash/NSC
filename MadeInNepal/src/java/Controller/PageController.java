/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Models.User;
import Services.UserService;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
public class PageController extends HttpServlet {

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
        doPost(request, response);
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
        String page = request.getParameter("page");
        if (page.equalsIgnoreCase("login")) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("Pages/LoginPage.jsp");
            dispatcher.include(request, response);
        } else if (page.equalsIgnoreCase("home")) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("Pages/Home.jsp");
            dispatcher.include(request, response);
        } else if (page.equalsIgnoreCase("register")) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("Pages/Registration.jsp");
            dispatcher.include(request, response);
        } else if (page.equalsIgnoreCase("hospitals")) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("Pages/Hospitaldetails.jsp");
            dispatcher.include(request, response);
        } else if (page.equalsIgnoreCase("profile")) {
            HttpSession session = request.getSession(true);

            String username = (String) session.getAttribute("username");
            User user = new UserService().GetUser(username);
            request.setAttribute("user", user);
            RequestDispatcher dispatcher = request.getRequestDispatcher("Pages/Profile.jsp");
            dispatcher.include(request, response);
        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("Pages/404page.jsp");
            dispatcher.include(request, response);
        }

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
