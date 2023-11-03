<%@page import="com.codebook.admin.adminDao"%>
<%@page import="com.codebook.user.userDao"%>
<%@page import="com.codebook.bean.bean"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="com.codebook.user.userDao"%>
<%@page import="com.codebook.bean.bean"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.0/sweetalert.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <title>Mediplus - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

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
        body {
            background: rgb(244, 239, 245)
        }

        .form-control:focus {
            box-shadow: none;
            border-color: #BA68C8
        }

        .profile-button {
            background: rgb(99, 39, 120);
            box-shadow: none;
            border: none
        }

        .profile-button:hover {
            background: #682773
        }

        .profile-button:focus {
            background: #e3dee4;
            box-shadow: none
        }

        .profile-button:active {
            background: #8d808f;
            box-shadow: none
        }

        .back:hover {
            color: #682773;
            cursor: pointer
        }

        .labels {
            font-size: 11px
        }

        .add-experience:hover {
            background: #BA68C8;
            color: #fff;
            cursor: pointer;
            border: solid 1px #BA68C8
        }
    </style>
</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
    <script>
        var successMessage = '${sessionScope.success}';
        if (successMessage !== '') {
            Swal.fire({
                icon: 'success',
                title: 'Success!',
                text: successMessage,
                confirmButtonText: 'OK'
            });

            <% session.removeAttribute("success"); %>
        }
          
    </script>
    <script>
        var successMessage = '${sessionScope.failed}';
        if (successMessage !== '') {
            Swal.fire({
                icon: 'error',
                title: 'Failed!',
                text: successMessage,
                confirmButtonText: 'OK'
            });

            <% session.removeAttribute("failed"); %>
        }
          
    </script>

	<nav  class="navbar navbar-expand-lg navbar-dark ftco_navbar site-navbar-target " id="ftco-navbar" style="background-color:#d3dada ">
		<div class="container"  >
			<a class="navbar-brand" href="index.html"  style="color:black">E-Health Card</a>
			<button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse " id="ftco-nav" >
				<ul class="navbar-nav nav ml-auto " >
                                    <li class="nav-item text-dark"><a href="hospital-index.jsp"  style="color:black" class="nav-link"><span>Home</span></a></li>
					
					
					<li class="nav-item dropdown">
						
                                        <li class="nav-item"><a href="hospital-addDetails.jsp" class="nav-link"  style="color:black"><span>Add Details</span></a></li>
					<li class="nav-item"><a href="hospital-scancard.jsp" class="nav-link"  style="color:black"><span>Scan Card</span></a></li>
					<li class="nav-item"><a href="hospital-profile.jsp" class="nav-link"  style="color:black"><span>My Profile</span></a></li>
					
					<li class="nav-item"><a href="hospital-history.jsp" class="nav-link" style="color:black"><span>My History</span></a></li>
					<li class="nav-item cta mr-md-2"><a href="hospital-feedback.jsp"  style="color:black" class="nav-link">My feedback</a></li>
					<li class="nav-item"><a href="../index.html" style="color:black" class="nav-link"><span>Logout</span></a></li>
				</ul>
			</div>
		</div>
	</nav> 
    <br>
    <%
        
        bean b=new bean();
        String email=(String)session.getAttribute("hemail");
        String password=(String)session.getAttribute("hpassword");
        b.setEmail(email);
        b.setPassword(password);
        String name="";
        String id="";
        String mobile="";
        String branch="";
        String Profilepic="";
        String query1="";
        String query="select * from hospital where email=? && password=?";
        userDao obj=new userDao();
        ResultSet rs=obj.Table(query,b);
        if(rs.next()){
        Blob pic=rs.getBlob("upload_image");
     InputStream inputStream = pic.getBinaryStream();

                     ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                     byte[] buffer = new byte[4096];
                        int bytesRead;
                        while ((bytesRead = inputStream.read(buffer)) != -1) {
                         outputStream.write(buffer, 0, bytesRead);
                                         }
                        Profilepic = Base64.getEncoder().encodeToString(outputStream.toByteArray());

%>
    <div class="container rounded bg-white mt-5 mb-5">
        <div class="row">
            
            <div class="col-md-4 border-right">
                <div class="d-flex flex-column align-items-center text-center p-4 py-4">
                    <img src='data:image/jpeg;base64,<%= Profilepic %>'height="200px",width="80px">
                    <span class="font-weight-bold"><%= rs.getString("name")%> Hospital</span>
                    <span> </span>
                </div>
            </div>
                    <div class=" col-md-8 border-right">
                <div class="p-3 py-5">
                    <form action="hospital-profileAction.jsp" method="post" enctype="multipart/form-data">
                    <div class="d-flex justify-content-between align-items-center ">
                        <h4 class="text-center ml-3 mr-3"><b>My Profile</b></h4>
                    </div>
<%
    name=rs.getString("name");
    id=rs.getString("id");
    mobile=rs.getString("mobile");
    branch=rs.getString("branch");
    query1="select * from hospitaldetails where id='"+id+"'AND name='"+name+"'";
    }
    adminDao e1=new adminDao();
    ResultSet result=e1.displayData(query1);
