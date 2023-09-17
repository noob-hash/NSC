/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.time.LocalDate;

/**
 *
 * @author DELL
 */
public class Appointment {

    private LocalDate date;
    private String address;
    private String service;
    private int hospital_id;
    private int user_id;
    private int appointment_id;
    private double rating;

    public Appointment(LocalDate date, String address, String service, int hospital_id, int user_id, int appointment_id) {
        this.date = date;
        this.address = address;
        this.service = service;
        this.hospital_id = hospital_id;
        this.user_id = user_id;
        this.appointment_id = appointment_id;
    }
    
    public Appointment() {
    }
 public Appointment(LocalDate date, String address, String service, int hospital_id) {
        this.date = date;
        this.address = address;
        this.service = service;
        this.hospital_id = hospital_id;
    }
    public Appointment(LocalDate date, String address, String service, int hospital_id, int user_id) {
        this.date = date;
        this.address = address;
        this.service = service;
        this.hospital_id = hospital_id;
        this.user_id = user_id;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }

    
    
    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }

    public int getHospital_id() {
        return hospital_id;
    }

    public void setHospital_id(int hospital_id) {
        this.hospital_id = hospital_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getAppointment_id() {
        return appointment_id;
    }

    public void setAppointment_id(int appointment_id) {
        this.appointment_id = appointment_id;
    }

}
