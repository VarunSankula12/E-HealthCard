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
    int yearsToAdd = 0;
    String renewReq = "Renew requested";
    String newDate = "";
    String planamount = "";
    String years = "";
    String to = "";
    bean b = new bean();
    String expiry = request.getParameter("expiry");
    String email = request.getParameter("email");
    newDate = expiry;
    b.setEmail(request.getParameter("email"));
    adminDao e1 = new adminDao();
    String q1 = "SELECT * FROM renewdetails WHERE email='" + email + "'";
    ResultSet rs = e1.displayData(q1);
    if (rs.next()) {
        to = rs.getString("towhom");
        planamount = rs.getString("planamount");
        years = rs.getString("years");
        b.setName(to);
        b.setGender(planamount);
        b.setAddress(years);
    }
    
    b.setBranch(newDate);
    
     yearsToAdd = Integer.parseInt(years);
    
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    Date initialDate = dateFormat.parse(newDate);
    
    Calendar calendar = Calendar.getInstance();
    calendar.setTime(initialDate);
    
    calendar.add(Calendar.YEAR, yearsToAdd);
    
    Date finalDate = calendar.getTime();
    
    SimpleDateFormat finalDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    String finalDateString = finalDateFormat.format(finalDate);
    b.setDob(finalDateString);
    
    SimpleDateFormat currentMonthYearFormat = new SimpleDateFormat("yyyy-MM");
    String currentMonthYear = currentMonthYearFormat.format(new Date());
    
    if (expiry.substring(0, 7).equals(currentMonthYear)) {
        String q = "SELECT * FROM card WHERE email='" + email + "' && renewReq='" + renewReq + "'";
        ResultSet result = e1.displayData(q);
        if (result.next()) {
            String query = "UPDATE card SET renewReq='Renewed' WHERE email=?";
            int accept = e1.Modify(query, b);
            if (accept > 0) {
                String q2 = "UPDATE qr_code SET TotalAmount=?,Amount=?,date=?,expiry=? WHERE email=?";
                int rowCount = e1.RenewUpdate(q2, b);
                if (rowCount > 0) {
                    request.getSession();
                    session.setAttribute("accepted", "Card Renewed Successfully");
                    response.sendRedirect("admin-renewreq.jsp");
                    out.println(finalDateString);
                } else {
                    request.getSession();
                    session.setAttribute("failed", "Failed to Renew Card");
                    response.sendRedirect("admin-renewreq.jsp");
                }
            } else {
                request.getSession();
                session.setAttribute("failed", "Failed to Renew Card");
                response.sendRedirect("admin-renewreq.jsp");
            }
        }
    } else {
            String q3 = "UPDATE card SET renewReq='Declined' WHERE email=?";
            int reject = e1.Modify(q3, b);
            if(reject>0){
                request.getSession();
            session.setAttribute("failed", "Not Yet Expired");
            response.sendRedirect("admin-renewreq.jsp");
            }
            
    }
%>

</body>
</html>
