<?php
    if(!isset($_SESSION)){
        session_start();
    }
    if(!isset($_SESSION['username'])){
        echo "
        <script>
             alert('Please login to register');
            window.location.href='./index.php#mu-register';
        </script>
        ";
    }
    if(isset($_GET['logout'])){
        if(!isset($_SESSION)){
            session_start();
        }
        session_unset();
        session_destroy();
        echo "<script>alert('Logout Sucessful')</script>";
        echo "<script>location.href='./index.php';</script>";
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Procyon - Event Registration</title>
    <style>
        button {
            padding: 7px 15px;
            font-size: 15px;
            cursor: pointer;
            background-color:#ee6e73;
            color: white;
            border: none;
            border-radius: 7px;
          
        }
        .registration-container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        
        img {
            display: block; 
            margin: 0 auto; 
        }
        h1{
            text-align:center;
        }
        body{
            background-color: #ee6e73;
        }
        a { 
            text-decoration: none;
            color: #2f2f2f;  
        }
         @media screen and (max-width: 768px) {
            img {
                max-width: 100%; 
                height: auto; 
            }
        }
    </style>
</head>
<body>
<img src="pics/procyonlogo.png">
    <br>
    <div class="registration-container">
        <h1>REGISTER</h1>

    <?php
        if(!isset($_SESSION)){
            session_start();
        }
        if($_SESSION['event']=='class'){
            // Link to Class Event Registration form
            echo '<iframe src="https://docs.google.com/forms/d/e/1FAIpQLSeelo1F-etCVXBZy9hl9plWKnqoI832XS-610CpKaLMkihkcg/viewform?embedded=true" width="100%" height="520" frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe>
                ';
        }
        else if($_SESSION['event']=='department'){
            // Link to Department Event Registration form
            echo"<script src='https://sheetdb.io/s/f/6albcxcxes5rz.js'></script>";
        }
    ?>
    <br>
    <button>
        <a style="color:white" href="./EventRegistration.php?logout">Logout</a>
    </button>
    </div>
</body>
</html>