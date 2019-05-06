package DAO;

import DTO.UserDTO;
import Interfaces.Contract;
import java.util.List;

import Connection.ConnectionDB;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.Stateless;

@Stateless
public class UserDAO implements Contract<UserDTO> {

    private static final String SQL_INSERT = "INSERT INTO user (User_id, name, email, url_foto, password) VALUES(?,?,?,?,?)";
    private static final String SQL_DELETE = "DELETE FROM user WHERE User_id = ?";
    private static final String SQL_UPDATE = "UPDATE user SET name = ?, email = ?, url_foto = ?, password = ? WHERE User_id = ?";
    private static final String SQL_READ = "SELECT * FROM user WHERE User_id = ?";
    private static final String SQL_READALL = "SELECT * FROM user";
    
    private static final ConnectionDB conn = ConnectionDB.getInstance();
    
    public boolean create(UserDTO in) {
        PreparedStatement ps;
        try {
            ps = conn.getConnection().prepareStatement(SQL_INSERT);
            ps.setString(1, in.getId());
            ps.setString(2, in.getEmail());
            ps.setString(3, in.getName());
            ps.setString(4, in.getUrl_photo());
            ps.setString(5, in.getPassword());
            
            if (ps.executeUpdate() > 0 ) { return true; }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
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
            
            if (ps.executeUpdate() > 0) { return true; }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        return false;
    }

    @Override
    public boolean update(UserDTO in) {
        PreparedStatement ps;
        
        try {
            ps = conn.getConnection().prepareStatement(SQL_UPDATE);
            ps.setString(1, in.getName());
            ps.setString(2, in.getEmail());
            ps.setString(3, in.getUrl_photo());
            ps.setString(4, in.getPassword());
            ps.setString(5, in.getId());
            
            if (ps.executeUpdate() > 0) { return true; }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        return false;
    }

    @Override
    public UserDTO read(Object key) {
        PreparedStatement ps;
        ResultSet rs;
        UserDTO user = null;

        try {
            ps = conn.getConnection().prepareStatement(SQL_READ);
            ps.setString(1, key.toString());

            rs = ps.executeQuery();
            while (rs.next()) {
                user = new UserDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
            }
            return user;
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        
        return user;
    }

    @Override
    public List<UserDTO> readAll() {
        PreparedStatement ps;
        ResultSet rs;
        List<UserDTO> users = new ArrayList<>();
        
        try {
            ps = conn.getConnection().prepareStatement(SQL_READALL);
            
            rs = ps.executeQuery();
            while(rs.next()) {
                users.add(new UserDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5)));
            }
            return users;
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        return users;
    }
    
}
