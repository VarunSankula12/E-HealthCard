<%@page import="com.codebook.admin.adminDao"%>
<%@page import="com.codebook.user.userDao"%>
<%@page import="com.codebook.bean.bean"%>
<%@page import="java.util.*,java.sql.*"%>
<%
    String email=(String)session.getAttribute("email");
    bean b=new bean();
    b.setName(request.getParameter("name"));
    b.setMobile(request.getParameter("treatment"));
    b.setDob(request.getParameter("feedback"));
    b.setAddress(request.getParameter("a"));
    b.setEmail(email);
    String s="SELECT * FROM card WHERE email='"+email+"'";
    adminDao e1=new adminDao();
    ResultSet result=e1.displayData(s);
    if(result.next()){
     String query="INSERT into feedback(hname,useremail,treatments,rating,description)VALUES (?,?,?,?,?)";
    userDao obj=new userDao();
    int rowCount=obj.feedBack(query, b);
    if(rowCount>0){
    request.getSession();
    session.setAttribute("success", "Your Feedback Submitted Successfully!");
    response.sendRedirect("user-feedback.jsp");
    }else{
    request.getSession();
    session.setAttribute("failed", "Failed to submit Your Feedback!");
    response.sendRedirect("user-feedback.jsp");
    }
    }
    else{
    request.getSession();
    session.setAttribute("failed", "Failed");
    response.sendRedirect("user-feedback.jsp");
    }
    
   
%>
