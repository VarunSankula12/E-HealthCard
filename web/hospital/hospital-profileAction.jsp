<%@page import="com.codebook.hospital.hospitalDao"%>
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
            } else if (fieldName.equals("regid")) {
                b.setGender(fieldValue);
            } else if (fieldName.equals("branch")) {
                b.setBranch(fieldValue);
            } else if (fieldName.equals("established")) {
                b.setDob(fieldValue);
            }else if (fieldName.equals("mobile")) {
                b.setMobile(fieldValue);
            }else if (fieldName.equals("specific")) {
                b.setEmail(fieldValue);
            } 
        }
    }
    String query="update hospital h join hospitaldetails hd on h.id=hd.id AND h.name=hd.name SET h.name=?,h.branch=?,h.mobile=?,hd.established=?,hd.specific=?,h.upload_image=? where h.id=?";
    hospitalDao obj=new hospitalDao();
    int rowCount=obj.ProfileUpdate(query, b);
    if(rowCount>0){
    request.getSession();
    session.setAttribute("success", "Profile Updated Successfully!");
    response.sendRedirect("hospital-profile.jsp");
    }else{
    request.getSession();
    session.setAttribute("failed", "Profile Updation Failed!");
    response.sendRedirect("hospital-profile.jsp");
    }
    

    }
%>