/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import DBConnection.DatabaseConn;
import Models.Appointment;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/**
 *
 * @author DELL
 */
public class AppointmentService {

    public static Date ToDate(LocalDate localDate) {
        if (localDate == null) {
            return null;
        }

        Date sqlDate = java.sql.Date.valueOf(localDate);
        return sqlDate;
    }

    public static LocalDate ToLocalDate(Date date) {
        if (date == null) {
            return null;
        }
        LocalDate dates = date.toLocalDate();;
        return dates;
    }

    private Connection connection = new DatabaseConn().ConnectionEstablishment();

    // Make an appointment
    public void makeAppointment(LocalDate date, String address, String service, int hospital_id, int user_id) throws SQLException {
        // Insert the appointment data into the database
        String query = "INSERT INTO appointment (user_id, hospital_id, date, service,location) "
                + "VALUES (?, ?, ?, ?,?)";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, user_id);
            ps.setInt(2, hospital_id);
            ps.setDate(3, ToDate(date));
            ps.setString(4, service);
            ps.setString(5, address);

            // Execute the insert query
            ps.executeUpdate();
        }
    }

    // List appointments for a user or hospital
    public List<Appointment> listAppointments(int userId, boolean isHospital) throws SQLException {
        List<Appointment> appointments = new ArrayList<>();
        String query;

        if (isHospital) {
            // List appointments for a hospital
            query = "SELECT * FROM appointment WHERE hospital_id = ?";
        } else {
            // List appointments for a user
            query = "SELECT * FROM appointment WHERE user_id = ?";
        }
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, userId);
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int appointmentId = rs.getInt("appointment_id");
                int hospitalId = rs.getInt("hospital_id");
                LocalDate appointmentDate = ToLocalDate(rs.getDate("date"));
                String service = rs.getString("service");
                String address = rs.getString("location");
                System.out.println(appointmentDate);
                Appointment appointment = new Appointment(appointmentDate, address, service, hospitalId, userId, appointmentId);
                appointments.add(appointment);

            }
        }

        return appointments;
    }

    // Get appointment details by appointmentId
    public Appointment getAppointment(int appointmentId) throws SQLException {
        String query = "SELECT * FROM appointment WHERE appointment_id = ?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, appointmentId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    int hospitalId = rs.getInt("hospital_id");
                    LocalDate appointmentDate = ToLocalDate(rs.getDate("appointment_date"));
                    String service = rs.getString("service");
                    String address = rs.getString("location");

                    return new Appointment(appointmentDate, address, service, hospitalId);
                }
            }
        }
        return null; // Appointment not found
    }
}
