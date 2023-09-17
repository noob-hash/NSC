/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author DELL
 */
public class Hospital extends User {
    private int hospitalId;
    private String address;
    private double overallRating;

    
    // Constructor
    
    
    public Hospital() {
    }

    public Hospital(int userId, String username, String password, String salt, Role userType, boolean deleted, String email, String phone, int hospitalId, String address, double overallRating) {
        super(userId, username, password, salt, userType, deleted, email, phone);
        this.hospitalId = hospitalId;
        this.address = address;
        this.overallRating = overallRating;
    }
    
    public Hospital(String username, String password, String salt, Role userType,
                    boolean deleted, String email, String phone, int hospitalId, String address, double overallRating) {
        super(username, password, salt, userType, deleted, email, phone);
        this.hospitalId = hospitalId;
        this.address = address;
        this.overallRating = overallRating;
    }

    // Getters and setters for additional hospital-specific fields
    public int getHospitalId() {
        return hospitalId;
    }

    public void setHospitalId(int hospitalId) {
        this.hospitalId = hospitalId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public double getOverallRating() {
        return overallRating;
    }

    public void setOverallRating(double overallRating) {
        this.overallRating = overallRating;
    }
}
