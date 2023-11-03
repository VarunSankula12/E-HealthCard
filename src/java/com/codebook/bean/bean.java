package com.codebook.bean;

import java.sql.*;

public class bean {
    private int amount;
    private String name;
    private String branch;
    private String email;
    private String mobile;
    private String gender;
    private String address;
    private String dob;
    private String password;
    private String cpassword;
    private Blob image;
    
    public void setName(String name){
        this.name=name;
    }
    public String getName(){
        return name;
    }
    
     public void setBranch(String branch){
        this.branch=branch;
    }
    public String getBranch(){
        return branch;
    }
    
    public void setEmail(String email){
        this.email=email;
    }
    public String getEmail(){
        return email;
    }
    
    public void setMobile(String mobile){
        this.mobile=mobile;
    }
    public String getMobile(){
        return mobile;
    }
    
    public void setGender(String gender){
        this.gender=gender;
    }
    public String getGender(){
        return gender;
    }
    
    public void setAddress(String address){
        this.address=address;
    }
    public String getAddress(){
        return address;
    }
    
    public void setDob(String dob){
        this.dob=dob;
    }
    public String getDob(){
        return dob;
    }
    
    public void setPassword(String password){
        this.password=password;
    }
    public String getPassword(){
        return password;
    }
    
    public void setCpassword(String cpassword){
        this.cpassword=cpassword;
    }
    public String getCpassword(){
        return cpassword;
    }
    
    public void setBlob(Blob image){
        this.image=image;
    }
    public Blob getBlob(){
        return image;
    }
    public void setAmount(int amount){
        this.amount=amount;
    }
    public int getAmount(){
        return amount;
    }
    
}
