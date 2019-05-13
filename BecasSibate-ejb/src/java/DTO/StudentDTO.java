/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

import java.util.Date;

/**
 *
 * @author Hermanos-Jimenez
 */
public class StudentDTO {
    
    //This id is for the table, and it's the primary key
    private int id_student;
    private int age;
    private String join_date;
    private String user_id;
    private int id_career;

    public StudentDTO() {
    }

    public StudentDTO(int age, String join_date, String user_id, int id_career) {
        this.age = age;
        this.join_date = join_date;
        this.user_id = user_id;
        this.id_career = id_career;
    }

    public StudentDTO(int id_student, int age, String join_date, String user_id, int id_career) {
        this.id_student = id_student;
        this.age = age;
        this.join_date = join_date;
        this.user_id = user_id;
        this.id_career = id_career;
    }

    public int getId_student() {
        return id_student;
    }

    public void setId_student(int id_student) {
        this.id_student = id_student;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getJoin_date() {
        return join_date;
    }

    public void setJoin_date(String join_date) {
        this.join_date = join_date;
    }

    public int getId_career() {
        return id_career;
    }

    public void setId_career(int id_career) {
        this.id_career = id_career;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }
    
    
}
