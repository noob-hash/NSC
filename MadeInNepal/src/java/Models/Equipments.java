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
public class Equipments {
    private int equipment_id;
    private String name;
    private int hospital_id;
    private double rating;

    public Equipments() {
    }

    public Equipments(int equipment_id, String name, int hospital_id, double rating) {
        this.equipment_id = equipment_id;
        this.name = name;
        this.hospital_id = hospital_id;
        this.rating = rating;
    }

    public Equipments(String name, int hospital_id, double rating) {
        this.name = name;
        this.hospital_id = hospital_id;
        this.rating = rating;
    }

    public int getEquipment_id() {
        return equipment_id;
    }

    public void setEquipment_id(int equipment_id) {
        this.equipment_id = equipment_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getHospital_id() {
        return hospital_id;
    }

    public void setHospital_id(int hospital_id) {
        this.hospital_id = hospital_id;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }
    
    
}
