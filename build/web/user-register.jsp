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
            color: #000;
            overflow-x: hidden;
            height: 100%;
            background-color: #EEEEEE;
            background-repeat: no-repeat;
        }

        a {
            color: #000;
        }

        .card0 {
            box-shadow: 0px 4px 8px 0px #757575;
            border-radius: 20px;
        }

        .card1 {
            border-bottom-left-radius: 20px;
            border-top-left-radius: 20px;
            background-color: #512DA8;
            height: 100%;
            color: #fff;
            padding-left: 13%;
            padding-right: 13%;
        }

        .logo {
            margin-top: 30px;
            margin-left: 15px;
            cursor: pointer;
        }

        .card2 {
            border-bottom-right-radius: 20px;
            border-top-right-radius: 20px;
        }

        .social-connect .fa-google-plus {
            color: #df4b37;
            padding: 10px 12px;
            font-size: 20px;
        }

        .social-connect .fa-facebook-square {
            color: #3b5998;
            padding: 10px 15px;
            font-size: 20px;
        }

        .social-connect {
            padding: 3px 0px 3px 3px;
            border-radius: 10px;
            cursor: pointer;
            border: 1px solid #E0E0E0;
        }

        .social-connect:hover {
            background-color: #EEEEEE;
        }

        .line {
            height: 1px;
            width: 45%;
            background-color: #E0E0E0;
            margin-top: 10px;
        }

        .or {
            width: 10%;
        }

        .text-sm {
            font-size: 14px !important;
        }

        input {
            padding: 10px 12px 10px 12px;
            border: 1px solid lightgrey;
            border-radius: 10px;
            margin-bottom: 25px;
            margin-top: 2px;
            width: 100%;
            box-sizing: border-box;
            color: #2C3E50;
            font-size: 14px;
            letter-spacing: 1px;
        }

        input:focus {
            -moz-box-shadow: none !important;
            -webkit-box-shadow: none !important;
            box-shadow: none !important;
            border: 1px solid #512DA8;
            outline-width: 0;
        }

        ::placeholder {
            color: #EEEEEE;
            opacity: 1;
        }

        :-ms-input-placeholder {
            color: #EEEEEE;
        }

        ::-ms-input-placeholder {
            color: #EEEEEE;
        }

        button:focus {
            -moz-box-shadow: none !important;
            -webkit-box-shadow: none !important;
            box-shadow: none !important;
            outline-width: 0;
        }

        .btn-blue {
            background-color: #512DA8;
            width: 100%;
            color: #fff;
            border-radius: 6px;
        }

        .btn-blue:hover {
            background-color: #311B92;
            color: #fff;
            cursor: pointer;
        }

        .card-0 {
            color: #311B92;
            background-color: #fff;
            border-radius: 20px;
            min-height: 352px;
            margin-top: 80px;
            padding: 30px;
        }

        .carousel-indicators {
            position: absolute;
            bottom: -100px;
            display: -webkit-box !important;
        }

        .carousel-indicators li {
            cursor: pointer;
            border-radius: 50% !important;
            width: 40px !important;
            height: 40px !important;
            opacity: 0.5;
            margin: 5px !important;
        }

        .carousel-indicators li.active {
            opacity: 1;
            width: 50px !important;
            height: 50px !important;
            margin-top: 0px !important;
            border: 2px solid #fff;
        }

        .carousel-indicators li#li1 {
            background: url("https://i.imgur.com/IjkibdE.jpg") !important;
            background-size: cover !important;
        }

        .carousel-indicators li#li2 {
            background: url("https://i.imgur.com/oW8Wpwi.jpg") !important;
            background-size: cover !important;
        }

        .carousel-indicators li#li3 {
            background: url("https://i.imgur.com/EUYNvE1.jpg") !important;
            background-size: cover !important;
        }

        .carousel-indicators li#li4 {
            background: url("https://i.imgur.com/ndQx2Rg.jpg") !important;
            background-size: cover !important;
        }

        .carousel-indicators li#li5 {
            background: url("https://i.imgur.com/gazoShk.jpg") !important;
            background-size: cover !important;
        }

        .profile-pic {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            position: absolute;
            top: -50px;
            left: calc(50% - 50px);
        }

        .content {
            color: #000;
            font-size: 14px;
        }

        .social {
            margin-top: 150px;
        }

        @media screen and (max-width: 991px) {
            .card1 {
                border-bottom-left-radius: 0px;
                border-top-right-radius: 20px;
            }

            .card2 {
                border-bottom-left-radius: 20px;
                border-top-right-radius: 0px;
            }
        }
        .custom-dropdown {
                width: 100%;
                height: 40px;
                border: 1px solid #ccc;
                border-radius: 5px;
                padding: 8px;
                background-color: #ffffff;
                color: #333;
        }
    </style>
    <script type="text/javascript">  
            
        function validateuser(){  
            
        var name=document.myform.name.value;
        var mobile=document.myform.mobile.value;
        var email=document.myform.email.value;
        var gender=document.myform.genderval.value;
        var address=document.myform.address.value;
        var dob=document.myform.dob.value;
        var password=document.myform.password.value;
        var cpassword=document.myform.cpassword.value;  
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
       
        if (gender===""){
            Swal.fire("gender cannot be blank");            
            return false;
        }
        if (address===""){
            Swal.fire("Address cannot be blank");            
            return false;
        }
        if (dob===""){
           Swal.fire("Date Of birth cannot be blank");            
            return false;
        }
        
        if (password===''){
           Swal.fire("password should not be empty");          
            return false;
            }
        
        if (!letter.test(password)) {
            Swal.fire("Please make sure password includes a lowercase letter.");
                return false;
            }
        if (!number.test(password)) {
            Swal.fire("Please make sure Password Includes a Digit");
                return false;
            }
        if (!upper.test(password)) {
            Swal.fire("Please make sure password includes an uppercase letter.");
                return false;
            } 
             if (cpassword===''){
           Swal.fire(" confirm password should not be empty");          
            return false;
            }
        if(cpassword!==password){
            Swal.fire("password and confirm password must match");            
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
                            <p class="mb-0 register-link"><a href="hospital-login.jsp" class="mr-3">Hospital</a>
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
                    <li class="nav-item"><a href="index.html" class="nav-link"><span>Home</span></a></li>
                    <li class="nav-item"><a href="about.jsps" class="nav-link"><span>About</span></a></li>
                    <li class="nav-item"><a href="admin-login.jsp" class="nav-link"><span>Admin</span></a></li>
                    <li class="nav-item"><a href="user-login.jsp" class="nav-link"><span>User</span></a></li>
                    <li class="nav-item"><a href="contact.jsp" class="nav-link"><span>Contact</span></a></li>
                    <li class="nav-item cta mr-md-2"><a href="user-login.jsp" class="nav-link">Apply Health Card</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <br>
    <br><br>
  

    <div class="container-fluid px-1 px-md-5 py-5 mx-auto">
        <div class="card card0 border-0">
            <div class="row d-flex">
                <div class="col-lg-5">
                    <div class="col-md-12 bg-black   d-md-block mt-5">
                        <img src="images/u2.webp " alt="login form" class="img-fluid"
                            style=" height:400px; width:100%" />
                    </div>


                </div>
                <div class="col-lg-7">
                    <div class="card2 card border-0 px-4 px-sm-5 py-5">
                        <h3 class="mb-1">Sign up </h3>

                        <form action="userRegAction.jsp" method="POST" id="myform" onsubmit="return validateuser()" name="myform" class="contactForm" enctype="multipart/form-data">
                        <div class="row mt-3">
                            <div class="col-md-6">
                                <label class="mb-0">
                                    <h6 class="mb-0 text-sm">Full Name</h6>
                                </label>
                                <input type="text" name="name" id="name" placeholder="John Doe">
                            </div>
                            <div class="col-md-6">
                                <label class="mb-0">
                                    <h6 class="mb-0 text-sm">Email</h6>
                                </label>
                                <input type="text" name="email" id="email" placeholder="johndoe123">
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-6">
                                <label class="mb-0">
                                    <h6 class="mb-0 text-sm">Mobile</h6>
                                </label>
                                <input type="text" name="mobile" id="mobile" placeholder="98480*****">
                            </div>
                            <div class="col-md-6">
                                <label class="mb-0">
                                    <h6 class="mb-0 text-sm">Gender</h6>
                                </label><br>
                                <select class="form-select custom-dropdown" name="gender" id="genderval" >
                                    <option  disabled selected>Select Gender</option>
                                    <option value="Male">Male</option>
                                    <option value="Female">Female</option>
                                    <option value="Other">Other</option>
                                </select>
                                
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-6">
                                <label class="mb-0">
                                    <h6 class="mb-0 text-sm">Address</h6>
                                </label>
                                <input type="text" name="address" id="address" placeholder="13-2 s">
                            </div>
                            <div class="col-md-6">
                                <label class="mb-0">
                                    <h6 class="mb-0 text-sm">Date of Birth</h6>
                                </label>
                                <input type="date" name="dob" id="dob" placeholder="12/9/99">
                            </div>
                        </div>

                        <div class="row mt-3">
                            <div class="col-md-6">
                                <label class="mb-0">
                                    <h6 class="mb-0 text-sm">Password</h6>
                                </label>
                                <input type="password" name="password" id="password"
                                    placeholder="&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;">
                            </div>
                            <div class="col-md-6">
                                <label class="mb-0">
                                    <h6 class="mb-0 text-sm">Confirm Password</h6>
                                </label>
                                <input type="password" name="cpassword" id="cpassword"
                                    placeholder="&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;">
                            </div>
                        </div>
                            <div class="row mt-3">
                            <div class="col-md-6">
                                <label class="mb-0">
                                    <h6 class="mb-0 text-sm">Profile Pic</h6>
                                </label>
                                <input type="file" name="file" id="file">
                            </div>
                           
                        </div>

                        <div class="row mb-4">
                            
                            <div class="col-6">
                            <input type="submit" class="btn btn-blue text-center mb-1 py-2" value="Register">
                            </div>
                        </div>
                        <div class="row px-3 mb-3">
                            <p class="mb-5" style="color: #393f81;">Already have account? 
                                <a href="user-login.jsp" style="color: #393f81;"><b>Login here</b></a></p>
                        </div>
                          </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--register end-->

    <br>






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
                        <script>document.write(new Date().getFullYear());</script> All rights reserved | This template
                        is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a
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