<%@page import="java.util.*,java.sql.*"%>
<%@page import="com.codebook.admin.adminDao"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Mediplus - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <!-- <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/brands.min.css" > -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">

    <style>
  

.card {
  width: 355px;
  background-color: #bc57ce;
  border-radius: 5px;
}

.card-image {
  width: 30px;
} 
.col-lg-6{
    background-color: #abc229c9;
}
/* .container-fluid{
    background-color: #bc57ce;
} */


nav,.wrapper{
    padding: 10px 50px;
}

nav div.ml-auto a{
    text-decoration: none;
    font-weight: 600;
    font-size: 0.8rem;
}
.btn.text-uppercase:hover{
    background-color: rgb(236, 220, 220);
    color: #eee;
}
    </style>

</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
    <div class="py-1 bg-black top">
        <div class="container">
            <div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
                <div class="col-lg-12 d-block">
                    <div class="row d-flex">
                        <div class="col-md pr-4 d-flex topper align-items-center">
                            <div class="icon mr-2 d-flex justify-content-center align-items-center"><span
                                    class="icon-phone2"></span></div>
                            <span class="text">+91 9876 543 210</span>
                        </div>
                        <div class="col-md pr-4 d-flex topper align-items-center">
                            <div class="icon mr-2 d-flex justify-content-center align-items-center"><span
                                    class="icon-paper-plane"></span></div>
                            <span class="text">ehealth@gmail.com</span>
                        </div>
                        <div class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right justify-content-end">
                            
                        
                            <p class="mb-0 register-link"><a href="../index.html" class="mr-3"><span>Logout</span></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target"
        id="ftco-navbar">
        <div class="container">
            <a class="navbar-brand" href="index.html">E-Health Card</a>
            <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse"
                data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="oi oi-menu"></span> Menu
            </button>

            <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav nav ml-auto">
                    <li class="nav-item"><a href="user-index.jsp" class="nav-link"><span>Home</span></a></li>
                    <li class="nav-item"><a href="user-cardstatus.jsp" class="nav-link"><span>Card Status</span></a></li>
                    <li class="nav-item"><a href="user-myprofile.jsp" class="nav-link"><span>My Profile</span></a></li>
                    <li class="nav-item"><a href="user-feedback.jsp" class="nav-link"><span>FeedBack</span></a></li>
                    <li class="nav-item cta mr-md-2"><a href="user-apply-health.jsp" class="nav-link">Apply Health Card</a>
                    
                </ul>
            </div>
        </div>
    </nav>
    <br><br><br><br><br>
 
