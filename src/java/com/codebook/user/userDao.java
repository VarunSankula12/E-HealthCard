
package com.codebook.user;
import java.sql.*;
import com.codebook.QueryInterface.Query;
import com.codebook.bean.bean;
import com.codebook.connection.ConnectionDB;

public class userDao implements Query {
   public int Add(String query,bean b){
       int rowCount=0;
       try{
       Connection connection=ConnectionDB.getConnection();
       PreparedStatement ps=connection.prepareStatement(query);
       ps.setString(1, b.getName());
       ps.setString(2, b.getEmail());
       ps.setString(3, b.getMobile());
       ps.setString(4, b.getGender());
       ps.setString(5, b.getAddress());
       ps.setString(6, b.getDob());
       ps.setString(7, b.getPassword());
       ps.setString(8, b.getCpassword());
       ps.setBlob(9, b.getBlob());
       rowCount=ps.executeUpdate();
       }catch(Exception e){
           e.printStackTrace();
       }
        return rowCount;
    }
   
   
   public int Modify(String query,bean b){
       int rowCount=0;
       try{
       Connection connection=ConnectionDB.getConnection();
       PreparedStatement ps=connection.prepareStatement(query);
       ps.setString(1, b.getName());
       ps.setString(2, b.getEmail());
       ps.setString(3, b.getMobile());
       ps.setString(4,b.getAddress());
       ps.setString(5,b.getDob());
       if(b.getBlob().length()==0){
           userDao obj=new userDao();
           String query1="select * from user where email=? && password=?";
           ResultSet rs=obj.Table(query1, b);
           if(rs.next()){
           b.setBlob(rs.getBlob("upload_image"));
           }
       }
       ps.setBlob(6, b.getBlob());
       
       rowCount=ps.executeUpdate();
       }catch(Exception e){
           e.printStackTrace();
       }
       return rowCount;
   }
   public int feedBack(String query,bean b){
       int rowCount=0;
       try{
       Connection connection=ConnectionDB.getConnection();
       PreparedStatement ps=connection.prepareStatement(query);
       ps.setString(1, b.getName());
       ps.setString(2, b.getEmail());
       ps.setString(3, b.getMobile());
       ps.setString(4,b.getAddress());
       ps.setString(5,b.getDob());
       rowCount=ps.executeUpdate();
       }catch(Exception e){
           e.printStackTrace();
       }
       return rowCount;
   }
   
   public int RenewPlan(String query,bean b){
       int rowCount=0;
       try{
       Connection connection=ConnectionDB.getConnection();
       PreparedStatement ps=connection.prepareStatement(query);
       ps.setString(1, b.getEmail());
       ps.setString(2, b.getName());
       ps.setString(3, b.getGender());
       ps.setString(4, b.getMobile());
       rowCount=ps.executeUpdate();
       }catch(Exception e){
           e.printStackTrace();
       }
       return rowCount;
   }
   
   
   public ResultSet Table(String query,bean b){
       ResultSet rs=null;
       try{
           Connection connection=ConnectionDB.getConnection();
       PreparedStatement ps=connection.prepareStatement(query);
       ps.setString(1, b.getEmail());
       ps.setString(2, b.getPassword());
       rs=ps.executeQuery();
       }catch(Exception e){
           e.printStackTrace();
       }
       return rs;
   }
   
   public ResultSet checkCard(String query,bean b){
       ResultSet rs=null;
       try{
           Connection connection=ConnectionDB.getConnection();
       PreparedStatement ps=connection.prepareStatement(query);
       ps.setString(1, b.getEmail());
       rs=ps.executeQuery();
       }catch(Exception e){
           e.printStackTrace();
       }
       return rs;
   }
   
   public int Remove(String query){
       int rowCount=0;
       try{
           Connection connection=ConnectionDB.getConnection();
       PreparedStatement ps=connection.prepareStatement(query);
       rowCount=ps.executeUpdate();
       }catch(Exception e){
           e.printStackTrace();
       }
       return rowCount;
   }
    
}
