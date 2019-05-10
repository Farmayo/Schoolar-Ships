package Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConnectionDB {
 
    // This is for Sinfleton Pattern
    private static ConnectionDB instance = null;
    private static Connection conexion;

    // We cannot create instances of this object everywhere
    private ConnectionDB() {
        createConnection();
    }
    
    // This is for Sinfleton Pattern
    public static synchronized ConnectionDB getInstance() {
        if(instance == null || conexion == null) {
            instance = new ConnectionDB();
        }
        return instance;
    }
    
    private void createConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String auxConn = "?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&autoReconnect=true&useSSL=false";
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/scholarship" + auxConn, "root", "Jair98082864660leo");
        } catch (SQLException | ClassNotFoundException e) {
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
