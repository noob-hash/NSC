/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import DBConnection.DatabaseConn;
import Models.Equipments;
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
public class EquipmentService {
    
        private Connection connection = new DatabaseConn().ConnectionEstablishment();

    public List<Equipments> listEquioment() throws SQLException {
        List<Equipments> equipments = new ArrayList<>();
        String query = "SELECT * FROM equipment ";

        try (PreparedStatement ps = connection.prepareStatement(query)) {
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    int equipmentId = rs.getInt("equipment_id");
                    int hospitalId = rs.getInt("hospital_id");
                    String name = rs.getString("name");
                    double rating = rs.getDouble("rating");

                    Equipments equipment = new Equipments(equipmentId,name,hospitalId,rating);
                    equipments.add(equipment);
                }
            }
        }

        return equipments;
    }
    
    public Equipments GetEquioment(int equipmentId) throws SQLException {
        Equipments equipment = null;
        String query = "SELECT * FROM equipment WHERE equipment_id = ?";

        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, equipmentId);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    int equipmentid = rs.getInt("equipment_id");
                    int hospitalId = rs.getInt("hospital_id");
                    String name = rs.getString("name");
                    double rating = rs.getDouble("rating");

                    equipment = new Equipments(equipmentid,name,hospitalId,rating);
                }
            }
        }
        return equipment;

    }
    
    public void makeReview(int equipmentId, double rating) throws SQLException{
        String query = "Insert into equipment set rating=? WHERE equipment_id = ?";

        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setDouble(1, rating);
            ps.setInt(2, equipmentId);
            ps.executeUpdate();
            
        }
    }

}