if(result.next()){
        
%>
            
                    <div class="row mt-3">
                         <div class="col-md-6"><label class="labels">Registration Id</label>
                             <input type="text" name="regid" class="form-control"  value="<%= result.getString("id")%>" readonly>
                        </div>
                        <div class="col-md-6"><label class="labels">Hospital Name</label>
                            <input type="text" name="name" class="form-control"  value="<%= result.getString("name")%>">
                        </div>
                       
                        </div>
                        <div class="row mt-3">
                             <div class="col-md-6"><label class="labels">Hospital Branch</label>
                            <input type="text" name="branch" class="form-control"  value="<%= branch%>">
                        </div>
                        <div class="col-md-6"><label class="labels">Established</label>
                            <input type="text" name="established" class="form-control"  value="<%= result.getString("established")%>" readonly>
                        </div>
                       
                            </div>
                            <div class="row mt-3">
                                 <div class="col-md-6"><label class="labels">Landline No</label>
                            <input type="text" name="mobile" class="form-control"  value="<%= mobile%>">
                        </div>
                                <div class="col-md-6"><label class="labels">Specific</label>
                                    <input type="text" name="specific" class="form-control"  value="<%= result.getString("specific")%>" readonly>
                                </div>
                               
                                    </div>
                                    <div class="row mt-3">
                                        
                                <div class="col-md-6"><label class="labels">Upload Image</label>
                                    <input type="file" name="file" class="form-control">
                                </div>
                                    </div>
<%
    }else{
%>      

                    <div class="row mt-3">
                        
                        <div class="col-md-6"><label class="labels">Registration Id</label>
                            <input type="text" name="regid" class="form-control"  value="<%= id%>" readonly>
                        </div>
                        <div class="col-md-6"><label class="labels">Hospital Name</label>
                            <input type="text" name="name" class="form-control"  value="<%= name%>">
                        </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-6"><label class="labels">Hospital Branch</label>
                            <input type="text" name="branch" class="form-control"  value="<%= branch%>">
                        </div>
                        <div class="col-md-6"><label class="labels">Established</label>
                            <input type="text" name="established" class="form-control"  value="Details Not Yet Added" readonly>
                        </div>
                        
                            </div>
                            <div class="row mt-3">
                                <div class="col-md-6"><label class="labels">Landline No</label>
                            <input type="text" name="mobile" class="form-control"  value="<%= mobile%>">
                        </div>
                                <div class="col-md-6"><label class="labels">Specific</label>
                                    <input type="text" name="specific" class="form-control"  value="Details Not Yet Added" readonly>
                                </div>
                                
                                    </div>
                        <div class="row mt-3">
                            <div class="col-md-6"><label class="labels">Treatments</label>
                                    <input type="text" name="treatment" class="form-control"  value="Details Not Yet Added" readonly>
                                </div>
                             <div class="col-md-6"><label class="labels">Upload Image</label>
                                    <input type="file" name="file" class="form-control">
                                </div>
                        </div>


<%
    }
%>
                    
                    <div class="mt-5 text-center ml-0">
                        <input type="submit" class="btn btn-primary profile-button" value="Update">
                </div>
               </form>
              </div>
            
            </div>
            <div class="col-1"></div>
        </div>
    </div>
    </div>
    </div>


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
                        <script>document.write(new Date().getFullYear());</script> All rights reserved | </i> by <a
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