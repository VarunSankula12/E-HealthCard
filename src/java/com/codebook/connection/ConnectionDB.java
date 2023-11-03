package com.codebook.connection;
import java.sql.*;


public class ConnectionDB{
    private static Connection connection=null;
   
    public static Connection getConnection(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/e-healthcard", "root", "");
        }catch(Exception e){
            e.printStackTrace();
        }
        return connection;
    }
    public static void closeConnection() throws Exception{
        connection.close();
    }
}
