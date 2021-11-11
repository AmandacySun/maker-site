

<?php

    if (isset($_POST['submit'])) {
        require_once("conn.php");
        $query = "SELECT * FROM tutorial " ;
        try{
            $prepared_stmt = $dbo->prepare($query);
            $prepared_stmt->execute();
            $result = $prepared_stmt->fetchAll();
        }catch (PDOException $ex){ // Error in database processing.
            echo $sql . "<br>" . $error->getMessage(); // HTTP 500 - Internal Server Error
        }
}
?>

<?php

    if (isset($_POST['search'])) {
        require_once("conn.php");
        $tutorial_type = $_POST['tutorial_type'];

        $query = "SELECT * FROM tutorial WHERE tutorial_type = :tutorial_type" ;

        try{
            $prepared_stmt = $dbo->prepare($query);
            $prepared_stmt->bindValue(':tutorial_type', $tutorial_type, PDO::PARAM_STR);
            $prepared_stmt->execute();
            $result = $prepared_stmt->fetchAll();
        }catch (PDOException $ex){ // Error in database processing.
            echo $sql . "<br>" . $error->getMessage(); // HTTP 500 - Internal Server Error
        }
}
?>





<html>
	<head>
		<title>Tutorials</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">


				<!-- Header -->
				<header id="header" class="alt">
					<a href="index.html" class="logo"><strong>Vanderbilt Maker Club
					</strong> </a>
					<nav>
						<a href="#menu">Menu</a>
					</nav>
				</header>

				<!-- Menu -->
                <nav id="menu">
					<ul class="links">
						<li><a href="index.html">Home</a></li>
						<li><a href="http://localhost/maker-site-backend/about.php">About Us</a></li>
						<li><a href="http://localhost/maker-site-backend/past_event.php">Past Events</a></li>
						<li><a href="http://localhost/maker-site-backend/future_event.php">Future Events</a></li>
						<li><a href="http://localhost/maker-site-backend/tutorial.php">Tutorials</a></li>
					</ul>
					<ul class="actions stacked">
						<li><a href="login.html" class="button fit">Log In As Administrator</a></li>
					</ul>
				</nav>

				<!-- Banner -->
                				<!-- Note: The "styleN" class below should match that of the header element. -->
                					<section id="banner" class="style2">
                						<div class="inner">
                							<span class="image">
                								<img src="images/memberplaceholder.jpg" alt="" />
                							</span>
                							<header class="major">
                								<h1>Let's Learn Together!</h1>
                							</header>
                							<div class="content">
                								<p>Here you can find all types of resources to
                									get you ready for a maker's adventure!</p>
                							</div>
                						</div>
                					</section>

				<!-- Main -->
					<div id="main" class="alt">


						<!-- Search Engine -->

							<div class="container-fluid">

								<div class="row">
									<div class="col-1"></div>
									<div class="col-10">

										<div class="form-group">
											<div class="row">
											<div class="col-12">

												<form method="post">


												<label id="host_name_search" for="host_name">
                                                    <h2>Enter A Tutorial Type To Search For Tutorials!</h2>
                                                </label>
                                                <div class="row">
                                                 <div class="col-0"></div>
                                                 <div class="col-5">
                                                <input type="text" name="tutorial_type" id="tutorial_type" placeholder="Tutorial Type Here">
                                                  </div>
                                                 <div class="col-7"></div>

                                                </div>


                                                 <div> &nbsp  &nbsp</div>
                                                   <div class="row">
                                                     <div class="col-0"></div>
                                                     <div class="col-5">
                                                        <input type="submit" name="search" id="search" value="Search">
                                                      </div>
                                                      <div class="col-7"></div>
                                                    </div>
                                                    <div> &nbsp  &nbsp</div>

                                                  <div class="row">
                                                    <div class="col-0"></div>
                                                    <div class="col-5">
                                                        <input type="submit" name="submit" id="submit" value="Show All Tutorials">
                                                    </div>
                                                    <div class="col-7"></div>
                                                 </div>

                                                </form>



                                                <?php
                                                if (isset($_POST['submit'])) {
                                                  if ($result && $prepared_stmt->rowCount() > 0) { ?>

                                                     <section id="two" class="spotlights">

                                                        <?php foreach ($result as $row) { ?>
                                                            <section>
                                                                <div class="image">
                        									        <img src="images/tutorial_home.jpg" style="height:405px" alt="" data-position="center center" />
                        								        </div>
                         								            <div class="content">
                         									            <div class="inner">
                         										            <header class="major">
                         											            <a href="https://www.youtube.com/watch?v=3LBTkLsjHGQ">
                         												        <h3><?php echo $row["tutorial_name"]; ?></h3>
                         											         </a>
                         										            </header>
                         										            <p><?php echo $row["tutorial_theme"]; ?></p>
                         									</div>
                         								</div>
                         							</section>
                                                  <?php } ?>
                                                  </section>

                                                <?php } else { ?>
                                                    Sorry, no tutorials are available.
                                                  <?php }
                                                } ?>



 <?php
                                                if (isset($_POST['search'])) {
                                                  if ($result && $prepared_stmt->rowCount() > 0) { ?>

                                                     <section id="two" class="spotlights">

                                                        <?php foreach ($result as $row) { ?>
                                                            <section>
                                                                <div class="image">
                        									        <img src="images/tutorial_home.jpg" style="height:405px" alt="" data-position="center center" />
                        								        </div>
                         								            <div class="content">
                         									            <div class="inner">
                         										            <header class="major">
                         											            <a href="https://www.youtube.com/watch?v=3LBTkLsjHGQ">
                         												        <h3><?php echo $row["tutorial_name"]; ?></h3>
                         											         </a>
                         										            </header>
                         										            <p><?php echo $row["tutorial_theme"]; ?></p>
                         									</div>
                         								</div>
                         							</section>
                                                  <?php } ?>
                                                  </section>
                                                <?php } else { ?>
                                                   <p id="error message">  Sorry, no tutorials are found with type <?php echo $_POST['tutorial_type']; ?>. </p>
                                                  <?php }
                                                } ?>

											</div>
											</div>
										</div>
									</div>
									<div class = "col-1"></div>
								</div>



							</div>
