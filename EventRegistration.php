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
</head>
<body>


    <?php
        if(!isset($_SESSION)){
            session_start();
        }
        if($_SESSION['event']=='class'){
            // Link to Class Event Registration form
            echo"<script src='https://sheetdb.io/s/f/0m50boduubm82.js'></script>";
        }
        else if($_SESSION['event']=='department'){
            // Link to Department Event Registration form
            echo"<script src='https://sheetdb.io/s/f/6albcxcxes5rz.js'></script>";
        }
    ?>

    <button>
        <a href="./EventRegistration.php?logout">Logout</a>
    </button>
</body>
</html>