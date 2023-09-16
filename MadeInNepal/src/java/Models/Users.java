/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author Subin
 */
public class Users {
    
     public enum Role{G,O,I};

     
    private int user_id;
    private String username;
    private String password;
    private String salt;
    private Role user_type;
    private boolean deleted;

    public Users() {
    }

    public Users(int user_id, String username, String password, String salt, Role user_type, boolean deleted) {
        this.user_id = user_id;
        this.username = username;
        this.password = password;
        this.salt = salt;
        this.user_type = user_type;
        this.deleted = deleted;
    }

    public Users(int user_id, String username, Role user_type) {
        this.user_id = user_id;
        this.username = username;
        this.user_type = user_type;
    }
    
    

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
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

    public Role getUser_type() {
        return user_type;
    }

    public void setUser_type(Role user_type) {
        this.user_type = user_type;
    }

    public boolean isDeleted() {
        return deleted;
    }

    public void setDeleted(boolean deleted) {
        this.deleted = deleted;
    }
    
    
    
}
