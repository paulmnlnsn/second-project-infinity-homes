<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>

<body class="hold-transition skin-blue layout-top-nav">
	<div class="wrapper">

		<?php include 'includes/navbar.php'; ?>

		<div class="content-wrapper">
			<div class="container">

				<!-- Main content -->
				<section class="content">
					<div class="row">
						<div class="col-sm-9">
							
							<div class="map">
								<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3853.3030475994824!2d120.68796331529099!3d15.031345170403961!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3396f774bf3c9c93%3A0x686be2b20f3454d1!2sInfinity%20Home%20Furnishings!5e0!3m2!1sen!2sph!4v1650959758027!5m2!1sen!2sph" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
							</div>
							<br>
							<div class="row" id="locandcontacts">
								<div class="col-lg-6" id="loc">
									<img src="images\icons and logo\icons8-address-90.png" alt="adddress-logo" width="30" height="30">
									<p><strong>B. Mendoza St., Brgy. Sto. Rosario, City of San Fernando, Pampanga 2000</strong></p>
								</div>
								<div class="col-lg-6" id="loc">
									<img src="images\icons and logo\icons8-contact-90.png" alt="adddress-logo" width="30" height="30">
									<p><strong>Physical store: (045) 403-9855</strong></p>
									<p><strong>Facebook: <a href="https://www.facebook.com/InfinityHomeFurnishingsPH" style="color:black; cursor:pointer;" target="blank">https://www.facebook.com/InfinityHomeFurnishingsPH</a></strong></p>
									<p><strong>Email: <a href="mailto:infinityhome.1969@gmail.com" style="color:black; cursor:pointer;">infinityhome.1969@gmail.com</a></strong></p>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<?php include 'includes/sidebar.php'; ?>
						</div>
					</div>

					<div class="row" id="messageus">
						<?php
							if(isset($_SESSION['error'])){
						        echo "
						          <div class='callout callout-danger text-center'>
						            <p>".$_SESSION['error']."</p> 
						          </div>
						        ";
						        unset($_SESSION['error']);
						      }

						      if(isset($_SESSION['success'])){
						        echo "
						          <div class='callout callout-success text-center'>
						            <p>".$_SESSION['success']."</p> 
						          </div>
						        ";
						        unset($_SESSION['success']);
						      }
						    ?>
							<div class="row">
								<div class="col-md-9 mb-md-0 mb-5">
									<hr>
									<h2 class="h1-responsive font-weight-bold my-4">Get in touch</h2>
									<p class="w-responsive mx-auto mb-5">Do you have any questions? Please do not hesitate to contact us directly. Our team will come back to you within
										a matter of hours to help you.</p>
									<form id="contact-form" name="contact-form" action="contact_send.php" method="POST">

										<!--Grid row-->
										<div class="row">

											<!--Grid column-->
											<div class="col-md-6">
												<div class="md-form mb-0">
													<label for="name" class="">Full name</label>
													<input type="text" id="name" name="name" class="form-control" required/>
												</div>
											</div>
											<!--Grid column-->

											<!--Grid column-->
											<div class="col-md-6">
												<div class="md-form mb-0">
													<label for="email" class="">Email address</label>
													<input type="email" id="email" name="email" class="form-control" required>
												</div>
											</div>
											<!--Grid column-->

										</div>
										<!--Grid row-->

										<!--Grid row-->
										<div class="row">
											<div class="col-md-12">
												<div class="md-form mb-0">
													<label for="subject" class="">Subject</label>
													<input type="text" id="subject" name="subject" class="form-control" required>
												</div>
											</div>
										</div>
										<!--Grid row-->

										<!--Grid row-->
										<div class="row">

											<!--Grid column-->
											<div class="col-md-12">

												<div class="md-form">
													<label for="message">Message</label>
													<textarea type="text" id="message" name="message" rows="2" class="form-control md-textarea" required></textarea>												
												</div>

											</div>
										</div>
										<!--Grid row-->

											<div class="text-right text-md-left">
										<button type="submit" class="btn btn-primary btn-block btn-flat" name="signup"><i class="fa fa-pencil"></i> Send</button>
									</div>

									</form>

								
									<div class="status"></div>
								</div>
								<!--Grid column-->
							</div>
						</div>
				</section>

			</div>
		</div>

		<?php include 'includes/footer.php'; ?>
	</div>

	<?php include 'includes/scripts.php'; ?>
</body>

</html>