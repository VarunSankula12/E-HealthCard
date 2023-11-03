<%@page import="com.codebook.admin.adminDao"%>
<%@page import="com.codebook.bean.bean"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.text.*,java.util.Date"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.io.UnsupportedEncodingException" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
   
<%
    
    String renewReq = "Renew requested";
    
    bean b = new bean();
    String expiry = request.getParameter("expiry");
    String email = request.getParameter("email");
    b.setEmail(request.getParameter("email"));
    adminDao e1 = new adminDao();
    
        String q = "SELECT * FROM card WHERE email='" + email + "' && renewReq='" + renewReq + "'";
        ResultSet result = e1.displayData(q);
        if (result.next()) {
            String query = "UPDATE card SET renewReq='Declined' WHERE email=?";
            int reject = e1.Modify(query, b);
            if (reject > 0) {
                    request.getSession();
                    session.setAttribute("accepted", "Card Renew Rejected !");
                    response.sendRedirect("admin-renewreq.jsp");
            } else {
                request.getSession();
                session.setAttribute("failed", "Renew decline Failed!");
                response.sendRedirect("admin-renewreq.jsp");
            }
        }
     
%>

</body>
</html>
