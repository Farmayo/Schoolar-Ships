
package DAO;

import Connection.ConnectionDB;
import DTO.RequestDTO;
import Interfaces.IRequest;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.Stateless;

@Stateless
public class RequestDAO implements IRequest{
    
    private static final String SQL_INSERT = "INSERT INTO request_info (name, lastname, email, comment) VALUES(?,?,?,?)";
    private static final String SQL_DELETE = "DELETE FROM request_info WHERE request_info_id = ?";
    private static final String SQL_UPDATE = "";
    private static final String SQL_READ = "SELECT * FROM request_info WHERE request_info_id = ?";
    private static final String SQL_READALL = "SELECT * FROM request_info";

    private static ConnectionDB conn = ConnectionDB.getInstance();
    
    @Override
    public boolean create(RequestDTO in) {
        PreparedStatement ps;
        
        try {
            ps = conn.getConnection().prepareStatement(SQL_INSERT);
            ps.setString(1, in.getName());
            ps.setString(2, in.getLastname());
            ps.setString(3, in.getEmail());
            ps.setString(4, in.getComment());
            
            if(ps.executeUpdate()> 0) { return true; }
            
        } catch (SQLException ex) {
            Logger.getLogger(RequestDAO.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(RequestDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        return false;
    }

    @Override
    public boolean update(RequestDTO in) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public RequestDTO read(Object key) {
        PreparedStatement ps;
        ResultSet rs;
        RequestDTO requestDTO = null;
        
        try {
            ps = conn.getConnection().prepareStatement(SQL_READ);
            ps.setString(1, key.toString());
            
            rs = ps.executeQuery();
            while(rs.next()) {
                requestDTO = new RequestDTO(rs.getInt(0), rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
            }
            return requestDTO;
        } catch (SQLException ex) {
            Logger.getLogger(RequestDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }        
        return requestDTO;
    }

    @Override
    public List<RequestDTO> readAll() {
        PreparedStatement ps;
        ResultSet rs;
        List<RequestDTO> requests = new ArrayList<>();
        
        try {
            ps = conn.getConnection().prepareStatement(SQL_READALL);
            
            rs = ps.executeQuery();
            while(rs.next()) {
                requests.add(new RequestDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5)));
            }
            return requests;
        } catch (SQLException ex) {
            Logger.getLogger(RequestDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        return requests;
    }
    
}
