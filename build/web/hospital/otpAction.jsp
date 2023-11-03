<%@page import="com.codebook.bean.bean"%>
<%@page import="com.codebook.hospital.hospitalDao"%>
<%@page import="com.codebook.user.ApplicationNumberGenerator"%>
<%@page import="com.codebook.hospital.OtpGen"%>
<%
    String date=request.getParameter("date");
    String treatment=request.getParameter("treatment");
    String hname=request.getParameter("hname");
    String email=request.getParameter("email");
    String dname=request.getParameter("dname");
    String amount=request.getParameter("amount");
    String mobile=request.getParameter("mobile");
    String otp=ApplicationNumberGenerator.generateOtp();
           bean b=new bean();
            b.setMobile(mobile);
            b.setGender(otp);
            String query="INSERT into otp(mobile,otp) VALUES(?,?)";
    hospitalDao e1=new hospitalDao();
    int rowCount=e1.Otpval(query, b);
    if(rowCount>0){
        String senderid = "CODEBK";
        String username = "Codebook";
        String apikey = "56dbbdc9cea86b276f6c";
        String user = "CODEBOOK";
        String message = "Hello "+user+", your OTP for account activation is "+otp+". "
                + "This message is generated from https://www.codebook.in server. Thank you";
        
        OtpGen obj=new OtpGen();
        String status=obj.sendSMS(username, apikey, mobile, senderid, message);
        String redirectURL = "otpValidation.jsp?mobile=" + mobile + "&email=" + email + "&hname=" + hname +"&date=" + date +"&treatment=" + treatment +"&dname="+dname+"&amount="+amount;
        response.sendRedirect(redirectURL);
    }else{
    out.println("Insertion Failed");
    }
%>