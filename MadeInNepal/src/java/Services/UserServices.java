/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Services;

import static Controllers.SecureAuth.createHash;
import DBConnection.DatabaseConn;
import Models.Users;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Subin
 */
public class UserServices {
    public Users GetUser(int id) {
        Users user = null;
        try {
            Connection con = new DatabaseConn().ConnectionEstablishment();
            String statement = "Select * from user where user_id = ? and deleted = '0'";
            PreparedStatement ps = con.prepareStatement(statement);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                user = new Users(rs.getInt("user_id"),rs.getString("username"),  Users.Role.valueOf(rs.getString("user_type")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserServices.class.getName()).log(Level.SEVERE, null, ex);
        }
        return user;
    }
    
    public Users GetUser(String identifier) {
        Users user = null;
        try {
            Connection con = new DatabaseConn().ConnectionEstablishment();
            String statement = "Select * from user where phone = ? or email = ? and deleted = '0'";
            PreparedStatement ps = con.prepareStatement(statement);
            ps.setString(1, identifier);
            ps.setString(2, identifier);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                user = new Users(rs.getInt("user_id"),rs.getString("username"),  Users.Role.valueOf(rs.getString("user_type")));
            }

        } catch (SQLException ex) {
            Logger.getLogger(UserServices.class.getName()).log(Level.SEVERE, null, ex);
        }
        return user;
    }
    
    private static String getStoredHash(String username) {
        try {
            Connection con = new DatabaseConn().ConnectionEstablishment();
            String statement = "Select salt from user_auth where username = ?";
            PreparedStatement ps = con.prepareStatement(statement);
            ps.setString(1,username);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getString("password");
            }
            return null;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public boolean LogIn(String username, String password) {
        Connection con = new DatabaseConn().ConnectionEstablishment();
        String salt = null, storedHash = null, providedHash = null;
        boolean Result = false;
        try {
            String statement = "Select salt from user_auth where username = ?";
            PreparedStatement ps = con.prepareStatement(statement);
            ps.setString(1,username);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                salt = rs.getString("salt");
                // retrieve hashed and salted password from database
                storedHash = getStoredHash(username);
                if (storedHash == null) {
                    return false;
                }
                // create hash of provided password to compare to stored hash
                providedHash = createHash(password, salt);
                // compare hashes and return result
                Result = storedHash.equals(providedHash);
            }

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return Result;
    }

    public boolean LoggedIn(HttpServletRequest request) {
        String sUser = null, sPass = null, cUser = null, cPass = null;
        HttpSession session = request.getSession(false);
        if (session != null) {
            sUser = (String) session.getAttribute("username");
            sPass = (String) session.getAttribute("password");
        }

        Cookie[] cookie = request.getCookies();

        for (Cookie c : cookie) {
            if (c.getName().equalsIgnoreCase("username")) {
                cUser = c.getValue();
            } else if (c.getName().equalsIgnoreCase("password")) {
                cPass = c.getValue();
            }
        }
        if (LogIn(cUser, cPass) || LogIn(sUser, sPass)) {
            return true;
        } else {
            return false;
        }
    }

    public void logOut(HttpServletRequest request, HttpServletResponse response) {
        try {
            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    cookie.setMaxAge(0);
                    response.addCookie(cookie);
                }
            }

            HttpSession session = request.getSession();
            session.removeAttribute("username");
            session.removeAttribute("password");
            session.removeAttribute("role");
            session.invalidate();

            RequestDispatcher dispacher = request.getRequestDispatcher("pages/LoginPage.jsp");
            dispacher.include(request, response);
        } catch (ServletException ex) {
            Logger.getLogger(UserServices.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(UserServices.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void deleteUser(int identifier) {
        try {
            String stmt = "Update user set deleted = 1 where user_id = ?";
            
            Connection con = new DatabaseConn().ConnectionEstablishment();
            PreparedStatement ps = con.prepareStatement(stmt);
            ps.setInt(1, identifier);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserServices.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
