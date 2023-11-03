<%@page import="java.util.HashMap,java.util.Map"%>
<%@page import="com.google.zxing.qrcode.decoder.ErrorCorrectionLevel"%>
<%@page import="com.codebook.admin.adminDao"%>
<%@page import="java.io.ByteArrayInputStream"%>
<%@page import="java.nio.charset.StandardCharsets"%>
<%@page import="com.codebook.admin.QRCodeGenerator"%>
<%@page import="com.codebook.bean.bean"%>
<%@page import="java.sql.*"%>
<%@page import="com.google.zxing.EncodeHintType"%>
<%@page import="java.util.Calendar"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.io.UnsupportedEncodingException" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>QR Code</title>
</head>
<body>
   
<%
     bean b=new bean();
     String username="";
     String appnum="";
     String email=request.getParameter("email");
     b.setEmail(request.getParameter("email"));
     adminDao e1 = new adminDao();
     String q="SELECT * FROM qr_code WHERE email='"+email+"'";
     ResultSet result=e1.displayData(q);
     if(result.next()){
    request.getSession();
    session.setAttribute("warning", "Your Card is Already Accepted");
    response.sendRedirect("admin-cardreq.jsp");
    }else{
    String q2="SELECT * FROM card WHERE email='"+email+"'";
    ResultSet one=e1.displayData(q2);
    if(one.next()){
        username=one.getString("name");
        appnum=one.getString("ApplicationNum");
    }else{
        out.println("Your Application Details not Found");
    }
        String data= username+","+appnum; 
      java.util.Date currentDate = new java.util.Date();
    java.sql.Date currentDateSql = new java.sql.Date(currentDate.getTime());
    String currentDateStr = currentDateSql.toString();
    
     Calendar calendar = Calendar.getInstance();
    calendar.setTime(currentDate);
    calendar.add(Calendar.YEAR, 1);
    java.util.Date expiryDate = calendar.getTime();
    java.sql.Date expiryDateSql = new java.sql.Date(expiryDate.getTime());
    String expiryDateStr = expiryDateSql.toString();
    
     QRCodeGenerator obj = new QRCodeGenerator();
     byte[] val = obj.generateQRcode(data, 200, 200);

     
     String query = "Select * from user where email='" + email + "'";
     ResultSet rs = e1.displayData(query);
     if (rs.next()) {
             ByteArrayInputStream inputStream = new ByteArrayInputStream(val);
             String sql = "INSERT INTO qr_code (email, QR,date,expiry,TotalAmount,Amount) VALUES (?,?,?,?,?,?)";
             int rowCount = e1.Add(sql, val, inputStream, email,currentDateStr,expiryDateStr,100000,100000);
             if (rowCount > 0) {
                String query1="UPDATE card SET status='ACCEPTED' WHERE email=?";
                int accept=e1.Modify(query1,b);
                if(accept>0){
                request.getSession();
                session.setAttribute("accepted", "Card Accepted Successfully");
                response.sendRedirect("admin-cardreq.jsp");
                }else{
                request.getSession();
                session.setAttribute("failed", "Failed to accept your card");
                response.sendRedirect("admin-cardreq.jsp");
                }
             } else {
                request.getSession();
                session.setAttribute("qrfailed", "Failed to generate QRCODE");
                response.sendRedirect("admin-cardreq.jsp");
             }
         
     }
    }
     
%>

</body>
</html>
