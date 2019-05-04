package DAO;

import Connection.ConnectionDB;
import DTO.CareerDTO;
import DTO.PhoneDTO;
import Interfaces.Contract;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CareerDAO implements Contract<CareerDTO>{
    private static final String SQL_INSERT = "INSERT INTO careers (name_careers) VALUES(?)";
    private static final String SQL_DELETE = "DELETE FROM phone WHERE careers_id = ?";
    private static final String SQL_UPDATE = "UPDATE phone SET name_careers = ? WHERE careers_id = ?";
    private static final String SQL_READ = "SELECT * FROM phone WHERE careers_id = ?";
    private static final String SQL_READALL = "SELECT * FROM careers";
    
    private static final ConnectionDB conn = ConnectionDB.getInstance();

    @Override
    public boolean create(CareerDTO in) {
        PreparedStatement ps;
        
        try {
            ps = conn.getConnection().prepareStatement(SQL_INSERT);
            ps.setString(1, in.getName());
            
            if (ps.executeUpdate() > 0) { return true; }
        } catch (SQLException ex) {
            Logger.getLogger(CareerDAO.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(CareerDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }        
        return false;
    }

    @Override
    public boolean update(CareerDTO in) {
        PreparedStatement ps;
        
        try {
            ps = conn.getConnection().prepareStatement(SQL_UPDATE);
            ps.setString(1, in.getName());
            ps.setString(2, in.getCareer_id() + "");
            
            if (ps.executeUpdate() > 0) { return true; }
        } catch (SQLException ex) {
            Logger.getLogger(CareerDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        return false;
    }

    @Override
    public CareerDTO read(Object key) {
        PreparedStatement ps;
        ResultSet rs;
        CareerDTO careerDTO = null;
        
        try {
            ps = conn.getConnection().prepareStatement(SQL_READ);
            ps.setString(1, key.toString());
            
            rs = ps.executeQuery();
            while (rs.next()) {
                careerDTO = new CareerDTO(rs.getInt(1), rs.getString(2));
            }
            return careerDTO;
        } catch (SQLException ex) {
            Logger.getLogger(CareerDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }        
        return careerDTO;
    }

    @Override
    public List<CareerDTO> readAll() {
        PreparedStatement ps;
        ResultSet rs;
        List<CareerDTO> careers = new ArrayList<>();
        
        try {
            ps = conn.getConnection().prepareStatement(SQL_READALL);
            
            rs = ps.executeQuery();
            while (rs.next()) {
                careers.add(new CareerDTO(rs.getInt(1), rs.getString(2)));
            }
            return careers;
        } catch (SQLException ex) {
            Logger.getLogger(CareerDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        return careers;
    }
    
}
