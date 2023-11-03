<%@page import="com.codebook.user.ApplicationNumberGenerator"%>
<%@page import="com.codebook.bean.bean"%>
<%@page import="com.codebook.hospital.hospitalDao"%>
<%@page import="com.codebook.admin.adminDao"%>
<%@page import="com.codebook.admin.ScanQrcode"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*, java.sql.*"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>

<%
    bean b=new bean();
boolean isMultipart = ServletFileUpload.isMultipartContent(request);

if (isMultipart) {
    DiskFileItemFactory factory = new DiskFileItemFactory();
    ServletFileUpload upload = new ServletFileUpload(factory);
    List<FileItem> items = upload.parseRequest(request);

    String hname = null; // Initialize hname variable

    for (FileItem item : items) {
        if (item.isFormField()) { // Check if it's a form field
            String fieldName = item.getFieldName();
            String fieldValue = item.getString();

            if (fieldName.equals("hname")) {
                hname = fieldValue; // Assign the value to hname
                b.setGender(hname); // Set the value in your bean
            }
        }
    }
    String val="";String value1=""; String value2="";
    for (FileItem item : items) {
        if (!item.isFormField()) { 
            String fieldName = item.getFieldName();
            String fileName = new File(item.getName()).getName();
            
            if (fieldName.equals("file")) {
                File tempFile = File.createTempFile("uploadedFile", ".tmp");
                item.write(tempFile); 
                ScanQrcode obj=new ScanQrcode();
                String qrCodeResult = obj.scanQR(tempFile);
                String[] values = qrCodeResult.split(",");
                value1 = values[0].trim();
                value2 = values[1].trim();
                }
            }
        }
        adminDao e1=new adminDao();
                String query="SELECT * FROM card WHERE ApplicationNum='"+value2+"'";
                ResultSet rs=e1.displayData(query);
                String sq="";String email="";
                hospitalDao e2=new hospitalDao();
                if(rs.next()){
                String billid = ApplicationNumberGenerator.generateApplicationNumberforFee();
                b.setPassword(billid);
                email=rs.getString("email");
                b.setName(rs.getString("name"));
                b.setBranch(rs.getString("ApplicationNum"));
                b.setMobile(rs.getString("mobile"));
                b.setEmail(email);
                     sq="INSERT into billing(id,ApplicationNum,name,email,mobile,hname) VALUES(?,?,?,?,?,?)";
                     int rowCount=e2.Billingfee(sq, b);
                     if(rowCount>0){
                     response.sendRedirect("hospital-billing.jsp?email=" + email + "&hname=" + hname+"&billid="+billid);
                    }else{
                        out.println("insertion failed");
                    }
    
    }else{
    %>
    <html>
        <head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
        <body>
            <div class="text-danger text-center">
            <h1>User Not Exists..</h1>
            </div>
        </body>
    </html>
<%
    }
    }


%>
