package DAO;

import Connection.ConnectionDB;
import DTO.EmployeeDTO;
import Interfaces.Contract;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class EmployeeDAO implements Contract<EmployeeDTO>{

    private static final String SQL_INSERT = "INSERT INTO employee (position, user_User_id, positions_positions_id) VALUES(?,?,?)";
    private static final String SQL_DELETE = "DELETE FROM employee WHERE user_User_id = ?";
    private static final String SQL_UPDATE = "UPDATE employee SET positions_positions_id = ? WHERE user_User_id = ?";
    private static final String SQL_READ = "SELECT * FROM employee WHERE user_User_id = ?";
    private static final String SQL_READALL = "SELECT * FROM employee";
    
    private static ConnectionDB conn = ConnectionDB.getInstance();
    
    @Override
    public boolean create(EmployeeDTO in) {
        PreparedStatement ps;
        
        try {
            ps = conn.getConnection().prepareStatement(SQL_INSERT);
            ps.setString(1, in.getUser_id());
            ps.setString(2, in.getPosition_id() + "");
            
            if (ps.executeUpdate() > 0) { return true; }
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        return false;
    }

    @Override
    public boolean delete(Object key) {
        PreparedStatement ps;
        
        try {
            ps = conn.getConnection().prepareStatement(SQL_DELETE);
            ps.setString(1, key.toString());
            
            if (ps.executeUpdate() > 0) { return true; }
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        return false;
    }

    @Override
    public boolean update(EmployeeDTO in) {
        PreparedStatement ps;
        
        try {
            ps = conn.getConnection().prepareStatement(SQL_UPDATE);
            ps.setString(1, in.getPosition_id() + "");
            ps.setString(2, in.getUser_id());
            
            if (ps.executeUpdate() > 0) { return true; }
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        return false;
    }

    @Override
    public EmployeeDTO read(Object key) {
        PreparedStatement ps;
        ResultSet rs;
        EmployeeDTO employeeDTO = null;
        
        try {
            ps = conn.getConnection().prepareStatement(SQL_READ);
            ps.setString(1, key.toString());
            
            rs = ps.executeQuery();
            while (rs.next()) {
                employeeDTO = new EmployeeDTO(rs.getInt(1), rs.getString(2), rs.getInt(3));
            }
            return employeeDTO;
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        return employeeDTO;
    }

    @Override
    public List<EmployeeDTO> readAll() {
        PreparedStatement ps;
        ResultSet rs;
        List<EmployeeDTO> employees = new ArrayList<>();
        
        try {
            ps = conn.getConnection().prepareStatement(SQL_READALL);
            
            rs = ps.executeQuery();
            while (rs.next()) {
                employees.add(new EmployeeDTO(rs.getInt(1), rs.getString(2), rs.getInt(3)));
            }
            return employees;
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        
        return employees;
    }
    
}
