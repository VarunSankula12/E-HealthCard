<%@page import="com.codebook.admin.adminDao"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="com.codebook.user.userDao"%>
<!DOCTYPE html>
<html>

<head>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.0/sweetalert.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
     <style>
      .image-container {
    cursor: pointer;
}

.modal {
    display: none;
    position: fixed;
    z-index: 1;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    overflow: auto;
    background-color: rgba(0,0,0,0.8);
}

.modal-content {
    margin: auto;
    display: block;
    max-width: 70%;
    max-height: 100vh;
    transform: translate(-50%, -50%) scale(0.9); /* Adjust the scale value for zoom */
    position: absolute;
    top: 50%;
    left: 40%;
}

.close {
    color: white !important; /* Set the text color to white */
    position: absolute;
    top: 20px;
    right: 30px;
    font-size: 30px;
    font-weight: bold;
    cursor: pointer;
}
  </style>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>Welcome To | Bootstrap Based Admin Template - Material Design</title>
    
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script> -->
    <!-- Favicon-->
    <link rel="icon" href="favicon.ico" type="image/x-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

    <!-- Bootstrap Core Css -->
    <link href="plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Waves Effect Css -->
    <link href="plugins/node-waves/waves.css" rel="stylesheet" />

    <!-- Animation Css -->
    <link href="plugins/animate-css/animate.css" rel="stylesheet" />

    <!-- Morris Chart Css-->
    <link href="plugins/morrisjs/morris.css" rel="stylesheet" />

    <!-- Custom Css -->
    <link href="css/style.css" rel="stylesheet">

    <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
    <link href="css/themes/all-themes.css" rel="stylesheet" />
</head>

