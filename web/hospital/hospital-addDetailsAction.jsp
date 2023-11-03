<%@page import="com.codebook.admin.adminDao"%>
<%@page import="com.codebook.hospital.hospitalDao"%>
<%@page import="com.codebook.bean.bean"%>
<%@page import="java.util.*,java.sql.*"%>
<%
    bean b=new bean();
    String id=request.getParameter("id");
    b.setName(request.getParameter("name"));
    b.setGender(request.getParameter("id"));
    b.setMobile(request.getParameter("mobile"));
    b.setEmail(request.getParameter("specific"));
    b.setDob(request.getParameter("established"));
    String query1="select * from hospitaldetails where id='"+id+"'";
    adminDao e1=new adminDao();
    ResultSet rs=e1.displayData(query1);
    
    hospitalDao obj=new hospitalDao();
    if(rs.next()){
     String qu="UPDATE hospitaldetails SET id=?,name=?,mobile=?,`specific`=?,established=? where id='"+id+"'";
    int a=obj.Modify(qu, b);
    if(a>0){
    request.getSession();
    session.setAttribute("success", "Details Added Successfully!");
    response.sendRedirect("hospital-addDetails.jsp");
        out.println("Success");
    }else{
    request.getSession();
    session.setAttribute("failed", " Failed to Add Details!");
    response.sendRedirect("hospital-addDetails.jsp");
    }
    }else{
    String insert="INSERT into hospitaldetails(id,name,mobile,`specific`,established) values(?,?,?,?,?)";
    int count=obj.Modify(insert, b);
    if(count>0){
    request.getSession();
    session.setAttribute("success", "Details Added Successfully!");
    response.sendRedirect("hospital-addDetails.jsp");
    }else{
    request.getSession();
    session.setAttribute("failed", " Failed to Add Details!");
    response.sendRedirect("hospital-addDetails.jsp");
    }
    }
      
%>
