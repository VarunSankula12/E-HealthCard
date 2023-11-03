
package com.codebook.hospital;

import com.codebook.QueryInterface.Query;
import com.codebook.admin.adminDao;
import com.codebook.bean.bean;
import com.codebook.connection.ConnectionDB;
import com.codebook.user.userDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class hospitalDao implements Query {
    
      public int Add(String query,bean b){
       int rowCount=0;
       try{
       Connection connection=ConnectionDB.getConnection();
       PreparedStatement ps=connection.prepareStatement(query);
       ps.setString(1, b.getName());
       ps.setString(2, b.getBranch());
       ps.setString(3, b.getEmail());
       ps.setString(4, b.getMobile());
       ps.setString(5, b.getAddress());
       ps.setString(6, b.getPassword());
       ps.setString(7, b.getCpassword());
       ps.setBlob(8, b.getBlob());
       rowCount=ps.executeUpdate();
       }catch(Exception e){
           e.printStackTrace();
       }
        return rowCount;
    }
      
      public int NewCard(String query,bean b){
       int rowCount=0;
       try{
       Connection connection=ConnectionDB.getConnection();
       PreparedStatement ps=connection.prepareStatement(query);
       ps.setString(1, b.getBranch());
       ps.setString(2, b.getName());
       ps.setString(3, b.getEmail());
       ps.setString(4, b.getMobile());
       ps.setString(5, b.getAddress());
       ps.setString(6, b.getGender());
       ps.setString(7, b.getDob());
       ps.setBlob(8, b.getBlob());
       rowCount=ps.executeUpdate();
       }catch(Exception e){
           e.printStackTrace();
       }
        return rowCount;
    }
      
      public int Billing(String query,bean b){
       int rowCount=0;
       try{
       Connection connection=ConnectionDB.getConnection();
       PreparedStatement ps=connection.prepareStatement(query);
       ps.setString(1, b.getBranch());
       ps.setString(2, b.getName());
       ps.setString(3, b.getEmail());
       ps.setString(4, b.getMobile());
       ps.setString(5, b.getGender());
       rowCount=ps.executeUpdate();
       }catch(Exception e){
           e.printStackTrace();
       }
        return rowCount;
    }
      public int Otpval(String query,bean b){
       int rowCount=0;
       try{
       Connection connection=ConnectionDB.getConnection();
       PreparedStatement ps=connection.prepareStatement(query);
       ps.setString(1, b.getMobile());
       ps.setString(2, b.getGender());
       rowCount=ps.executeUpdate();
       }catch(Exception e){
           e.printStackTrace();
       }
        return rowCount;
    }
      public int Billingfee(String query,bean b){
       int rowCount=0;
       try{
       Connection connection=ConnectionDB.getConnection();
       PreparedStatement ps=connection.prepareStatement(query);
       ps.setString(1, b.getPassword());
       ps.setString(2, b.getBranch());
       ps.setString(3, b.getName());
       ps.setString(4, b.getEmail());
       ps.setString(5, b.getMobile());
       ps.setString(6, b.getGender());
       rowCount=ps.executeUpdate();
       }catch(Exception e){
           e.printStackTrace();
       }
        return rowCount;
    }
      
      public int AddDetails(String query,bean b){
       int rowCount=0;
       try{
       Connection connection=ConnectionDB.getConnection();
       PreparedStatement ps=connection.prepareStatement(query);
       ps.setString(1, b.getGender());
       ps.setString(2, b.getName());
       ps.setString(3, b.getMobile());
       ps.setString(4, b.getEmail());
       ps.setString(5, b.getDob());
       ps.setString(6, b.getPassword());
       rowCount=ps.executeUpdate();
       }catch(Exception e){
           e.printStackTrace();
       }
        return rowCount;
    }
      
      public int ProfileUpdate(String query,bean b){
       int rowCount=0;
       try{
       Connection connection=ConnectionDB.getConnection();
       PreparedStatement ps=connection.prepareStatement(query);
       ps.setString(1, b.getName());
       ps.setString(2,b.getBranch());
       ps.setString(3, b.getMobile());
       ps.setString(4, b.getDob());
       ps.setString(5, b.getEmail());
       if(b.getBlob().length()==0){
           adminDao obj=new adminDao();
           String query1="select * from hospital where id='"+b.getGender()+"'";
           ResultSet rs=obj.displayData(query1);
           if(rs.next()){
           b.setBlob(rs.getBlob("upload_image"));
           }
       }
       ps.setBlob(6, b.getBlob());
       ps.setString(7,b.getGender());
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
       ps.setString(1, b.getGender());
       ps.setString(2, b.getName());
       ps.setString(3, b.getMobile());
       ps.setString(4, b.getEmail());
       ps.setString(5, b.getDob());
       
       rowCount=ps.executeUpdate();
       }catch(Exception e){
           e.printStackTrace();
       }
       return rowCount;
   }
   
   public int bill(String query,bean b){
       int rowCount=0;
       try{
       Connection connection=ConnectionDB.getConnection();
       PreparedStatement ps=connection.prepareStatement(query);
       ps.setString(1, b.getName());
       ps.setString(2, b.getEmail());
       ps.setString(3, b.getGender());
       ps.setString(4, b.getMobile());
       ps.setInt(5, b.getAmount());
       ps.setString(6, b.getDob());
       
       rowCount=ps.executeUpdate();
       }catch(Exception e){
           e.printStackTrace();
       }
       return rowCount;
   }
  
   public int AmountAdj(String query,bean b){
       int rowCount=0;
       try{
           Connection connection=ConnectionDB.getConnection();
       PreparedStatement ps=connection.prepareStatement(query);
       ps.setInt(1, b.getAmount());
       rowCount=ps.executeUpdate();
       }catch(Exception e){
           e.printStackTrace();
       }
       return rowCount;
   }
   
   public ResultSet Check(String query,bean b){
       ResultSet rs=null;
       try{
           Connection connection=ConnectionDB.getConnection();
       PreparedStatement ps=connection.prepareStatement(query);
       ps.setString(1, b.getEmail());
       ps.setString(2, b.getBranch());
       rs=ps.executeQuery();
       }catch(Exception e){
           e.printStackTrace();
       }
       return rs;
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
