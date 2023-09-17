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
public class User {

    private int user_id;
    private String username;
    private String password;
    private String salt;
    private Role user_type;
    private boolean deleted;
    private String email;
    private String phone;

    // Constructor
    public User() {
    }

    public User(int user_id, String username, String password, String salt, Role user_type, boolean deleted, String email, String phone) {
        this.user_id = user_id;
        this.username = username;
        this.password = password;
        this.salt = salt;
        this.user_type = user_type;
        this.deleted = deleted;
        this.email = email;
        this.phone = phone;
    }

    public User(String username, String password, String salt, Role user_type, boolean deleted, String email, String phone) {
        this.username = username;
        this.password = password;
        this.salt = salt;
        this.user_type = user_type;
        this.deleted = deleted;
        this.email = email;
        this.phone = phone;
    }

    public User(int user_id, String username, Role user_type, boolean deleted, String email, String phone) {
        this.user_id = user_id;
        this.username = username;
        this.user_type = user_type;
        this.deleted = deleted;
        this.email = email;
        this.phone = phone;
    }

    public User(int user_id, String username, String salt, Role user_type, boolean deleted, String email, String phone) {
        this.user_id = user_id;
        this.username = username;
        this.user_type = user_type;
        this.deleted = deleted;
        this.salt = salt;
        this.email = email;
        this.phone = phone;
    }

    // Getters and setters for all fields
    public int getUserId() {
        return user_id;
    }

    public void setUserId(int user_id) {
        this.user_id = user_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public Role getUserType() {
        return user_type;
    }

    public void setUserType(Role user_type) {
        this.user_type = user_type;
    }

    public boolean isDeleted() {
        return deleted;
    }

    public void setDeleted(boolean deleted) {
        this.deleted = deleted;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    // Role enum definition
    public enum Role {
        O, // Organization
        H, // Hospital
        I  // Individual
    }
}
