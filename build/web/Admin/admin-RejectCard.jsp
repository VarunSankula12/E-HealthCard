
<%@page import="java.util.HashMap,java.util.Map"%>
<%@page import="com.google.zxing.qrcode.decoder.ErrorCorrectionLevel"%>
<%@page import="com.codebook.admin.adminDao"%>
<%@page import="java.io.ByteArrayInputStream"%>
<%@page import="java.nio.charset.StandardCharsets"%>
<%@page import="com.codebook.admin.QRCodeGenerator"%>
<%@page import="com.codebook.bean.bean"%>
<%@page import="java.sql.*"%>
<%@page import="com.google.zxing.EncodeHintType"%>
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
     String email=request.getParameter("email");
     b.setEmail(request.getParameter("email"));
     adminDao e1 = new adminDao();
     String q="SELECT * FROM card WHERE email='"+email+"'";
     ResultSet result=e1.displayData(q);
     if(result.next()){
     String query="UPDATE card SET status='REJECTED' WHERE email=?";
     int reject=e1.Modify(query,b);
                if(reject>0){
                String query1="DELETE FROM qr_code WHERE email='"+email+"'";
                int del=e1.Remove(query1);
                request.getSession();
                session.setAttribute("rejected", "Card was Rejected");
                response.sendRedirect("admin-cardreq.jsp");
                }else{
                request.getSession();
                session.setAttribute("failed", "Rejection Failed");
                response.sendRedirect("admin-cardreq.jsp");
                }
    }
     
%>

</body>
</html>
