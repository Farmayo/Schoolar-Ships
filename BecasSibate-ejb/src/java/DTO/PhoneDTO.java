/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

/**
 *
 * @author Hermanos-Jimenez
 */
public class PhoneDTO {
    private int phone_id;
    private String number;
    private String user_id;

    public PhoneDTO() {
    }

    public PhoneDTO(String number, String user_id) {
        this.phone_id = 0;
        this.number = number;
        this.user_id = user_id;
    }

    public PhoneDTO(int phone_id, String number, String user_id) {
        this.phone_id = phone_id;
        this.number = number;
        this.user_id = user_id;
    }

    public int getPhone_id() {
        return phone_id;
    }

    public void setPhone_id(int phone_id) {
        this.phone_id = phone_id;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }
    
    
}
