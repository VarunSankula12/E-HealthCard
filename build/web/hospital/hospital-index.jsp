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

	<!-- <style>
		.nav{
			display:-moz-inline-box;
		}
	</style> -->
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
	

	<br><br><br>
	<section class="ftco-section ftco-no-pt ftco-no-pb m-5" id="department-section">
		<div class="container-fluid px-0">
			<div class="row no-gutters">
				<div class="col-md-4 d-flex">
					<div class="img img-dept align-self-stretch" style="background-image: url(images/dept-1.jpg);">
						<div class="overlay"></div>
						<div class="container">
							<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start"
								data-scrollax-parent="true">
								<div class="col-md-6 pt-5 ftco-animate">
									<div class="mt-5">
										<h2 class="mb-3">E-Health Card is Applicable.</h2>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>


				<div class="col-md-8">
					<div class="row no-gutters">
						<div class="col-md-4">
							<div class="department-wrap p-4 ftco-animate">
								<div class="text p-2 text-center">
									<div class="icon">
										<span class="flaticon-stethoscope"></span>
									</div>
									<h3><a href="#">Neurology</a></h3>
									<p>medical specialty concerned with the nervous system.</p>
								</div>
							</div>
							<div class="department-wrap p-4 ftco-animate">
								<div class="text p-2 text-center">
									<div class="icon">
										<span class="flaticon-stethoscope"></span>
									</div>
									<h3><a href="#">Surgical</a></h3>
									<p>A surgical is a doctor who's learning to specialize in performing surgery.</p>
								</div>
							</div>
							<div class="department-wrap p-4 ftco-animate">
								<div class="text p-2 text-center">
									<div class="icon">
										<span class="flaticon-stethoscope"></span>
									</div>
									<h3><a href="#">Dental</a></h3>
									<p>Dental is relate to teeth or to the care and treatment of teeth.</p>
								</div>
							</div>
						</div>

						<div class="col-md-4">
							<div class="department-wrap p-4 ftco-animate">
								<div class="text p-2 text-center">
									<div class="icon">
										<span class="flaticon-stethoscope"></span>
									</div>
									<h3><a href="#">Opthalmology</a></h3>
									<p>the specialized field of medicine that focuses on the health of the eye.</p>
								</div>
							</div>
							<div class="department-wrap p-4 ftco-animate">
								<div class="text p-2 text-center">
									<div class="icon">
										<span class="flaticon-stethoscope"></span>
									</div>
									<h3><a href="#">Cardiology</a></h3>
									<p>the branch of medicine that deals with diseases & abnormalities of the heart.</p>
								</div>
							</div>
							<div class="department-wrap p-4 ftco-animate">
								<div class="text p-2 text-center">
									<div class="icon">
										<span class="flaticon-stethoscope"></span>
									</div>
									<h3><a href="#">Traumatology</a></h3>
									<p>Deals with surgical treatment of physical injuries by accidents.</p>
								</div>
							</div>
						</div>

						<div class="col-md-4">
							<div class="department-wrap p-4 ftco-animate">
								<div class="text p-2 text-center">
									<div class="icon">
										<span class="flaticon-stethoscope"></span>
									</div>
									<h3><a href="#">Nuclear Magnetic</a></h3>
									<p>Imaging technique does'nt use radiation, detailed images of body.</p>
								</div>
							</div>
							<div class="department-wrap p-4 ftco-animate">
								<div class="text p-2 text-center">
									<div class="icon">
										<span class="flaticon-stethoscope"></span>
									</div>
									<h3><a href="#">X-ray</a></h3>
									<p>X-ray imaging creates pictures of inside of your body, radiation called
										electromagnetic waves. </p>
								</div>
							</div>
							<div class="department-wrap p-4 ftco-animate">
								<div class="text p-2 text-center">
									<div class="icon">
										<span class="flaticon-stethoscope"></span>
									</div>
									<h3><a href="#">Cardiology</a></h3>
									<p>Diseases of the heart, blood vessels, and circulatory system.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section" id="doctor-section">
		<div class="container-fluid px-5">
			<div class="row justify-content-center mb-5 pb-2">
				<div class="col-md-8 text-center heading-section ftco-animate">
					<h2 class="mb-4">Some Qualified Hospitals</h2>
					<p>Qualified hospital means any hospital licensed as such under State law which has not been
						excluded under the provisions of subpart I of this part.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch" style="background-image: url(images/ya.png);"></div>
						</div>
						<div class="text pt-3 text-center">
							<h3 class="mb-2">Yashoda Hospital</h3>
							<!--<span class="position mb-2">Neurologist</span>-->
							<div class="faded">
								<p>Yashoda Hospitals in Hyderabad are known to provide high quality medical treatment to
									patients via its 3 branches</p>
								<ul class="ftco-social text-center">
									<li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
									<li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
									<li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
									<li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
								</ul>
								<!--<p><a href="#" class="btn btn-primary">Book now</a></p>-->
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch" style="background-image: url(images/care.webp);"></div>
						</div>
						<div class="text pt-3 text-center">
							<h3 class="mb-2">Care Hospital</h3>
							<!--<span class="position mb-2">Ophthalmologist</span>-->
							<div class="faded">
								<p>CARE Hospitals, a part of the Evercare Group, brings international quality healthcare
									to serve patients across the world.</p>
								<ul class="ftco-social text-center">
									<li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
									<li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
									<li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
									<li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
								</ul>
								<!--<p><a href="#" class="btn btn-primary">Book now</a></p>-->
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch" style="background-image: url(images/apollo.jpg);"></div>
						</div>
						<div class="text pt-3 text-center">
							<h3 class="mb-2">Apollo Hospital</h3>
							<!--<span class="position mb-2">Dentist</span>-->
							<div class="faded">
								<p>Apollo Hospitals was the forerunner of integrated healthcare in Asia, as well as
									globally.</p>
								<ul class="ftco-social text-center">
									<li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
									<li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
									<li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
									<li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
								</ul>
								<!--<p><a href="#" class="btn btn-primary">Book now</a></p>-->
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch" style="background-image: url(images/kam.jpg);"></div>
						</div>
						<div class="text pt-3 text-center">
							<h3 class="mb-2">Kamineni Hospital</h3>
							<!--<span class="position mb-2">Pediatrician</span>-->
							<div class="faded">
								<p> Kamineni Hospitals has worked tirelessly to make a difference in the lives of
									patients by providing world-class clinical care.</p>
								<ul class="ftco-social text-center">
									<li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
									<li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
									<li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
									<li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
								</ul>
								<!--<p><a href="#" class="btn btn-primary">Book now</a></p>-->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	

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