<%
    String status="";
    String issueDate="";
    String expiryDate="";
       String email=(String)session.getAttribute("email");
       adminDao obj=new adminDao();
       String sql="SELECT * FROM qr_code WHERE email='"+email+"'";
       ResultSet result=obj.displayData(sql);
       if(result.next()){
       issueDate=result.getString("date");
       expiryDate=result.getString("expiry");
    }
       String query="SELECT * FROM card WHERE email='"+email+"'";
       ResultSet rs=obj.displayData(query);
       if(rs.next()){
       status=rs.getString("status");
       if(status.equalsIgnoreCase("ACCEPTED")){
%>
    <div class="container-fluid  d-flex justify-content-center" >
            <div class="col-lg-6 col-md-8 col-sm-10 offset-lg-0 offset-md-2 offset-sm-1 pt-lg-0 pt-3 mb-5" style="box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;border-radius:16px;background-color:#eee;">
                <div id="cart" class=""> 
                    <div class="d-flex jusitfy-content-between align-items-center pt-3 pb-2 border-bottom">
                        <div class="item pr-2">
                                <li class="fa fa-user-md" style="font-size: 70px; color:rgb(135, 196, 180)"></li>
                        </div>
                       
                        <div class="ml-auto">
                            <b class="h5" style="font-weight:900;">E-Health Card</b>
                        </div>
                    </div>
                   
                    <div class="d-flex align-items-center">
                        <div class="display-6 text-dark" style="font-weight: 500;">Full Name :</div>
                        <div class="ml-auto text-dark"><%= rs.getString("name")%></div>
                    </div>
                    <div class="d-flex align-items-center py-2">
                        <div class="display-6 text-dark" style="font-weight: 500;">Card No :</div>
                        <div class="ml-auto text-dark"><%= rs.getString("ApplicationNum")%></div>
                    </div>
                    <div class="d-flex align-items-center py-2">
                        <div class="display-6 text-dark" style="font-weight: 500;">Mobile :</div>
                        <div class="ml-auto text-dark"><%= rs.getString("mobile")%></div>
                    </div>
                    <div class="d-flex align-items-center py-2 ">
                        <div class="display-6 text-dark" style="font-weight: 500;">Date of Issue :</div>
                        <div class="ml-auto text-dark"><%= issueDate%></div>
                    </div>
                    <div class="d-flex align-items-center py-2 ">
                        <div class="display-6 text-dark" name="expiryDate" id="expiryDate" style="font-weight: 500;">Expiry :</div>
                        <div class="ml-auto text-dark"><%= expiryDate%></div>
                    </div>
                    <div class="d-flex align-items-center py-2 " >
                        <div class="display-6 text-dark " style="font-weight: 500;">Status :</div>
                        <div class="ml-auto text-dark"><%= rs.getString("status")%></div>
                    </div>
                    <div class="mt-4 d-flex justify-content-start flex-row gap-2 mb-5 ">
                        <a class="btn btn-primary" href="user-viewcard.jsp?expiry=<%= java.net.URLEncoder.encode(expiryDate,"UTF-8")%>" style="color: rgb(241, 239, 239); font-weight: 500;">View Card</a>

                    </div>
                </div>
</div>
</div>
<%
    }else if(status.equalsIgnoreCase("REJECTED")){
    %>
<html>
    <body>
        <h1 class="text-danger text-center"><% out.println("You Application is Rejected");%></h1>
    </body>
</html>
    <%
}else{
%>
<html>
    <body>
        <h1 class="text-danger text-center"><% out.println("You Application is Still Pending");%></h1>
    </body>
</html>
    <%
}
}else{
%>
<html>
    <body>
        <h1 class="text-danger text-center"><% out.println("You have not yet applied for a Card");%></h1>
    </body>
</html>
   <%
}
%>

    <!-- my card end -->




    <footer class="ftco-footer ftco-section img" style="background-image: url(images/footer-bg.jpg);">
        <div class="overlay"></div>
        <div class="container-fluid px-md-5">
            <div class="row mb-5">
                <div class="col-md">
                    <div class="ftco-footer-widget mb-4">
                        <h2 class="ftco-heading-2">E-Health Card</h2>
                        <p>E-Health Card is Perfect Plan to Protect You, Your Family or Your Parents.</p>
                        <ul class="ftco-footer-social list-unstyled mt-5">
                            <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                            <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                            <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md">
                    <div class="ftco-footer-widget mb-4 ml-md-4">
                        <h2 class="ftco-heading-2">Departments</h2>
                        <ul class="list-unstyled">
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Neurology</a></li>
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Opthalmology</a></li>
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Nuclear Magnetic</a></li>
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Surgical</a></li>
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Cardiology</a></li>
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Dental</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md">
                    <div class="ftco-footer-widget mb-4 ml-md-4">
                        <h2 class="ftco-heading-2">Links</h2>
                        <ul class="list-unstyled">
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Home</a></li>
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>About</a></li>
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Admin</a></li>
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Hospital</a></li>
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>User</a></li>
                            <!--<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Pricing</a></li>-->
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Contact</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md">
                    <div class="ftco-footer-widget mb-4">
                        <h2 class="ftco-heading-2">Services</h2>
                        <ul class="list-unstyled">
                            <!--<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Emergency Services</a></li>-->
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Some Qualified Hospitals
                                </a></li>
                            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Afforable Plans</a></li>
                            <!--<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>24 Hours Services</a></li>-->
                        </ul>
                    </div>
                </div>
                <div class="col-md">
                    <div class="ftco-footer-widget mb-4">
                        <h2 class="ftco-heading-2">Have a Questions?</h2>
                        <div class="block-23 mb-3">
                            <ul>
                                <!--<li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>-->
                                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+91 9876 543
                                            210</span></a></li>
                                <li><a href="#"><span class="icon icon-envelope pr-4"></span><span
                                            class="text">ehealth@gmail.com</span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center">

                    <p>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;
                        <script>document.write(new Date().getFullYear());</script> All rights reserved |</i> by <a
                            href="https://codebook.in/" target="_blank">CODEBOOK.in</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>
                </div>
            </div>
        </div>
    </footer>



    <!-- loader -->
    <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
            <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
            <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
                stroke="#F96D00" />
        </svg></div>


    <script src="js/jquery.min.js"></script>
    <script src="js/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/scrollax.min.js"></script>
    <script
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
    <script src="js/google-map.js"></script>

    <script src="js/main.js"></script>

</body>

</html>