<%@page import="com.codebook.user.ApplicationNumberGenerator"%>
<%@page import="com.codebook.hospital.hospitalDao"%>
<%@page import="com.codebook.bean.bean"%>
<%@page import="com.codebook.Dynamic.DynamicImage"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="com.codebook.user.userDao"%>
<%@page import="com.codebook.bean.bean"%>
<%@page import="java.sql.*"%>
<%
      bean b=new bean();
        
     
   
     boolean isMultipart = ServletFileUpload.isMultipartContent(request);
    if (isMultipart) {
        DiskFileItemFactory factory = new DiskFileItemFactory();
       
        ServletFileUpload upload = new ServletFileUpload(factory);
        List<FileItem> items = upload.parseRequest(request);
        for(FileItem item: items){
        String fieldName=item.getFieldName();
        String fieldValue = item.getString();
         if (fieldName.equals("file")) {
         Blob img=DynamicImage.getBlobProfile(item);
            b.setBlob(img);
            } 
             
    }
    for (FileItem item : items) {
        if (item.isFormField()) {
            String fieldName = item.getFieldName();
            String fieldValue = item.getString(); 
            
            if (fieldName.equals("name")) {
                b.setName(fieldValue);
            } else if (fieldName.equals("email")) {
                b.setEmail(fieldValue);
            } else if (fieldName.equals("aadhar")) {
                b.setGender(fieldValue);
            } else if (fieldName.equals("mobile")) {
                b.setMobile(fieldValue);
            }  else if (fieldName.equals("proof")) {
                b.setDob(fieldValue);
            } else if (fieldName.equals("address")) {
                b.setAddress(fieldValue);
            } 
        }
    }
    String num = ApplicationNumberGenerator.generateApplicationNumber();
    b.setBranch(num);
    String query1="select * from card where email=?";
    userDao e1=new userDao();
    ResultSet rs=e1.checkCard(query1, b);
    if(rs.next()){
    request.getSession();
    session.setAttribute("warning", "You have already applied for the Card!");
    response.sendRedirect("user-apply-health.jsp");
    }else{
   String query="insert into card(ApplicationNum,name,email,mobile,address,aadhar_num,idproof,upload_image) values(?,?,?,?,?,?,?,?)";
    hospitalDao obj=new hospitalDao();
    int rowCount=obj.NewCard(query, b);
    if(rowCount>0){
    request.getSession();
    session.setAttribute("success", "Applied Successfully!");
    response.sendRedirect("user-apply-health.jsp");
    }else{
    request.getSession();
    session.setAttribute("success", "Failed to Apply!");
    response.sendRedirect("user-apply-health.jsp");
    }
    }

    }


%>