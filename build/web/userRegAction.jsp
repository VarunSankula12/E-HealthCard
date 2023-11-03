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
            } else if (fieldName.equals("mobile")) {
                b.setMobile(fieldValue);
            } else if (fieldName.equals("gender")) {
                b.setGender(fieldValue);
            } else if (fieldName.equals("address")) {
                b.setAddress(fieldValue);
            } else if (fieldName.equals("dob")) {
                b.setDob(fieldValue);
            } else if (fieldName.equals("password")) {
                b.setPassword(fieldValue);
            } else if (fieldName.equals("cpassword")) {
                b.setCpassword(fieldValue);
            } 
        }
    }
    userDao obj=new userDao();
    String s="SELECT * FROM user where email=?";
    ResultSet result=obj.checkCard(s, b);
    if(result.next()){
        request.getSession();
    session.setAttribute("warning", "User Already Registered!");
    response.sendRedirect("user-register.jsp");
    }else{
    String query="insert into user(name,email,mobile,gender,address,dob,password,cpassword,upload_image) values(?,?,?,?,?,?,?,?,?)";
    
    int rowCount=obj.Add(query, b);
    if(rowCount>0){
    request.getSession();
    session.setAttribute("success", "Registration Successful!");
    response.sendRedirect("user-login.jsp");
    }else{
    request.getSession();
    session.setAttribute("failed", "Registration Failed!");
    response.sendRedirect("user-register.jsp");
    }
    }
   
 

    }
%>