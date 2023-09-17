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

public class Gov extends User {
    private String address;

    // Constructor
    public Gov(int userId, String username, String password, String salt, Role userType,
               boolean deleted, String email, String phone, String address) {
        super(userId, username, password, salt, userType, deleted, email, phone);
        this.address = address;
    }

    // Getter and setter for the additional 'address' field
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}