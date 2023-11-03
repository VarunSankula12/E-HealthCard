<%@page import="com.codebook.admin.adminDao"%>
<%@page import="com.codebook.bean.bean"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    bean b=new bean();
    b.setEmail(request.getParameter("email"));
    b.setPassword(request.getParameter("password"));
    String query="select * from admin where email=? && password=?";
    adminDao obj=new adminDao();
    ResultSet rs=obj.Table(query, b);
    if(rs.next()){
    request.getSession();
    session.setAttribute("success", "Login Successful!");
    response.sendRedirect("Admin/admin-index.jsp");
    }else{
    request.getSession();
    session.setAttribute("failed", "Login Failed!");
    response.sendRedirect("admin-login.jsp");
    }

%>