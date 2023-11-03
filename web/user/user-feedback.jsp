<%@page import="com.codebook.admin.adminDao"%>
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
    <link rel="stylesheet" href="css/rating.css">

    
<script type="text/javascript">  
            
        function validateuser(){  
            
        var name=document.myform.name.value;
        var treatment=document.myform.treatment.value;
        var feedback=document.myform.feedback.value;
        var rating = document.querySelector('input[name="a"]:checked');
       
        if (name===""){
            Swal.fire("Hospital name cannot be empty");           
            return false;
        }
        if (treatment===''){
           Swal.fire("Treatment should not be empty");          
            return false;
            } 
        if (feedback===''){
           Swal.fire("Feedback should not be empty");          
            return false;
            } 
        if (!rating) {
        Swal.fire("Please select a rating");
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

    <!-- my card start -->
   
   <%
       int count=0;int k=0;
       ArrayList<String> list=new ArrayList<>();
       adminDao obj=new adminDao();
       String query="SELECT * FROM hospital WHERE status='ACCEPTED'";
       ResultSet rs=obj.displayData(query);
       while(rs.next()){
            count++;
            list.add(rs.getString("name"));
            }
       
   %>

      <div class="about_area " >
        <div class="container" >
            <div class="row mb-5" style="padding-right:50px; ">
              <div class="col-xl-12 col-lg-12" >
                <div class="card">
                  <div class="card-body">
                      <form  action="user-feedbackAction.jsp" method="POST" id="myform" onsubmit="return validateuser()" name="myform" class="contactForm">
                      
                    <div class="col-lg-12 grid-margin stretch-card">
                        <div class="card">
                          <div class="card-body">
                             <h4 class="card-title" style="color: rgb(41, 102, 235);">Add Your Feedback</h4><hr><br>
                          
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group row">
                                         <label class="col-sm-3 col-form-label" style="color: rgb(75, 75, 77);">Hospital Name</label>
                                          <div class="col-sm-7">
                                                <select class="form-control" name="name" id="name">
                                                    <option value="" disabled selected>Select Hospital</option>
                                                    <%
                                                        String hospitalName="";
                                                        Iterator<String> it=list.iterator();
                                                        while(it.hasNext()){
                                                        hospitalName=it.next();
                                                        
                                                    %>
                                                    <option value="<%= hospitalName%>"><%= hospitalName%></option>
                                                    <%
                                                        }
                                                    %>
                                                
                                                </select>
                                          </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                      <div class="form-group row">
                                       <label class="col-sm-3 col-form-label" style="color: rgb(75, 75, 77);">Treatment Used</label>
                                        <div class="col-sm-7">
                                          <input type="text" class="form-control" name="treatment" id="treatment">
                                        </div>
                                      </div>
                                  </div>
                                    <div class="col-md-12">
                                        <div class="form-group row">
                                         <label class="col-sm-3 col-form-label" style="color: rgb(75, 75, 77);">Overall Feedback</label>
                                          <div class="col-sm-7">
                                              <input type="text" class="form-control" name="feedback" id="feedback">
                                          </div>
                                        </div>
                                    </div>
                                    </div>
                                </div>
                                
                            
                          </div>
                        </div>
                  
                    
                     
                      <div class="table-responsive pt-3">
                        <table class="table table-striped table-bordered">
                         <thead>
                           <tr>
                             <th colspan="4">
                                 <center><h4 class="card-title" style="color: rgb(45, 62, 219);">Your Rating</h4></center>
                             </th>
                           </tr>
                         </thead>
                          <tbody>
                           <tr>
                              <td>
                                 How much do you rate this hospital?
                                 <fieldset class="star-rating">
                                 <div class="star-rating__stars"> 
                                    <input class="star-rating__input" type="radio" name="a" value="1" id="a-1" />
                                    <label class="star-rating__label" for="a-1" aria-label="One"></label>
                                    <input class="star-rating__input" type="radio" name="a" value="2" id="a-2" />
                                    <label class="star-rating__label" for="a-2" aria-label="Two"></label>
                                    <input class="star-rating__input" type="radio" name="a" value="3" id="a-3" />
                                    <label class="star-rating__label" for="a-3" aria-label="Three"></label>
                                    <input class="star-rating__input" type="radio" name="a" value="4" id="a-4" />
                                    <label class="star-rating__label" for="a-4" aria-label="Four"></label>
                                    <input class="star-rating__input" type="radio" name="a" value="5" id="a-5" />
                                    <label class="star-rating__label" for="a-5" aria-label="Five"></label>
                                    <div class="star-rating__focus"></div>
                                  </div>
                                </fieldset>
                          
                              </td>
                           </tr>
                          </tbody>
                        </table>
                      </div>
                      <br><br>
                      <center><input type="submit" class="btn btn-warning" value="Submit Here"></center>
                      </form>
                    </div>
                </div>
              </div>
            </div>
          </div> 
        </div>
   
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
                        <script>document.write(new Date().getFullYear());</script> All rights reserved |</i> by 
                        <a href="https://codebook.in/" target="_blank">CODEBOOK.in</a>
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