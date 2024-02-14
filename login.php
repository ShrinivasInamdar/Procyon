<?php

$con = mysqli_connect('localhost', 'root', '', 'procyon2024') or die("Could not connect to mysql".mysqli_error($con));

if(isset($_POST['login'])){
    $user_name=$_POST['username'];
    $user_pass=$_POST['password'];
    $category=$_POST['event-category'];

    if($category=='class-event'){
        $check_user1="select * from crregistration WHERE username='$user_name' AND password='$user_pass' AND category='class'";
        $run1=mysqli_query($con,$check_user1);
        $num1 = mysqli_num_rows($run1);
        if(mysqli_num_rows($run1)==1){

            if(!isset($_SESSION)){
                session_start();
            }
            $_SESSION['username']=$user_name;
            $_SESSION['event']='class';

           header("Location:./EventRegistration.php");
          //echo "Kindly Note: Registrations are closed for all the events now!";
        }
        else{
            echo "<script>alert('Email or password or choice is incorrect!')</script>";
            echo "
        <script>
            window.location.href='./index.php#mu-register';
        </script>
        ";
        }
    }
    else if($category=='department-event'){
        $query="select * from deptregistrations WHERE username='$user_name'AND password='$user_pass' AND category='department'";
        $run2=mysqli_query($con,$query);
        if(mysqli_num_rows($run2)==1){
            if(!isset($_SESSION)){
                session_start();
            }
           $_SESSION['username']=$user_name;
           $_SESSION['event']='department';
            // header("Location:./EventRegistration.php");
        if(!isset($_SESSION)){
            session_start();
        }
        if($_SESSION['event']=='class'){
            // Link to Class Event Registration form
            // echo '<iframe src="https://docs.google.com/forms/d/e/1FAIpQLSceOQ_y6qgCY34x9HPGVrJUtsAx3gurrIADOB22AAGznuWSHA/viewform?embedded=true" width="100%" height="520" frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe>';
        }
        else if($_SESSION['event']=='department'){
            // Link to Department Event Registration form
            // Destination URL
            $destination_url = "https://forms.gle/8QwrTckTZeaR5ez29";

            // Perform redirection
            header("Location: $destination_url");
        }
         //echo "Kindly Note: Registrations are closed for all the events now!";
        }
        else{
            echo "<script>alert('Email or password or choice is incorrect!')</script>";
            echo "
        <script>
            window.location.href='./index.php#mu-register';
        </script>
        ";
        }
    }
    else{
        echo "<script>alert('Please select a category!')</script>";
        echo "
        <script>
            window.location.href='./index.php#mu-register';
        </script>
        ";
    }
}
?>
