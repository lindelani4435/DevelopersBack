<?php

include_once 'connection/dbconnect.php';


if (isset($_POST['formData'])) {


      $username = $_POST['username'];
      $password = $_POST['password'];


      $sql = "SELECT * FROM admin WHERE username='$username';";
      $result = mysqli_query($conn, $sql);

      if (mysqli_num_rows($result) == 1) {
        $row = mysqli_fetch_assoc($result);

        if ($row['password'] == $password ) {
          echo '<script>alert("Welcome to your dashboard!!!")</script>';
          echo "<script>location.replace('dashboard.php');</script>";
        }
        else {
          echo '<script>alert("Password is in correct!!!")</script>';
          echo "<script>location.replace('signin.php');</script>";
        }
      }else {
        echo '<script>alert("user does not exist!!!")</script>';
        echo "<script>location.replace('signin.php');</script>";
      }
}

?>

<!DOCTYPE html>
<html lang="en">
  <head>

      <!-- <div class="container">
      -- <php include 'head.php'; ?> -->
      </div> -->

      <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <!-- Animate CSS -->
    <link rel="stylesheet" href="assets/css/animate.min.css" />
    <!-- Meanmenu CSS -->
    <link rel="stylesheet" href="assets/css/meanmenu.min.css" />
    <!-- Line Awesome CSS -->
    <link rel="stylesheet" href="assets/css/line-awesome.min.css" />
    <!-- Magnific CSS -->
    <link rel="stylesheet" href="assets/css/magnific-popup.css" />
    <!-- Owl Carousel CSS -->
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css" />
    <!-- Owl Theme CSS -->
    <link rel="stylesheet" href="assets/css/owl.theme.default.min.css" />
    <!-- Odometer CSS -->
    <link rel="stylesheet" href="assets/css/odometer.css" />
    <!-- Stylesheet CSS -->
    <link rel="stylesheet" href="assets/css/style.css" />
    <!-- Stylesheet Responsive CSS -->
    <link rel="stylesheet" href="assets/css/responsive.css" />
    <!-- Favicon -->
    <link rel="icon" type="image/png" href="assets/img/favicon.png" />
    <!-- Title -->
    <title>

    </title>
  </head>

  <body>

    <!-- End Footer Area -->

    <!-- Footer bottom Area -->
    <div class="footer-bottom">
      <div class="container">
        <p>
          Copyright @2022. Website developed by
          <a href="https://www.jaspa.co.za" target="_blank">Jaspa Systems</a>
        </p>
      </div>
    </div>
  <!-- Heder Area -->
  <header class="header-area">

<!-- Start Navbar Area -->
<div class="navbar-area">
  <div class="atorn-responsive-nav">
    <div class="container">
      <div class="atorn-responsive-menu">
        <div class="logo">
          <a href="index.php">
            <img
              src="assets/img/logo.png"
              alt="MB Tshabangu Incorporated - Attorneys | Conveyancers | Notaries | Business
Rescue Practitioners"
            />
          </a>
        </div>
      </div>
    </div>
  </div>

  <div class="atorn-nav">
    <div class="container">
      <nav class="navbar navbar-expand-md navbar-light">
        <a class="navbar-brand" href="index.html">
          <img
            src="assets/img/favicon.png"
            width="100"
            alt="MB Tshabangu Incorporated - Attorneys | Conveyancers | Notaries | Business
Rescue Practitioners"
          />
        </a>

        <div class="collapse navbar-collapse mean-menu">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a href="index.php" class="nav-link"> Home </a>

            </li>


          </ul>
        </div>
      </nav>
    </div>


  </div>
</div>
<!-- End Navbar Area -->
</header>
  <!-- End Heder Area -->
  <div class="about-area pb-100">
      <div class="container">

      </div>
      </div>
  <!--Contact Container-->


  <div class="container contact_content py-5">
        <div class="col-12 col-sm-12 col-md-6 col-xl-5 col-xxl-5">
          <form action="signin.php" method="post">
            <div class="form-group">
              <label for="Uname_id" class="my-2">Username</label>
              <input name="username" type="text" id="Uname_id" class="form-control" placeholder="Username">
            </div>

            <div class="form-group">
              <label for="password_id" class="my-2">Password</label>
              <input name="password" type="password" id="password_id" class="form-control" placeholder="*******">
            </div>

            <div class="slider-btn">
                <!-- <a href="#" class="default-btn-one mr-3">Sign In</a> -->
                <button name="formData" class="default-btn-one mr-3" type="submit">Sign In</button>
            </div>
          </form>

          <!-- <button type="button" class="text-capitalized btn btn-dark">Sign In</button> -->

        </div>
      </div>



    <!-- Footer Area-->
      <?php include 'footer.php'; ?>
    <!-- End Footer bottom Area -->

    <!-- Go Top -->
    <div class="go-top">
      <i class="las la-hand-point-up"></i>
    </div>
    <!-- End Go Top -->

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- Meanmenu JS -->
    <script src="assets/js/meanmenu.min.js"></script>
    <!-- Magnific JS -->
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <!-- Owl Carousel JS -->
    <script src="assets/js/owl.carousel.min.js"></script>
    <!-- Odometer JS -->
    <script src="assets/js/odometer.min.js"></script>
    <!-- Appear JS -->
    <script src="assets/js/jquery.appear.js"></script>
    <!-- Form Validator JS -->
    <script src="assets/js/form-validator.min.js"></script>
    <!-- Contact JS -->
    <script src="assets/js/contact-form-script.js"></script>
    <!-- Ajaxchimp JS -->
    <script src="assets/js/jquery.ajaxchimp.min.js"></script>
    <!-- Custom JS -->
    <script src="assets/js/custom.js"></script>
  </body>
</html>
