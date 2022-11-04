<?php

include_once 'connection/dbconnect.php';


if (isset($_POST['formData'])) {

      $diaryTitle = $_POST['diaryTitle'];
      $diaryNote = $_POST['diaryNote'];
      $eventDate = $_POST['eventDate'];
      $eventTime = $_POST['eventTime'];

      //form validation section
      if ($diaryTitle == '' || $diaryNote == '' || $eventDate == '' || $eventTime == '') {
          echo '<script>alert("All Fields are required!!!")</script>';
          echo "<script>location.replace('toDoForm.php');</script>";
      }else {
            if (!preg_match('/^[a-zA-Z]+$/', $diaryTitle)) {
              echo '<script>alert("Enter valid diary title!!!")</script>';
              echo "<script>location.replace('toDoForm.php');</script>";
            }
            //Inserting diary data into database
            $sql = "INSERT INTO diary(diaryTitle,diaryNote,eventDate,eventTime)\n
                    VALUES ('$diaryTitle','$diaryNote','$eventDate','$eventTime')";
            mysqli_query($conn,$sql);

            echo '<script>alert("Diary note captured!!!")</script>';
            echo "<script>location.replace('dashboard.php');</script>";

              }
            }

?>

<!DOCTYPE html>
<html lang="en">
  <head>


  <link rel="stylesheet" href="toDoForm.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <!-- <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script> -->

    <!-- Title -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
  </head>

  <body>



  <div class="sideBar">


    <div class="profile">

     <img src="profille.jpg">

        <div class="lab">
        <h2>Miss Admin</h2>

        </div>

        <div class="line">

        </div>


    </div>


    </div>

    <div class="cards">



<div class="card1">
    <div class="card1Text">
        <h1>0 </h1>
        <label>Clients </label>

        <i style="font-size:24px" class="fa">&#xf0c0;</i>

    </div>

</div>

<div class="card2">

<div class="card1Text">
        <h1>0</h1>
        <label>Matters</label>

        <!-- <i style='font-size:24px' class='fas'>&#xf0b1;</i> -->

        <i class="fa fa-suitcase" style="font-size: 28px; color:white;"></i>

    </div>

</div>

<div class="card3">

<div class="card1Text">
        <h1>5</h1>
        <label>Attorneys</label>

        <!-- <i style='font-size:24px' class='fas'>&#xf516;</i> -->

        <i class="fa fa-gavel" style="font-size: 28px; color:white;"></i>

    </div>

</div>

<div class="card4">

<div class="card1Text">
        <h1>1</h1>
        <label>Finance </label>
        <!-- <i style='font-size:24px' class='far'>&#xf09d;</i> -->
        <i class="fa fa-credit-card" style="font-size: 28px; color:white;"></i>

    </div>

</div>
</div>


  <div class="dash">

    <h1>Dashboad</h1>

  </div>

  <div class="notification">

    <div class="noti">
        <!-- <h4>Notifications</h4> -->

        <button >Notifications <i class="fa fa-bell"></i> </button>



    </div>

  </div>

  <div class="navLink">


  <ul>
  <li ><a href="client.php" id="tag" ><i class="fa fa-users"></i>CLIENTS</a></li>
   <li><a href="matter.php" id="tag"><i class="fa fa-file-text"></i>MATTERS</a></li>
   <li><a href="attorney.php" id="tag"><i class="fa fa-gavel"></i>ATTORNEY</a></li>
    <li><a href="finance.php" id="tag"><i class="fas fa-money"></i>FINANCE</a></li>
    <li><a href="calendar.php" id="tag"><i class="fas fa-book"></i>DIARY</a></li>

  </ul>

  </div>


  <div class="content">

  <!-- <h1>Finance</h1> -->

  <div class="createButton">

  <!-- <button>ADD Finance</button> -->
  <br>

  </div>

  <div class="form-container">
      <form  class="register-form">

      <span>Add To Do List</span>

      <label>Diary Title</label>
        <input
          id="diaryTitle"
          class="form-field"
          type="text"
          placeholder="Diary Title"
          name="title"
        />


        <label>Note</label>
        <input
          id="diaryNote"
          class="form-field"
          type="text"
          placeholder="Diary note"
          name="note"
        />

        <label>Event Date</label>
        <input
          id="eventDate"
          class="form-field"
          type="date"
          placeholder="Event Date"
          name="futureDate"
        />


        <label>Event Time</label>
        <input
          id="guestNo"
          class="form-field"
          type="time"
          placeholder="Event Time"
          name="time"
        />


        <button id="butt" class="form-field" value="submit" type="submit">
          Add
        </button>
      </form>
    </div>

  </div>






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
