<%@page import="com.codebook.admin.adminDao"%>
<%@page import="com.codebook.hospital.OtpGen"%>
<%@page import="java.util.*,java.sql.*"%>
<%
     String date=request.getParameter("date");
    String treatment=request.getParameter("treatment");
    String dname=request.getParameter("dname");
    int amount=Integer.parseInt(request.getParameter("amount"));
    
    
    String mobile=request.getParameter("mobile");
    String email=request.getParameter("email");
    String hname=request.getParameter("hname");
    String otp=request.getParameter("otp");
    String query="SELECT * FROM otp WHERE mobile='"+mobile+"' && otp='"+otp+"'";
        adminDao obj=new adminDao();
        ResultSet rs=obj.displayData(query);
        if(rs.next()){
         String redirectURL = "hospital-add-billingAction.jsp?mobile=" + mobile + "&email=" + email + "&hname=" + hname +"&date=" + date +"&treatment=" + treatment +"&dname="+dname+"&amount="+amount;
        response.sendRedirect(redirectURL);
    }else{
    out.println("user not exists");
    }
   
    
%>