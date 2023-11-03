<%@page import="com.codebook.user.userDao"%>
<%@page import="com.codebook.admin.adminDao"%>
<%@page import="com.codebook.bean.bean"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
   
<%
    
    String values=request.getParameter("flexRadioDefault");
    String[] arr=values.split(",");
    String towhom=arr[0];
    String planamount=arr[1];
    String years=arr[2];
    String expiry="";
     bean b=new bean();
    b.setName(towhom);
    b.setGender(planamount);
    b.setMobile(years);
     String email=request.getParameter("email");
     b.setEmail(request.getParameter("email"));
     userDao e1 = new userDao();
     adminDao obj=new adminDao();
     String q="SELECT * FROM card WHERE email=?";
     ResultSet result=e1.checkCard(q,b);
     if(result.next()){
     String ch="SELECT * FROM renewdetails WHERE email='"+email+"'";
     ResultSet nup=obj.displayData(ch);
     if(nup.next()){
        String ch2="DELETE FROM renewdetails WHERE email='"+email+"'";
     int ro=e1.Remove(ch2);
    }
     String req=result.getString("renewReq");
     if(req.equals("Not Renewed")){
          String q2="INSERT into renewdetails(email,towhom,planamount,years) VALUES(?,?,?,?)";
          int rowCount=e1.RenewPlan(q2, b);
          if(rowCount>0){
            String query="UPDATE card SET renewReq='Renew requested' WHERE email=?";
     int update=obj.Modify(query,b);
                if(update>0){
                request.getSession();
    session.setAttribute("success", "Renew request Sent Successfully!");
    response.sendRedirect("user-viewcard.jsp");
                }else{
                request.getSession();
    session.setAttribute("failed", "Failed to send Renew request!");
    response.sendRedirect("user-viewcard.jsp");
                }
        }else{
        request.getSession();
    session.setAttribute("faialed", "Insertion failed!");
    response.sendRedirect("user-viewcard.jsp");
        }
    }else{
    request.getSession();
    session.setAttribute("warning", "You may already sent renew request or already renewed!");
    response.sendRedirect("user-viewcard.jsp");
    }
    }
     
%>

</body>
</html>