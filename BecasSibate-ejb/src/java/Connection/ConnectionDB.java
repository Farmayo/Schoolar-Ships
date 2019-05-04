package Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConnectionDB {
 
    // This is for Sinfleton Pattern
    private static ConnectionDB instance = null;
    private Connection conexion;

    // We cannot create instances of this object everywhere
    private ConnectionDB() {
        createConnection();
    }
    
    // This is for Sinfleton Pattern
    public static synchronized ConnectionDB getInstance() {
        if(instance == null) {
            instance = new ConnectionDB();
        }
        return instance;
    }
    
    private void createConnection() {
        try {
            // Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/scholarship", "root", "Jair98082864660leo");
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
    }
    
    public Connection getConnection() {
        return this.conexion;
    }
    
    public void close() {
        instance = null;
    }
}