<div> &nbsp  &nbsp</div>

						<!-- Table of Past Events -->
						<section id="two" class="spotlights">

                        							<section>
                        								<div class="image">
                        									<img src="images/3d_printing_tutorial.jpg" style="height:405px" alt="" data-position="center center" />
                        								</div>
                        								<div class="content">
                        									<div class="inner">
                        										<header class="major">
                        											<a href="https://www.youtube.com/watch?v=3LBTkLsjHGQ">
                        												<h3>3D Printing</h3>
                        											</a>
                        										</header>
                        										<p>3D printing or additive manufacturing is a process of making three dimensional solid objects from a digital file.
                        											The creation of a 3D printed object is achieved using additive processes.
                        											In an additive process an object is created by laying down successive layers of material until the object is created.
                        											Each of these layers can be seen as a thinly sliced cross-section of the object.
                        											3D printing is the opposite of subtractive manufacturing which is cutting out / hollowing out a piece of metal or
                        											plastic with for instance a milling machine. 3D printing enables you to produce complex shapes using
                        											less material than traditional manufacturing methods.</p>
                        									</div>
                        								</div>
                        							</section>

                        							<section>
                        								<div class="image">
                        									<img src="images/laser_cutting_tutorial.jpg" style="height:405px"  alt="" data-position="center center" />
                        								</div>
                        								<div class="content">
                        									<div class="inner">
                        										<header class="major">
                        											<a href="https://www.twi-global.com/what-we-do/research-and-technology/technologies/welding-joining-and-cutting/lasers/laser-cutting">
                        												<h3>Laser Cutting</h3>
                        											</a>
                        										</header>
                        										<p>Laser cutting is the largest industrial application of high power lasers; ranging
                        											from profile cutting of thick-section sheet materials for large industrial applications,
                        											to medical stents. The process lends itself to automation with offline CAD/CAM systems controlling
                        											3-axis flatbed, 6-axis robots, or remote systems. Traditionally, CO2 laser sources have dominated the laser cutting industry.
                        											However, recent advances in fibre-delivered, solid-state laser technologies has enhanced the benefits of laser cutting,
                        											by providing the end-user with increased cutting speeds and decreased operating costs.</p>
                        									</div>
                        								</div>
                        							</section>



                        	</section>

				<!-- Contact -->
				<section id="contact">
					<div class="inner">
						<section>
							<form method="post" action="#">
								<div class="fields">
									<div class="field half">
										<label for="name">Name</label>
										<input type="text" name="name" id="name" />
									</div>
									<div class="field half">
										<label for="email">Email</label>
										<input type="text" name="email" id="email" />
									</div>
									<div class="field">
										<label for="message">Message</label>
										<textarea name="message" id="message" rows="6"></textarea>
									</div>
								</div>
								<ul class="actions">
									<li><input type="submit" value="Send Message" class="primary" /></li>
									<li><input type="reset" value="Clear" /></li>
								</ul>
							</form>
						</section>
						<section class="split">
							<section>
								<div class="contact-method">
									<span class="icon solid alt fa-envelope"></span>
									<h3>Email</h3>
									<a href="#">MakeClub@vanderbilt.edu</a>
								</div>
							</section>
							<section>
								<div class="contact-method">
									<span class="icon solid alt fa-phone"></span>
									<h3>Phone</h3>
									<span>(000) 000-0000 x12387</span>
								</div>
							</section>
							<section>
								<div class="contact-method">
									<span class="icon solid alt fa-home"></span>
									<h3>Address</h3>
									<span>2301 Vanderbilt Place<br />
										Nashville, TN 37235<br />
										United States of America</span>
								</div>
							</section>
						</section>
					</div>
				</section>

				<!-- Footer -->
				<footer id="footer">
					<div class="inner">
						<ul class="icons">
							<li><a href="#" class="icon brands alt fa-facebook-f"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon brands alt fa-instagram"><span class="label">Instagram</span></a></li>
						</ul>
						<ul class="copyright">
							<li>&copy; Untitled</li><li>Design:Sunnie, Chang, Amanda</a></li>
						</ul>
					</div>
				</footer>

			</div>
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>