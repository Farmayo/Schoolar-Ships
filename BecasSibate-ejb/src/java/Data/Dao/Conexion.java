/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data.Dao;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author ESTACION
 */
public class Conexion {

    private Connection conexion;
    
    private static Conexion instance = null;

    public Conexion() {
        createConnection();
    }
    
    public static Conexion getInstance() {
        if(instance == null) {
            instance = new Conexion();
        }
        return instance;
    }
    
    private void createConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/becas", "root", "admin");
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
    }
    
    private void close() {
        try {
            conexion.close();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
    }
    
    public Connection getConnection() {
        return this.conexion;
    }
}
