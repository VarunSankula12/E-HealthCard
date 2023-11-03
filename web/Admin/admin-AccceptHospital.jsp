<%@page import="com.codebook.admin.adminDao"%>
<%@page import="com.codebook.bean.bean"%>
<%@page import="java.sql.*"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.io.UnsupportedEncodingException" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
   
<%
     bean b=new bean();
     String email=request.getParameter("email");
     b.setEmail(request.getParameter("email"));
     adminDao e1 = new adminDao();
     String q="SELECT * FROM hospital WHERE email='"+email+"'";
     ResultSet result=e1.displayData(q);
     if(result.next()){
     String query="UPDATE hospital SET status='ACCEPTED' WHERE email=?";
     int reject=e1.Modify(query,b);
                if(reject>0){
                request.getSession();
                session.setAttribute("accepted", "Hospital Accepted Successfully");
                response.sendRedirect("admin-managehospital.jsp");
                }else{
                request.getSession();
                session.setAttribute("failed", "Failed to Accept Hospital");
                response.sendRedirect("admin-managehospital.jsp");
                }
    }
     
%>

</body>
</html>
