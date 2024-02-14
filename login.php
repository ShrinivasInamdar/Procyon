<?php
// Start or resume a session
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

// Check if the session timeout is reached
$session_expiration = 0.5 * 60; // 5 minutes in seconds
if (isset($_SESSION['LAST_ACTIVITY']) && (time() - $_SESSION['LAST_ACTIVITY'] > $session_expiration)) {
    // Session expired, destroy session and redirect to login page
    session_unset(); // Unset all session variables
    session_destroy(); // Destroy the session
    header("Location: index.php"); // Redirect to the login page
    exit;
}
$_SESSION['LAST_ACTIVITY'] = time(); // Update last activity time stamp

// Establish database connection
$con = mysqli_connect('localhost', 'root', '', 'procyon2024') or die("Could not connect to mysql" . mysqli_error($con));

if (isset($_POST['login'])) {
    $user_name = $_POST['username'];
    $user_pass = $_POST['password'];
    $category = $_POST['event-category'];

    // Prevent SQL injection using prepared statements
    if ($category == 'class-event') {
        $stmt = $con->prepare("SELECT * FROM crregistration WHERE username=? AND password=? AND category='class'");
        $stmt->bind_param("ss", $user_name, $user_pass);
        $stmt->execute();
        $result = $stmt->get_result();
        if ($result->num_rows == 1) {
            $_SESSION['username'] = $user_name;
            $_SESSION['event'] = 'class';
        } else {
            // Invalid login credentials
            displayError();
        }
    } elseif ($category == 'department-event') {
        $stmt = $con->prepare("SELECT * FROM deptregistrations WHERE username=? AND password=? AND category='department'");
        $stmt->bind_param("ss", $user_name, $user_pass);
        $stmt->execute();
        $result = $stmt->get_result();
        if ($result->num_rows == 1) {
            $_SESSION['username'] = $user_name;
            $_SESSION['event'] = 'department';
        } else {
            // Invalid login credentials
            displayError();
        }
    } else {
        // No category selected
        displayError();
    }

    // Redirect based on event type
    if ($_SESSION['event'] == 'class') {
        header("Location: https://docs.google.com/forms/d/e/1FAIpQLSceOQ_y6qgCY34x9HPGVrJUtsAx3gurrIADOB22AAGznuWSHA/viewform?usp=sf_link");
        exit;
    } elseif ($_SESSION['event'] == 'department') {
        header("Location: https://docs.google.com/forms/d/e/1FAIpQLScZSh9TXKozur5A2wj3ec6IrUNI-QvBaBPWqop_uhdDCCW4NQ/viewform?usp=sf_link");
        exit;
    }
}

function displayError()
{
    echo "<script>alert('Email or password or choice is incorrect!')</script>";
    echo "<script>window.location.href='./index.php#mu-register';</script>";
    exit;
}
