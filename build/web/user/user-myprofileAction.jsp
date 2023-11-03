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
    String password=(String)session.getAttribute("password");
    b.setPassword(password);
   
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
            }  else if (fieldName.equals("address")) {
                b.setAddress(fieldValue);
            } else if (fieldName.equals("dob")) {
                b.setDob(fieldValue);
            } 
        }
    }
    String mail=(String)session.getAttribute("email");
  String query="update user set name=?,email=?,mobile=?,address=?,dob=?,upload_image=? where email='"+mail+"'";
    userDao obj=new userDao();
    int rowCount=obj.Modify(query, b);
    if(rowCount>0){
    request.getSession();
    session.setAttribute("success", "Updation Successful!");
    response.sendRedirect("user-myprofile.jsp");
    }else{
    request.getSession();
    session.setAttribute("failed", "Updation Failed!");
    response.sendRedirect("user-myprofile.jsp");
    }
    

    }
%>