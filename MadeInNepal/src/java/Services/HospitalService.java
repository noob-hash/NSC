/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import DBConnection.DatabaseConn;
import Models.Hospital;
import Models.User;
import Models.User.Role;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DELL
 */
public class HospitalService {
    private Connection connection = new DatabaseConn().ConnectionEstablishment();

    public void registerHospital(Hospital hospital)  throws SQLException {
        new UserService().registerUser(hospital);
        User user = new UserService().GetUser(hospital.getUsername());
        String query = "INSERT INTO hospital (hospital_id, address, overall_rating,user_id) " +
                       "VALUES (?, ?, ?)";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, hospital.getHospitalId());
            ps.setString(2, hospital.getAddress());
            ps.setDouble(3, hospital.getOverallRating());
            ps.setInt(4, user.getUserId());

            ps.executeUpdate();
        }
    }


    public Hospital getHospital(int id) throws SQLException {
        String query = "SELECT * FROM hospital inner join user_auth on hospitals.user_id == user_auth.user_id WHERE user_auth.user_id = ?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    int userId = rs.getInt("user_id");
                    String hospitalUsername = rs.getString("username");
                    String password = rs.getString("password");
                    String salt = rs.getString("salt");
                    Role userType = Role.valueOf(rs.getString("user_type"));
                    boolean deleted = rs.getBoolean("deleted");
                    String email = rs.getString("email");
                    String phone = rs.getString("phone");
                    int hospitalId = rs.getInt("hospital_id");
                    String address = rs.getString("address");
                    double overallRating = rs.getDouble("overall_rating");

                    Hospital hospital = new Hospital(userId, hospitalUsername, password, salt, userType, deleted, email, phone, hospitalId, address, overallRating);
                    return hospital;
                }
            }
        }
        return null; // Hospital with the given username not found
    }

    public Hospital getHospital(String identifier) throws SQLException {
        String query = "SELECT * FROM hospital inner join user_auth on hospitals.user_id == user_auth.user_id WHERE username = ? or phone=?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setString(1, identifier);
            ps.setString(2, identifier);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    int userId = rs.getInt("user_id");
                    String hospitalUsername = rs.getString("username");
                    String password = rs.getString("password");
                    String salt = rs.getString("salt");
                    Role userType = Role.valueOf(rs.getString("user_type"));
                    boolean deleted = rs.getBoolean("deleted");
                    String email = rs.getString("email");
                    String phone = rs.getString("phone");
                    int hospitalId = rs.getInt("hospital_id");
                    String address = rs.getString("address");
                    double overallRating = rs.getDouble("overall_rating");

                    Hospital hospital = new Hospital(userId, hospitalUsername, password, salt, userType, deleted, email, phone, hospitalId, address, overallRating);
                    return hospital;
                }
            }
        }
        return null; // Hospital with the given username not found
    }
    
    public List<Hospital> getHospitalList() throws SQLException {
        String query = "SELECT * FROM hospital inner join user_auth on hospitals.user_id == user_auth.user_id";
        List<Hospital> hospitals = new ArrayList<>();
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    int userId = rs.getInt("user_id");
                    String hospitalUsername = rs.getString("username");
                    String password = rs.getString("password");
                    String salt = rs.getString("salt");
                    Role userType = Role.valueOf(rs.getString("user_type"));
                    boolean deleted = rs.getBoolean("deleted");
                    String email = rs.getString("email");
                    String phone = rs.getString("phone");
                    int hospitalId = rs.getInt("hospital_id");
                    String address = rs.getString("address");
                    double overallRating = rs.getDouble("overall_rating");

                    Hospital hospital = new Hospital(userId, hospitalUsername, password, salt, userType, deleted, email, phone, hospitalId, address, overallRating);
                    hospitals.add(hospital);
                }
            }
        }
        return hospitals;
    }
    
    public void makeAppointments(User user, int id){
        
    }
}
