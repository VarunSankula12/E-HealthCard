<%@page import="com.codebook.hospital.hospitalDao"%>
<%@page import="com.codebook.bean.bean"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    bean b=new bean();
    String status="";
    String mail=(String)request.getParameter("email");
    String pass=(String)request.getParameter("password");
    b.setEmail(request.getParameter("email"));
    b.setPassword(request.getParameter("password"));
    String query="select * from hospital where email=? && password=? ";
    hospitalDao obj=new hospitalDao();
    ResultSet rs=obj.Table(query, b);
    if(rs.next()){
    status=rs.getString("status");
    if(status.equalsIgnoreCase("ACCEPTED")){
    session.setAttribute("hemail", mail);
    session.setAttribute("hpassword", pass);
     request.getSession();
    session.setAttribute("success", "Login Successful!");
    response.sendRedirect("hospital/hospital-index.jsp");
    }else if(status.equalsIgnoreCase("REJECTED")){
    request.getSession();
    session.setAttribute("reject", "Login Failed! Your Application was Rejected");
    response.sendRedirect("hospital-login.jsp");
    }else if(status.equalsIgnoreCase("PENDING")){
    request.getSession();
    session.setAttribute("pending", "Login Failed! Your Application is not yet Processed");
    response.sendRedirect("hospital-login.jsp");
    }
    }else{
    request.getSession();
    session.setAttribute("failed", "Login Failed! Check your Credentials");
    response.sendRedirect("hospital-login.jsp");
    }
    

%>