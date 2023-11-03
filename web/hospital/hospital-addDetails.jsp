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
    <style>
        @import url('https://fonts.google.com/specimen/Roboto+Slab?query=roboto+slab');


.card{
	border: none;
	border-radius: 0;
	width: 550px;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.1)
}

h2{
	color: #028282;
	padding: 10px 0 20px;
	font-family: Roboto Slab!important;
	font-weight: bold;
}

.first{
	margin-top: 0!important;
}
.form-control{
	border-radius: 0;
}
.form-group label{
	font-size: 14px;
	font-weight: bold;
}
.btn-primary span{
	font-size: 15px;
}


    </style>
      <script type="text/javascript">  
            
        function validateuser(){  
            
        var id=document.myform.id.value;
        var name=document.myform.name.value;
        var mobile=document.myform.mobile.value;
        var specific=document.myform.specific.value;
        var established=document.myform.established.value;
        var treatment=document.myform.treatment.value;
        if (id===""){
            Swal.fire("id cannot be empty");           
            return false;
        }
        if (name===''){
           Swal.fire("name cannot not be empty");          
            return false;
            } 
       if (mobile===''){
           Swal.fire("mobile cannot not be empty");          
            return false;
            } 
      if (specific===''){
           Swal.fire("specific cannot not be empty");          
            return false;
            } 
      if (established===''){
           Swal.fire("established cannot not be empty");          
            return false;
            } 
      if (treatment===''){
           Swal.fire("Treatment cannot not be empty");          
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
	<%
        String email=(String)session.getAttribute("hemail");
        String password=(String)session.getAttribute("hpassword");
        bean b=new bean();
        b.setEmail(email);
        b.setPassword(password);
        String query="select * from hospital where email=? && password=?";
        userDao obj=new userDao();
        ResultSet rs=obj.Table(query, b);
        if(rs.next()){
        String id=rs.getString("id");
        %>
    <div class="container">
        <div class="row">
           
            <div class="card d-flex justify-content-center mx-auto my-3 p-5">
               <form action="hospital-addDetailsAction.jsp" method="POST" id="myform" onsubmit="return validateuser()" name="myform" class="contactForm">
                <h2>Add Details</h2>
            
                    <div class="form-row">
                        <div class="form-group col-md-6 first">
                              <label for="id">REG ID <span>*</span></label>
                              <input type="text" class="form-control" id="id" name="id" value="<%= id%>" readonly>
                              <div id="lname_error" class="val_error"></div>
                        </div>
                        <div class="form-group col-md-6 first">
                             <label for="name">HOSPITAL NAME <span>*</span></label>
                             <input type="text" class="form-control" id="name" name="name" value="<%= rs.getString("name")%>" readonly>
                             <div id="fname_error" class="val_error"></div>
                           </div>
                           	
                      </div>
                      <div class="form-row">
                        
                           <div class="form-group col-md-6">
                              <label for="mobile">LANDLINE NO <span>*</span></label>
                              <input type="text" class="form-control" id="mobile" name="mobile" value="<%= rs.getString("mobile")%>" readonly>
                              <div id="phone_error" class="val_error"></div>
                        </div>	
                         <div class="form-group col-md-6">
                            <label for="specific">SPECIFIC <span>*</span></label>
                            <input type="text" class="form-control" id="specific" name="specific">
                            <div id="specific_error" class="val_error"></div>
                          </div>
                      </div>
                      <div class="form-row">
                       
                        <div class="form-group col-md-6">
                           <label for="established">ESTABLISHED <span>*</span></label>
                           <input type="text" class="form-control" id="established" name="established">
                           <div id="specific_error" class="val_error"></div>
                     </div>	
                    
                              </div>
                              <div>
                        <input type="submit" class="btn btn-primary btn-block" value="Update">
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
							<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Contact</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Services</h2>
						<ul class="list-unstyled">
							<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Some Qualified Hospitals
								</a></li>
							<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Afforable Plans</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Have a Questions?</h2>
						<div class="block-23 mb-3">
							<ul>
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
						Copyright &copy;
						<script>document.write(new Date().getFullYear());</script> All rights reserved | </i> by <a
							href="https://codebook.in/" target="_blank">CODEBOOK.in</a>
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