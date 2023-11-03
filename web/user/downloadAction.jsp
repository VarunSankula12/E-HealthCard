<%@page import="java.io.FileOutputStream"%>
<%@page import="java.nio.charset.StandardCharsets"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="com.codebook.admin.adminDao"%>
<%@page import="com.codebook.bean.bean"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    
    bean b = new bean();
    String name="";
    InputStream inputStream = null;
    adminDao obj = new adminDao();
    String email = (String) session.getAttribute("email");
    String sql="SELECT * FROM user WHERE email='"+email+"'";
    ResultSet result=obj.displayData(sql);
    if(result.next()){
        name=result.getString("name");
    }
    String query = "SELECT QR FROM qr_code WHERE email='" + email + "'";
    ResultSet rs = obj.displayData(query);
     if (rs.next()) {
            Blob blob = rs.getBlob("QR");
    response.setContentType("image/png");
    response.setHeader("Content-Disposition", "attachment; filename=" + name + ".png");
    
    InputStream imageStream = blob.getBinaryStream();
    OutputStream outputStream = response.getOutputStream();
    
    byte[] buffer = new byte[4096];
    int bytesRead;
    while ((bytesRead = imageStream.read(buffer)) != -1) {
        outputStream.write(buffer, 0, bytesRead);
    }
    
    imageStream.close();
    outputStream.close();

        
        }
    
%>
