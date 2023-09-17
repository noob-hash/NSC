/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import static Controller.SecureAuth.createHash;
import Models.User;
import Models.User.Role;
import Services.UserService;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author DELL
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
        String action = request.getParameter("action");

        if (action != null) {
            if (action.equalsIgnoreCase("register")) {
                System.out.println("AS");
                // Handle user registration
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                String salt = SecureAuth.generateSalt();
                String hashedPassword = SecureAuth.createHash(password, salt);
                String phone = request.getParameter("phone");
                String email = request.getParameter("email");
                Role role = User.Role.valueOf(request.getParameter("role"));
                User user = new User(username, hashedPassword, salt, role, false, email, phone);
                new UserService().registerUser(user);

                if (role.equals(role.H)) {
                    RequestDispatcher dispatcher = request.getRequestDispatcher("Pages/Registration_hos.jsp");
                    dispatcher.include(request, response);
                }
                if (role.equals(role.I)) {

                    RequestDispatcher dispatcher = request.getRequestDispatcher("Pages/LoginPage.jsp");
                    dispatcher.include(request, response);
                }
                if (role.equals(role.O)) {
                    RequestDispatcher dispatcher = request.getRequestDispatcher("Pages/Registration_gov.jsp");
                    dispatcher.include(request, response);
                }

                response.sendRedirect("Pages/LoginPage.jsp");
            } else if (action.equalsIgnoreCase("login")) {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                User user = new UserService().GetUser(username);
                if (user != null) {
                    String salt = user.getSalt(); // Retrieve from the database
                    String HashedPassword = SecureAuth.createHash(password, salt); // Retrieve from the database
                    if (new UserService().Login(username, HashedPassword)) {
                        // Password is correct, create a session
                        HttpSession session = request.getSession(true);
                        session.setAttribute("username", username);
                        Cookie usernameCookie = new Cookie("username", username);
                        usernameCookie.setMaxAge(3600); // Cookie expires in 1 hour (adjust as needed)
                        response.addCookie(usernameCookie);
                        System.out.println("al");
                        // Redirect to the user's profile or another protected page
                        request.setAttribute("user", user);
                        if (user.getUserType().equals(Role.H)) {
                            RequestDispatcher dispatcher = request.getRequestDispatcher("PageController?page=profile");
                            dispatcher.include(request, response);
                        } else if (user.getUserType().equals(Role.O)) {
                            RequestDispatcher dispatcher = request.getRequestDispatcher("PageController?page=profile");
                            dispatcher.include(request, response);
                        } else if (user.getUserType().equals(Role.I)) {
                            RequestDispatcher dispatcher = request.getRequestDispatcher("PageController?page=profile");
                            dispatcher.include(request, response);
                        }
                    } else {
                        // Invalid credentials, redirect to a login error page
                        RequestDispatcher dispatcher = request.getRequestDispatcher("PageController?page=login");
                        dispatcher.include(request, response);
                    }
                } else {
                    RequestDispatcher dispatcher = request.getRequestDispatcher("PageController?page=register");
                    dispatcher.include(request, response);
                }
            } else if (action.equalsIgnoreCase("logout")) {
                // Handle user logout
                HttpSession session = request.getSession();
                if (session != null) {
                    session.invalidate();
                }

                Cookie[] cookies = request.getCookies();
                if (cookies != null) {
                    for (Cookie cookie : cookies) {
                        if (cookie.getName().equals("username")) {
                            cookie.setMaxAge(0); // Delete the cookie
                            response.addCookie(cookie);
                            break;
                        }
                    }
                }
                // Redirect to a logout success page or login page
                RequestDispatcher dispatcher = request.getRequestDispatcher("PageController?page=login");
                dispatcher.include(request, response);
            } else if (action.equalsIgnoreCase("editInfo")) {
                HttpSession hs = request.getSession();
                String username = hs.getAttribute("username").toString();
                User user = new UserService().GetUser(username);
                user.setUsername(request.getParameter("username"));
                user.setEmail(request.getParameter("email"));
                user.setPhone(request.getParameter("phone"));
                new UserService().editUser(user, user.getUserId());
                RequestDispatcher dispatcher = request.getRequestDispatcher("UserAuth?action=logout");
                dispatcher.include(request, response);

            } else if (action.equalsIgnoreCase("resetPassword")) {
                HttpSession hs = request.getSession();
                String username = hs.getAttribute("username").toString();
                User user = new UserService().GetUser(username);
                boolean isPassowrdValid = user.getPassword().equals(SecureAuth.createHash(request.getParameter("opassword"), user.getSalt()));
                boolean isNewPasswordSame = request.getParameter("npassword").equals(request.getParameter("cpassword"));
                System.out.println(user.getPassword() + "" + createHash(request.getParameter("opassword"), user.getSalt()));
                if (isPassowrdValid || isNewPasswordSame) {
                    new UserService().ResetPassword(request.getParameter("cpassword"), username);
                    RequestDispatcher dispatcher = request.getRequestDispatcher("UserAuth?action=logout");
                    dispatcher.include(request, response);
                }
            } else {
                RequestDispatcher dispatcher = request.getRequestDispatcher("PageController?page=error");
                dispatcher.include(request, response);
            }
        } else {
            // Handle unknown actions or invalid requests
            RequestDispatcher dispatcher = request.getRequestDispatcher("PageController?page=login");
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
