
package com.codebook.admin;

import com.codebook.QueryInterface.Query;
import com.codebook.bean.bean;
import com.codebook.connection.ConnectionDB;
import java.io.ByteArrayInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

public class adminDao implements Query {
    
  public int Add(String query, byte[] bytes,ByteArrayInputStream inputStream,String email,String date,String expiry,int total,int money){
       int rowCount=0;
       try{
           Connection connection=ConnectionDB.getConnection();
       PreparedStatement ps=connection.prepareStatement(query);
       ps.setString(1, email);
       ps.setBinaryStream(2, inputStream, bytes.length);
       ps.setString(3, date);
       ps.setString(4, expiry);
       ps.setInt(5,total);
       ps.setInt(6,money);
       rowCount=ps.executeUpdate();
       }catch(Exception e){
           e.printStackTrace();
       }
       return rowCount;
  }
  
    public int RenewUpdate(String query, bean b){
       int rowCount=0;
       try{
           Connection connection=ConnectionDB.getConnection();
       PreparedStatement ps=connection.prepareStatement(query);
       ps.setString(1, b.getGender());
       ps.setString(2, b.getGender());
       ps.setString(3, b.getBranch());
       ps.setString(4, b.getDob());
       ps.setString(5,b.getEmail());
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
       ps.setString(1, b.getEmail());
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
   
   public ResultSet displayData(String query){
       ResultSet rs=null;
       try{
           Connection connection=ConnectionDB.getConnection();
       PreparedStatement ps=connection.prepareStatement(query);
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
