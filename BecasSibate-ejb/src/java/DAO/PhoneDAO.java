package DAO;

import Connection.ConnectionDB;
import DTO.PhoneDTO;
import Interfaces.Contract;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class PhoneDAO implements Contract<PhoneDTO>{
    
    private static final String SQL_INSERT = "INSERT INTO phone (phone_number, user_User_id) VALUES(?,?)";
    private static final String SQL_DELETE = "DELETE FROM phone WHERE user_User_id = ?";
    private static final String SQL_UPDATE = "UPDATE phone SET phone_number = ? WHERE phone_id = ?";
    private static final String SQL_READ = "SELECT * FROM phone WHERE user_User_id = ?";
    private static final String SQL_READALL = "SELECT * FROM phone";

    private static final ConnectionDB conn = ConnectionDB.getInstance();
    
    @Override
    public boolean create(PhoneDTO in) {
        PreparedStatement ps;
        
        try {
            ps = conn.getConnection().prepareStatement(SQL_INSERT);
            ps.setString(1, in.getNumber());
            ps.setString(2, in.getUser_id());
            
            if(ps.executeUpdate() > 0) { return true; }
            
        } catch (SQLException ex) {
            Logger.getLogger(PhoneDAO.class.getName()).log(Level.SEVERE, null, ex);
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
            
            if(ps.executeUpdate() > 0) { return true; }
        } catch (SQLException ex) {
            Logger.getLogger(PhoneDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        return false;
    }

    @Override
    public boolean update(PhoneDTO in) {
        PreparedStatement ps;
        
        try {
            ps = conn.getConnection().prepareStatement(SQL_UPDATE);
            ps.setString(1, in.getNumber());
            ps.setString(2, in.getPhone_id() + "");
            
            if (ps.executeUpdate() > 0) { return true; }
        } catch (SQLException ex) {
            Logger.getLogger(PhoneDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        return false;
    }

    @Override
    public PhoneDTO read(Object key) {
        PreparedStatement ps;
        ResultSet rs;
        PhoneDTO phoneDTO = null;
        
        try {
            ps = conn.getConnection().prepareStatement(SQL_READ);
            ps.setString(1, key.toString());
            
            rs = ps.executeQuery();
            while (rs.next()) {
                phoneDTO = new PhoneDTO(rs.getInt(1), rs.getString(2), rs.getString(3));
            }
            return phoneDTO;
        } catch (SQLException ex) {
            Logger.getLogger(PhoneDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        return phoneDTO;
    }

    @Override
    public List<PhoneDTO> readAll() {
        PreparedStatement ps;
        ResultSet rs;
        List<PhoneDTO> phones = new ArrayList<>();
        
        try {
            ps = conn.getConnection().prepareStatement(SQL_READALL);
            
            rs = ps.executeQuery();
            while (rs.next()) {
                phones.add(new PhoneDTO(rs.getInt(1), rs.getString(2), rs.getString(3)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(PhoneDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        
        return phones;
    }
    
}
