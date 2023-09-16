/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import Models.Users;
import Services.EmailSender;
import Services.UserServices;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Subin
 */
public class UserAuth extends HttpServlet {

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
        if (page.equalsIgnoreCase("sendOTP")) {
            PrintWriter out = response.getWriter();
            Users user = new UserServices().GetUser(request.getParameter("email"));
            String OTP = (request.getParameter("1") != null) ? request.getParameter("1") + request.getParameter("2") + request.getParameter("3")
                    + request.getParameter("4") + request.getParameter("5") + request.getParameter("6") : "0";

            if (Integer.parseInt(OTP) == 256734) {
                RequestDispatcher dispacher = request.getRequestDispatcher("Pages/ResetPassword.html");
                dispacher.forward(request, response);

            } else {
                if (user != null) {

                    HttpSession s = request.getSession(true);
                    s.setAttribute("Email", user.getPhone());
                    new EmailSender().EmailSpecifier(user.getEmail(), "One Time Password", "Your OTP is: 256734");
                    RequestDispatcher dispacher = request.getRequestDispatcher("Pages/enterOTP.html");
                    dispacher.forward(request, response);
                } else {
                    out.println("<div class=\"alert alert-danger text-center\" id=\"loginalertmessage\" role=\"alert\">There is no user with your email.</div>");
                    RequestDispatcher dispacher = request.getRequestDispatcher("Pages/Registration.jsp");
                    dispacher.include(request, response);
                }
            }

        }
        if (page.equalsIgnoreCase("Register")) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("Pages/Registration.jsp");
            dispatcher.include(request, response);
        }

        if (page.equalsIgnoreCase("RegisterUser")) {
            String salt = new SecureAuth().generateSalt();
            Users user = new Users(request.getParameter("username"),new SecureAuth().createHash(request.getParameter("password"), salt),salt,Users.Role.valueOf(request.getParameter("role")),false);
            new UserServices().addUser(user);
            RequestDispatcher dispatcher = request.getRequestDispatcher("Pages/Registration.jsp");
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
