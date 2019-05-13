package DAO;

import Connection.ConnectionDB;
import DTO.StudentDTO;
import Interfaces.Contract;
import Interfaces.IStudent;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.Stateful;

@Stateful
public class StudentDAO implements IStudent{
    
    private static final String SQL_INSERT = "INSERT INTO student (age, join_date, user_User_id, careers_careers_id) VALUES(?,?,?,?)";
    private static final String SQL_DELETE = "DELETE FROM student WHERE user_User_id = ?";
    private static final String SQL_UPDATE = "";
    private static final String SQL_READ = "SELECT * FROM student WHERE user_User_id = ?";
    private static final String SQL_READALL = "SELECT * FROM student";
    
    private static Connection.ConnectionDB conn = ConnectionDB.getInstance();

    @Override
    public boolean create(StudentDTO in) {
        PreparedStatement ps;
        try {
            ps = conn.getConnection().prepareStatement(SQL_INSERT);
            ps.setString(1, in.getAge() + "");
            ps.setString(2, in.getJoin_date().toString());
            ps.setString(3, in.getUser_id());
            ps.setString(4, in.getId_career() + "");
            
            if(ps.executeUpdate() > 0) { return true; }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        return false;
    }

    @Override
    public boolean delete(Object key) {
        try {
            PreparedStatement ps;
            
            ps = conn.getConnection().prepareStatement(SQL_DELETE);
            ps.setString(1, key.toString());
            
            if(ps.executeUpdate() > 0) { return true; }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        
        return false;
    }

    @Override
    public boolean update(StudentDTO in) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public StudentDTO read(Object key) {
        PreparedStatement ps;
        ResultSet rs;
        StudentDTO studentDTO = null;
        try {
            
            
            ps = conn.getConnection().prepareStatement(SQL_READ);
            ps.setString(1, key.toString());
            
            rs = ps.executeQuery();
            while(rs.next()) {
                studentDTO = new StudentDTO(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getInt(5));
            }
            return studentDTO;            
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        return studentDTO;
    }

    @Override
    public List<StudentDTO> readAll() {
        PreparedStatement ps;
        ResultSet rs;
        List<StudentDTO> students = new ArrayList<>();
        
        try {
            ps = conn.getConnection().prepareStatement(SQL_READALL);
            
            rs = ps.executeQuery();
            while(rs.next()) {
                students.add(new StudentDTO(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getInt(5)));
            }
            return students;
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        return students;
    }
    
}