<body class="theme-red">
    <script>
        var successMessage = '${sessionScope.accepted}';
        if (successMessage !== '') {
            swal({
                icon: 'success',
                title: 'Success!',
                text: successMessage,
                confirmButtonText: 'OK'
            });

            <% session.removeAttribute("accepted"); %>
        }
          
    </script>
    <script>
        var successMessage = '${sessionScope.warning}';
        if (successMessage !== '') {
            swal({
                icon: 'warning',
                title: 'Failed!',
                text: successMessage,
                confirmButtonText: 'OK'
            });

            <% session.removeAttribute("warning"); %>
        }
          
    </script>
    <script>
        var successMessage = '${sessionScope.failed}';
        if (successMessage !== '') {
            swal({
                icon: 'error',
                title: 'Failed!',
                text: successMessage,
                confirmButtonText: 'OK'
            });

            <% session.removeAttribute("failed"); %>
        }
          
    </script>
    <script>
        var successMessage = '${sessionScope.qrfailed}';
        if (successMessage !== '') {
            swal({
                icon: 'error',
                title: 'Failed!',
                text: successMessage,
                confirmButtonText: 'OK'
            });

            <% session.removeAttribute("qrfailed"); %>
        }
          
    </script>
    <script>
        var successMessage = '${sessionScope.rejected}';
        if (successMessage !== '') {
            swal({
                icon: 'success',
                title: 'Card Rejected!',
                text: successMessage,
                confirmButtonText: 'OK'
            });

            <% session.removeAttribute("rejected"); %>
        }
          
    </script>
    <!-- Page Loader -->
    <div class="page-loader-wrapper">
        <div class="loader">
            <div class="preloader">
                <div class="spinner-layer pl-red">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
            </div>
            <p>Please wait...</p>
        </div>
    </div>
    <!-- #END# Page Loader -->
    <!-- Overlay For Sidebars -->
    <div class="overlay"></div>
    <!-- #END# Overlay For Sidebars -->
    <!-- Search Bar -->
    <div class="search-bar">
        <div class="search-icon">
            <i class="material-icons">search</i>
        </div>
        <input type="text" placeholder="START TYPING...">
        <div class="close-search">
            <i class="material-icons">close</i>
        </div>
    </div>
    <!-- #END# Search Bar -->
    <!-- Top Bar -->
    <nav class="navbar">
        <div class="container-fluid">
            <div class="navbar-header">
                <a href="javascript:void(0);" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false"></a>
                <a href="javascript:void(0);" class="bars"></a>
                <a class="navbar-brand" href="admin-index.jsp">E-Health Card ADMIN</a>
                <!-- <i class="material-icons col-amber"></i>  -->
            </div>
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    
                    <li><a href="../index.html"><i class="material-icons">input</i></a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- #Top Bar -->
    <section>
        <!-- Left Sidebar -->
        <aside id="leftsidebar" class="sidebar">
            <!-- User Info -->
            <div class="user-info">
                <div class="image">
                    <img src="images/user.png" width="48" height="48" alt="User" />
                </div>
                <div class="info-container">
                    <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Admin</div>
                    <!-- <div class="email">john.doe@example.com</div> -->
                    <div class="btn-group user-helper-dropdown">
                        <i class="material-icons" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">keyboard_arrow_down</i>
                        <ul class="dropdown-menu pull-right">
                            <li><a href="../index.html"><i class="material-icons">input</i>Sign Out</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- #User Info -->
            <!-- Menu -->
            <div class="menu">
                <ul class="list">
                    <li class="header">MAIN NAVIGATION</li>
                    <li>
                        <a href="admin-index.jsp">
                            <i class="material-icons">home</i>
                            <span>Home</span>
                        </a>
                    </li>  
                    <li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">assignment</i>
                            <span>Hospital's</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="admin-viewhospital.jsp">View Hospital's</a>
                            </li>
                            <li>
                                <a href="admin-managehospital.jsp">Manage Hospital's</a>
                            </li>
                            <li>
                                <a href="admin-pendinghospital.jsp">Pending Hospital's</a>
                            </li>
                            
                        </ul>
                    </li>                    
                    
                    <li  class="active">
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">assignment</i>
                            <span>User</span>
                        </a>
                        <ul class="ml-menu">
                            <li  class="active">
                                <a href="admin-cardreq.jsp">Card Requested</a>
                            </li>
                            <li>
                                <a href="admin-cardholders.jsp">Card Holder's</a>
                            </li>
                            <li>
                                <a href="admin-renewreq.jsp">Renew Request</a>
                            </li>
                            
                        </ul>
                    </li> 
                    
                    <li >
                        <a href="admin-feedback.jsp" >
                            <i class="material-icons">assignment</i>
                            <span>FeedBack</span>
                        </a>
                    </li>
                    
                </ul>
            </div>
           
        </aside>
        <aside id="rightsidebar" class="right-sidebar">
            <ul class="nav nav-tabs tab-nav-right" role="tablist">
                <li role="presentation" class="active"><a href="#skins" data-toggle="tab">SKINS</a></li>
                <li role="presentation"><a href="#settings" data-toggle="tab">SETTINGS</a></li>
            </ul>
           
        </aside>
    </section>

    <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <h2>Card Request</h2>
            </div>

           
            <div class="row clearfix">
                
                        <div class="row clearfix">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="card">
                                    <div class="header">
                                        
                                    </div>
                                    <div class="body table-responsive">
                                        <label class='text-danger'> Note: Tap on image to view </label>
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>Application Number</th>
                                                    <th>Uploaded Proof</th>
                                                    <th>Full Name</th>
                                                    <th>email</th>
                                                    <th>Mobile</th>
                                                    <th>Address</th>
                                                    <th>Proof Type</th>
                                                    <th>Status</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                             <tbody>
