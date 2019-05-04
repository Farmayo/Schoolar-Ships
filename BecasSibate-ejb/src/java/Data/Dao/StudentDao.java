/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data.Dao;

import Data.Vos.StudentVo;
import java.sql.PreparedStatement;

/**
 *
 * @author ESTACION
 */
public class StudentDao {

    private Conexion conexion = Conexion.getInstance();
    
    public boolean createStudent(StudentVo studentVo) {
        try {
            String query = "INSERT INTO estudiante(ID_Usuario, nombre, edad, carrera, ingreso) VALUES(?,?,?,?,?)";
            PreparedStatement ps =conexion.getConnection().prepareStatement(query);
            
            ps.setInt(1, studentVo.getId_Usuario());
            ps.setString(2, studentVo.getNombre());
            ps.setInt(3, studentVo.getEdad());
            ps.setString(4, studentVo.getCarrera());
            ps.setString(5, studentVo.getFecha_Ingreso());
            
            int result = ps.executeUpdate();
            if(result > 0) {
                return true;
            } else {
                return false;
            }
            
        } catch (Exception e) {
            System.out.println("Error: " + e);
            return false;
        }
    }
    
    public Conexion getConnection() {
        return this.getConnection();
    }
}
