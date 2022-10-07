package mypkg;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Utility {

      
    private static Connection con;

    public static Connection connect() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
		
		 con  =  DriverManager.getConnection("jdbc:mysql://localhost:3308/coviddata","root","root");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error..............."+e);
        }
        return con;
    }
}