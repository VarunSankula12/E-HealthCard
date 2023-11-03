<%@page import="com.codebook.user.userDao"%>
<%@page import="com.codebook.bean.bean"%>
<%@page import="java.util.*,java.sql.*"%>
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
    <link rel="stylesheet" href="css/style1.css">
    <style>
      body{
    background: lightgrey;
}
.main{
    background-color: #fff;
}
.mycol{
    padding-left: 0;
    padding-right: 0;
}
.xcol{
    padding-left: 50px;
    padding-right: 50px;
}
/* .title{
    font-weight: bold;
    color: #ff39c2;
} */
.btn{
    background-color: #6200EA;
    width: 100%;
    height: 50px;
    border: none;
    border-radius: 0;
}
.btn span{
    font-size: 15px;
    font-weight: bold;
}
/* a{
    text-decoration: underline;
    color: #ff39c2!important;
} */
.form-control{
    border: none;
    box-shadow: 0px 0.1px 0px 0px #dae0e5;
    border-radius: 0;
}
.jk,
.lm{
    box-shadow: 0px 0.5px 0px 0px #dae0e5!important;
}
.form-contro input [type="text"],
.form-control input [type="email"],
.form-control input [type="password"]
{
    color: black;
}

.form-control:focus{
	outline: 0;
	box-shadow: 0px 0.5px 0px 0px #dae0e5!important;
}

.form-control-placeholder{
	position: absolute;
	top: 0;
	padding: 7px 0 0 0;
	transition: all 300ms;
	opacity: 0.5;
}
.form-control:focus+.form-control-placeholder,
.form-control:valid+.form-control-placeholder {
	font-size: 80%!important;
	transform: translate3d(0,-100%,0)!important;
	opacity: 1!important;
}
    </style>
   
    
    <script type="text/javascript">  
            
        function validateuser(){  
            
        var name=document.myform.name.value;
        var email=document.myform.email.value;
        var mobile=document.myform.mobile.value;
        var aadhar=document.myform.aadhar.value;
        var address=document.myform.address.value;
        var proof=document.myform.proof.value; 
        var file=document.myform.file.value;
        
        var emailpattern = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/; // to validate email id
        var letter = /[a-z]/;
        var upper = /[A-Z]/;
        var number = /[0-9]/;

        if (name===""){ 
            Swal.fire('Name Cannot be empty');
                     
          return false;  
        }
        if (email===""){
            Swal.fire("E-mail cannot be empty");           
            return false;
        }
        if(!email.match(emailpattern)){
            Swal.fire("Invalid Email format");             
            return false;
        }
        if(mobile===""){
            Swal.fire("Provide Mobile number");
            return false;
        }
        if(mobile.length!==10){
            Swal.fire("Missing length of Mobile number");
            return false;
        }
         if(isNaN(mobile)){
            Swal.fire("Invalid Mobile number");
            return false;
        }
       
        if (aadhar===""){
            Swal.fire("aadhar cannot be blank");            
            return false;
        }
        if (address===""){
            Swal.fire("Address cannot be blank");            
            return false;
        }
        if (proof===""){
           Swal.fire("Proof cannot be blank");            
            return false;
        }
         if (file===''){
           Swal.fire("please upload the file it should not be empty");          
            return false;
            }
        
        
    }  
    </script>
   
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
     <script>
        var successMessage = '${sessionScope.warning}';
        if (successMessage !== '') {
            Swal.fire({
                icon: 'warning',
                title: 'Failed!',
                text: successMessage,
                confirmButtonText: 'OK'
            });

            <% session.removeAttribute("warning"); %>
        }
          
    </script>
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
        <br>
        <br><br><br><br>
       
<%
    String email=(String)session.getAttribute("email");
    String password=(String)session.getAttribute("password");
    bean b=new bean();
    b.setEmail(email);
    b.setPassword(password);
    String query="select * from user where email=? && password=?";
    userDao obj=new userDao();
    ResultSet rs=obj.Table(query, b);
    if(rs.next()){
%>
        
        <div class="container d-flex justify-content-center my-5">
          <div class="row my-2 mx-2 main">
              <!--left-column-->
              <div class="col-md-4 col-12 mycol">
                  <!--image-->
                  <img src="images/d2.jpg"width="100%" height="100%">
              </div>
              <!--right-column-->
              <div class="col-md-8 col-12 xcol">
                  <h2 class="title pt-5 pb-3">Apply for HealthCard</h2>
                  <form action="user-apply-healthAction.jsp" method="POST" id="myform"onsubmit="return validateuser()" name="myform" class="contactForm" enctype="multipart/form-data">
                      <div class="row rone">
                          <div class="form-group col-md-6 fone py-3">
                              <input type="text" name="name" id="name" class="form-control jk" value="<%= rs.getString("name")%>" readonly>
                          </div>
                          <div class="form-group col-md-6 fone py-3">
                              <input type="text" name="email" id="email" class="form-control jk" value="<%= rs.getString("email")%>" readonly>
                          </div>
                      </div>
                      <div class="row rtwo">
                          <div class="form-group col-md-6 ftwo py-3">
                              <input type="text" name="aadhar" id="aadhar" class="form-control jk" maxlength="14" oninput="formatAadhar(this)" placeholder="aadhar Number">
    <p id="aadharErrorMessage" style="color: red;"></p>
                          </div>
                        <div class="form-group col-md-6 ffive py-3">
                          <input type="text" name="mobile" id="mobile" class="form-control jk" value="<%= rs.getString("mobile")%>" readonly>
                      </div>
                          
                      </div>
                      <div class="row rthree">
                          <div class="form-group col-md-6 fthree py-3">
                               <select class="form-control jk" name="proof" id="proof" >
                                    <option value="" disabled selected>Select your idproof</option>
                                    <option value="Ration Card">Ration Card</option>
                                    <option value="Pan Card">Pan Card</option>
                                    <option value="Voter ID">Voter ID</option>
                                    <option value="Birth Certificate">Birth Certificate</option>
                                </select>
                          </div>
                        <div class="form-group col-md-6 ftwo py-3">
                          <input type="text" name="address" id="address" class="form-control jk" placeholder="Address" value="<%= rs.getString("address")%>" readonly>
                      </div>
                          
                      <div class="row rfour">
                          <div class="form-group col-md-6 ftwo py-3 ">
                              <input type="file" name="file" id="file" class="form-control jk" />
                           </div>
                      </div>
                      </div>
                      <div class="row rfive">
                          <div class="form-group col-md-6 fseven py-3">
                              <button type="submit" class="btn btn-primary"><span>Apply</span></button>
                          </div>
                        
                      </div>
                  </form>
              </div>
          </div>
      </div>
          
<%
    }
%>
         




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
    
    <script>
        function formatAadhar(input) {
            // Remove any non-numeric characters and limit to 12 digits
            let aadharNumber = input.value.replace(/[^0-9]/g, '').substring(0, 12);

            // Format the Aadhar number with hyphens
            let formattedAadhar = '';
            for (let i = 0; i < aadharNumber.length; i++) {
                if (i > 0 && i % 4 === 0) {
                    formattedAadhar += '-';
                }
                formattedAadhar += aadharNumber.charAt(i);
            }

            input.value = formattedAadhar;

            // Display an error message if the input is invalid
            let errorMessage = document.getElementById("aadharErrorMessage");
            if (aadharNumber.length !== 12) {
                errorMessage.textContent = "Aadhar number must be 12 digits.";
            } else {
                errorMessage.textContent = "";
            }
        }
    </script>

</body>

</html>
