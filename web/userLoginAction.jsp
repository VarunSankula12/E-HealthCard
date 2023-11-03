<%@page import="com.codebook.user.userDao"%>
<%@page import="com.codebook.bean.bean"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    bean b=new bean();
    String uemail=request.getParameter("email");
    String upassword=request.getParameter("password");
    b.setEmail(request.getParameter("email"));
    b.setPassword(request.getParameter("password"));
    String query="select * from user where email=? && password=?";
    userDao obj=new userDao();
    ResultSet rs=obj.Table(query, b);
    if(rs.next()){
    session.setAttribute("email",uemail);
    session.setAttribute("password",upassword);
     request.getSession();
    session.setAttribute("success", "Login Successful!");
    response.sendRedirect("user/user-index.jsp");
    }else{
    request.getSession();
    session.setAttribute("failed", "Login Failed! Check Your Credentials");
    response.sendRedirect("user-login.jsp");
    }

%>