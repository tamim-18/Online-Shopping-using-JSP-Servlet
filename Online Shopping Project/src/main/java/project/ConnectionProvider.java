package project;
import java.sql.*;
public class ConnectionProvider {
    public static Connection getCon() 
    {
        String url = "jdbc:mysql://localhost:3306/ospjsp";
        String username = "root";
        String password = "tiktiki602";
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(url, username, password);
            return con;
        }
        catch (Exception e) {
           //System.out.print(e);
            e.printStackTrace();
          return (Connection) e;
        }
        
        
    }
}
