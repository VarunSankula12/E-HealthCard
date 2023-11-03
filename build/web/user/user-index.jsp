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
        <br>
        <section class="ftco-section bg-light" id="blog-section">
            <div class="container">
              <div class="row justify-content-center mb-5 pb-5">
                <div class="col-md-10 heading-section text-center ftco-animate">
                  <h2 class="mb-4">Affordable plans for your loved ones</h2>
                  <p>Be assured of the best with E-Health by your side</p>
                </div>
              </div>
              <div class="row d-flex">
                <div class="col-md-4 ftco-animate">
                  <div class="blog-entry">
                    <a href="blog-single.html" class="block-20" style="background-image: url('images/for\ y.jpg');">
                    </a>
                    <div class="text d-block">
                        <div class="meta mb-3">
                        
                      </div>
                      <h1 class="heading text-center"><a href="#">For You</a></h1>
                      <p><a href="user-health.jsp" class="btn btn-success py-1 px-3 mr-4 ml-5">Health</a><a href="user-viewcard.jsp" class="btn btn-danger py-1 px-3 ml-5">Expired</a></p>
                      <!--<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                      <p><a href="blog-single.html" class="btn btn-primary py-2 px-3">Read more</a></p>-->
                    </div>
                  </div>
              </div>
      
                  <div class="col-md-4 ftco-animate">
                  <div class="blog-entry">
                    <a href="blog-single.html" class="block-20" style="background-image: url('images/fam.webp');">
                    </a>
                    <div class="text d-block">
                        <div class="meta mb-3">
                        <!--<div><a href="#">June 9, 2019</a></div>
                        <div><a href="#">Admin</a></div>
                        <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>-->
                      </div>
                      <h3 class="heading text-center"><a href="#">For Your Family</a></h3>
                      <p><a href="user-health.jsp" class="btn btn-success py-1 px-3 mr-4 ml-5">Health</a><a href="user-viewcard.jsp" class="btn btn-danger py-1 px-3 ml-5">Expired</a></p>
                      <!--<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                      <p><a href="blog-single.html" class="btn btn-primary py-2 px-3">Read more</a></p>-->
                    </div>
                  </div>
                  </div>
      
                  <div class="col-md-4 ftco-animate">
                  <div class="blog-entry">
                    <a href="blog-single.html" class="block-20" style="background-image: url('images/par.jpg');">
                    </a>
                    <div class="text d-block">
                        <div class="meta mb-3">
                        <!--<div><a href="#">June 9, 2019</a></div>
                        <div><a href="#">Admin</a></div>
                        <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>-->
                      </div>
                      <h3 class="heading text-center"><a href="#">For Your Parents</a></h3>
                      <p><a href="user-health.jsp" class="btn btn-success py-1 px-3 mr-4 ml-5">Health</a><a href="user-viewcard.jsp" class="btn btn-danger py-1 px-3 ml-5">Expired</a></p>
                     
                    </div>
                  </div>
                  </div>
      
                 
              </div>
            </div>
          </section>
      
          <section class="ftco-section testimony-section img" style="background-image: url(images/bg_3.jpg);">
              <div class="overlay"></div>
            <div class="container">
              <div class="row justify-content-center pb-3">
                <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
                    <span class="subheading">Read testimonials</span>
                  <h2 class="mb-4">Our User Says</h2>
                </div>
              </div>
              <div class="row ftco-animate justify-content-center">
                <div class="col-md-12">
                  <div class="carousel-testimony owl-carousel ftco-owl">
                    <div class="item">
                      <div class="testimony-wrap text-center py-4 pb-5">
                        <div class="user-img" style="background-image: url(images/person_1.jpg)">
                          <span class="quote d-flex align-items-center justify-content-center">
                            <i class="icon-quote-left"></i>
                          </span>
                        </div>
                        <div class="text px-4">
                          <p class="mb-4"> It is really beneficial for your health and has lot of coverages which can be useful when needed.</p>
                          <p class="name">SURENDER KUMAR</p>
                          <span class="position">User</span>
                        </div>
                      </div>
                    </div>
                    <div class="item">
                      <div class="testimony-wrap text-center py-4 pb-5">
                        <div class="user-img" style="background-image: url(images/person_2.jpg)">
                          <span class="quote d-flex align-items-center justify-content-center">
                            <i class="icon-quote-left"></i>
                          </span>
                        </div>
                        <div class="text px-4">
                          <p class="mb-4">I have been very happy with the way my claims have been handled and resolved. Thank you!</p>
                          <p class="name">VIJAY C GOHIL</p>
                          <span class="position">User</span>
                        </div>
                      </div>
                    </div>
                    <div class="item">
                      <div class="testimony-wrap text-center py-4 pb-5">
                        <div class="user-img" style="background-image: url(images/person_3.jpg)">
                          <span class="quote d-flex align-items-center justify-content-center">
                            <i class="icon-quote-left"></i>
                          </span>
                        </div>
                        <div class="text px-4">
                          <p class="mb-4">It is really beneficial for your health and has lot of coverages which can be useful when needed.</p>
                          <p class="name">RAM KUMAR</p>
                          <span class="position">User</span>
                        </div>
                      </div>
                    </div>
                    <div class="item">
                      <div class="testimony-wrap text-center py-4 pb-5">
                        <div class="user-img" style="background-image: url(images/person_1.jpg)">
                          <span class="quote d-flex align-items-center justify-content-center">
                            <i class="icon-quote-left"></i>
                          </span>
                        </div>
                        <div class="text px-4">
                          <p class="mb-4">I will recommend my friends and family members, yours service is to good and prompt, customer supporting is very good.</p>
                          <p class="name">PRAVEEN KUMAR</p>
                          <span class="position">User</span>
                        </div>
                      </div>
                    </div>
                    <div class="item">
                      <div class="testimony-wrap text-center py-4 pb-5">
                        <div class="user-img" style="background-image: url(images/person_3.jpg)">
                          <span class="quote d-flex align-items-center justify-content-center">
                            <i class="icon-quote-left"></i>
                          </span>
                        </div>
                        <div class="text px-4">
                          <p class="mb-4">I have been very happy with the way my claims have been handled and resolved. Thank you!</p>
                          <p class="name">VIJAY KUMAR</p>
                          <span class="position">User</span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>
          <br><br><br><br><br><br>
   




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