<%
        int count=0;
        adminDao obj=new adminDao();
        String query="SELECT c.ApplicationNum,c.name, c.mobile, c.address, c.idproof,c.upload_image,c.status,u.email FROM card c JOIN user u ON c.email = u.email;";
        ResultSet rs=obj.displayData(query);
        String Profilepic="";
        while(rs.next()){
        Blob pic=rs.getBlob("upload_image");
     InputStream inputStream = pic.getBinaryStream();

                     ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                     byte[] buffer = new byte[4096];
                        int bytesRead;
                        while ((bytesRead = inputStream.read(buffer)) != -1) {
                         outputStream.write(buffer, 0, bytesRead);
                                         }
                        Profilepic = Base64.getEncoder().encodeToString(outputStream.toByteArray());
                        count++;
%>
                                           
                                                <tr>
                                                    <div class="image-container">
                                                        <th><%= rs.getString("ApplicationNum")%></th>
            <td>
    <img src='data:image/jpeg;base64,<%= Profilepic %>' height="80px" width="80px" alt="Image" class="myImage" data-modal-id="myModal<%= count %>">
</td>
    </div>
    
<div class="modal" id="myModal<%= count %>">
    <span class="close" data-modal-id="myModal<%= count %>">&times;</span>
    <img class="modal-content" data-modal-id="myModal<%= count %>">
</div>
                                                    
                                                    
                                                    <th><%= rs.getString("name")%></th>
                                                    <td><%= rs.getString("email")%></td>
                                                    <td><%= rs.getString("mobile")%></td>
                                                    <td><%= rs.getString("address")%></td>
                                                    <td><%= rs.getString("idproof")%></td>
                                                    <td><%= rs.getString("status")%></td>
                                                    <td>
      <a  class="btn btn-success" href="admin-AcceptCard.jsp?email=<%=java.net.URLEncoder.encode(rs.getString("email"),"UTF-8")%>">Accept</a> 
        <a class="btn btn-danger" href="admin-RejectCard.jsp?email=<%=java.net.URLEncoder.encode(rs.getString("email"),"UTF-8")%>">Reject</a>

                                                        </td>
                                                </tr>
<%
    }
%>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
            </div>
            <!-- #END# CPU Usage -->
            

            
        </div>
    </section>
<script>
var imageElements = document.querySelectorAll(".myImage");
var modalElements = document.querySelectorAll(".modal");
var closeElements = document.querySelectorAll(".close");

imageElements.forEach(function(img, index) {
    img.onclick = function() {
        var modalId = this.getAttribute("data-modal-id");
        var modal = document.getElementById(modalId);
        var modalImage = modal.querySelector(".modal-content");

        modal.style.display = "block";
        modalImage.src = this.src;
    };
});

closeElements.forEach(function(close) {
    close.onclick = function() {
        var modalId = this.getAttribute("data-modal-id");
        var modal = document.getElementById(modalId);
        modal.style.display = "none";
    };
});

window.onclick = function(event) {
    modalElements.forEach(function(modal) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    });
};


</script>
    <!-- Jquery Core Js -->
    <script src="plugins/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core Js -->
    <script src="plugins/bootstrap/js/bootstrap.js"></script>

    <!-- Select Plugin Js -->
    <script src="plugins/bootstrap-select/js/bootstrap-select.js"></script>

    <!-- Slimscroll Plugin Js -->
    <script src="plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="plugins/node-waves/waves.js"></script>

    <!-- Jquery CountTo Plugin Js -->
    <script src="plugins/jquery-countto/jquery.countTo.js"></script>

    <!-- Morris Plugin Js -->
    <script src="plugins/raphael/raphael.min.js"></script>
    <script src="plugins/morrisjs/morris.js"></script>

    <!-- ChartJs -->
    <script src="plugins/chartjs/Chart.bundle.js"></script>

    <!-- Flot Charts Plugin Js -->
    <script src="plugins/flot-charts/jquery.flot.js"></script>
    <script src="plugins/flot-charts/jquery.flot.resize.js"></script>
    <script src="plugins/flot-charts/jquery.flot.pie.js"></script>
    <script src="plugins/flot-charts/jquery.flot.categories.js"></script>
    <script src="plugins/flot-charts/jquery.flot.time.js"></script>

    <!-- Sparkline Chart Plugin Js -->
    <script src="plugins/jquery-sparkline/jquery.sparkline.js"></script>

    <!-- Custom Js -->
    <script src="js/admin.js"></script>
    <script src="js/pages/index.js"></script>

    <!-- Demo Js -->
    <script src="js/demo.js"></script>
</body>

</html>