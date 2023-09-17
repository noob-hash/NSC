/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Models.Appointment;
import Models.User;
import Models.User.Role;
import Services.AppointmentService;
import Services.UserService;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
public class AppointmentController extends HttpServlet {

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
        String action = request.getParameter("action");
        HttpSession session = request.getSession(true);

        if (action.equalsIgnoreCase("makeAppointment")) {
            try {
                //            LocalDate date, String address, String service, int hospital_id, int user_id
                User user = new UserService().GetUser(session.getAttribute("username").toString());
                int userId = user.getUserId();
                String pattern = "yyyy-MM-dd";
                LocalDate dates = ToLocalDate(request.getParameter("date"),pattern);
                new AppointmentService().makeAppointment(dates, request.getParameter("address"), request.getParameter("service"), Integer.valueOf(request.getParameter("hospital_id")), userId);
            } catch (SQLException ex) {
                Logger.getLogger(AppointmentController.class.getName()).log(Level.SEVERE, null, ex);
            }
            RequestDispatcher dispatcher = request.getRequestDispatcher("PageController?page=home");
            dispatcher.include(request, response);
        }
        
        if (action.equalsIgnoreCase("listAppointment")) {
            List<Appointment> appointmentList =new ArrayList<>();
            try {
                User user = new UserService().GetUser(session.getAttribute("username").toString());
                appointmentList = new AppointmentService().listAppointments(user.getUserId(), user.getUserType().equals(Role.H));
            } catch (SQLException ex) {
                Logger.getLogger(AppointmentController.class.getName()).log(Level.SEVERE, null, ex);
            }
            request.setAttribute("applintments", appointmentList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/Pages/AppointmentList.jsp");
            dispatcher.include(request, response);
        }
    }
    
    public static LocalDate ToLocalDate(String dateString, String pattern) {
        try {
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern(pattern);
            return LocalDate.parse(dateString, formatter);
        } catch (Exception e) {
            e.printStackTrace(); 
            return null; 
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
