<%@page import="com.codebook.Dynamic.DynamicImage"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="com.codebook.hospital.hospitalDao"%>
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
            } else if (fieldName.equals("branch")) {
                b.setBranch(fieldValue);
            } else if (fieldName.equals("email")) {
                b.setEmail(fieldValue);
            } else if (fieldName.equals("mobile")) {
                b.setMobile(fieldValue);
            }  else if (fieldName.equals("address")) {
                b.setAddress(fieldValue);
            } else if (fieldName.equals("password")) {
                b.setPassword(fieldValue);
            } else if (fieldName.equals("cpassword")) {
                b.setCpassword(fieldValue);
            } 
        }
    }
    }
    hospitalDao obj=new hospitalDao();
    String s="SELECT * FROM hospital WHERE email=? && branch=?";
    ResultSet result=obj.Check(s, b);
    if(result.next()){
    request.getSession();
    session.setAttribute("warning", "Hospital Already Registered !");
    response.sendRedirect("hospital-reg.jsp");
    }else{
    String query="insert into hospital(name,branch,email,mobile,address,password,cpassword,upload_image) values(?,?,?,?,?,?,?,?)";
    
    int rowCount=obj.Add(query, b);
    if(rowCount>0){
    request.getSession();
    session.setAttribute("success", "Registration Successful!");
    response.sendRedirect("hospital-login.jsp");
    }else{
    request.getSession();
    session.setAttribute("failed", "Registration Failed!");
    response.sendRedirect("hospital-reg.jsp");
    }
    }
    
    


%>