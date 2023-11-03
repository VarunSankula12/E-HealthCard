<%@page import="com.codebook.hospital.hospitalDao"%>
<%@page import="com.codebook.admin.adminDao"%>
<%@page import="com.codebook.bean.bean"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    bean b=new bean();
        int val=0;int rowCount=0;
    int finalAmount=0;
    String date=request.getParameter("date");
    String treatment=request.getParameter("treatment");
    String hname=request.getParameter("hname");
    out.println(hname);
    String email=request.getParameter("email");
    String dname=request.getParameter("dname");
    int amount=Integer.parseInt(request.getParameter("amount"));
    adminDao obj=new adminDao();
    hospitalDao e1=new hospitalDao();
    
    
     String query="SELECT * FROM qr_code WHERE email='"+email+"'";
    ResultSet rs=obj.displayData(query);
    if(rs.next()){
    String q2="INSERT into billdetails(name,useremail,doctor,treatment,fee,date) VALUES(?,?,?,?,?,?)";
    b.setName(hname);
    b.setEmail(email);
    b.setGender(dname);
    b.setMobile(treatment);
    b.setAmount(amount);
    b.setDob(date);
    int result=e1.bill(q2, b);
    if(result>0){
        val=rs.getInt("Amount");
        finalAmount=val-amount;
        out.println(finalAmount);
        if(finalAmount>0){
            String sql="UPDATE qr_code SET Amount=? WHERE email='"+email+"'";
            b.setAmount(finalAmount);
            rowCount=e1.AmountAdj(sql, b);
            if(rowCount>0){
            request.getSession();
            session.setAttribute("amountsucess", "Transaction Successful!");
            response.sendRedirect("hospital-scancard.jsp");
            }else{
            request.getSession();
            session.setAttribute("amountfailed", "Transaction Failed!");
            response.sendRedirect("hospital-scancard.jsp");
            }
        }else{
        request.getSession();
        session.setAttribute("cardbalance", "Transaction Failed! Your Card Balace is low");
        response.sendRedirect("hospital-scancard.jsp");
    }
    }else{
    request.getSession();
    session.setAttribute("billgen", "Bill Generation Failed!");
    response.sendRedirect("hospital-scancard.jsp");
    }    
    
    }else{
    request.getSession();
    session.setAttribute("cardfailed", "User card is not accepted by admin!");
    response.sendRedirect("hospital-scancard.jsp");
    }
%>
