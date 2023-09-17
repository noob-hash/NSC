/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import Controller.SecureAuth;
import DBConnection.DatabaseConn;
import Models.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DELL
 */
public class UserService {

    public void registerUser(User user) {
        try {
            String stmt = "Insert into user_auth(username,password,salt,role,deleted,email,phone) values (?,?,?,?,?,?,?);";

            Connection con = new DatabaseConn().ConnectionEstablishment();
            PreparedStatement ps = con.prepareStatement(stmt);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getSalt());
            ps.setString(4, user.getUserType().toString());
            ps.setBoolean(5, user.isDeleted());
            ps.setString(6, user.getEmail());
            ps.setString(7, user.getPhone());
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserService.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public User GetUser(int id) {
        User user = null;
        try {
            Connection con = new DatabaseConn().ConnectionEstablishment();
            String statement = "Select * from user_auth where user_id = ? and deleted = '0'";
            PreparedStatement ps = con.prepareStatement(statement);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
//                new User(username, password, salt, role, false, email, phone)
                user = new User(rs.getInt("user_id"), rs.getString("username"), User.Role.valueOf(rs.getString("role")), rs.getBoolean("deleted"), rs.getString("email"), rs.getString("phone"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return user;
    }

    public User GetUser(String identifier) {
        User user = null;
        try {
            Connection con = new DatabaseConn().ConnectionEstablishment();
            String statement = "Select * from user_auth where (phone = ? or email = ? or username=?) and deleted = '0'";
            PreparedStatement ps = con.prepareStatement(statement);
            ps.setString(1, identifier);
            ps.setString(2, identifier);
            ps.setString(3, identifier);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                user = new User(rs.getInt("user_id"), rs.getString("username"), rs.getString("password"), rs.getString("salt"), User.Role.valueOf(rs.getString("role")), rs.getBoolean("deleted"), rs.getString("email"), rs.getString("phone"));
            }

        } catch (SQLException ex) {
            Logger.getLogger(UserService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return user;
    }

    public boolean Login(String username, String password) {
        User user = null;
        try {
            Connection con = new DatabaseConn().ConnectionEstablishment();
            String statement = "Select * from user_auth where (username = ? or email = ? or phone =?) and (user_auth.password=? and deleted = '0')";
            PreparedStatement ps = con.prepareStatement(statement);
            ps.setString(1, username);
            ps.setString(2, username);
            ps.setString(3, username);
            ps.setString(4, password);
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }

        } catch (SQLException ex) {
            Logger.getLogger(UserService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    private static String getStoredHash(String username) {
        try {
            Connection con = new DatabaseConn().ConnectionEstablishment();
            String statement = "Select salt from user_auth where username = ?";
            PreparedStatement ps = con.prepareStatement(statement);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getString("password");
            }
            return null;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public void ResetPassword(String newPassword, String username) {
        try {

            String stmt = "Update user_auth set user_auth.password = ? where username = ? or email=?";
            User user = new UserService().GetUser(username);
            String hashedPassword = SecureAuth.createHash(newPassword, user.getSalt());

            PreparedStatement ps = new DatabaseConn().Statement(stmt);
            ps.setString(1, hashedPassword);
            ps.setString(2, username);
            ps.setString(3, username);

            ps.executeUpdate();
            ps.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public void editUser(User user, int id) {
        String updateQuery = "UPDATE user_auth SET username=?, email=?, phone=? WHERE user_id=?";
        Connection connection = new DatabaseConn().ConnectionEstablishment();

        try (PreparedStatement ps = connection.prepareStatement(updateQuery)) {
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPhone());
            ps.setInt(4, id);

            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
