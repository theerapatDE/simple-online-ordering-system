<?php
session_start();
    if(!isset($_POST['submit'])){
        header("location: s-login.php");
    }

    include("connect_db.php");

    if($mysqli -> connect_errno){
        ?>
        <script>
            alert("Connection Failed.");
            window.location.href = "s-login.php";
        </script>
        <?php
        exit();
    }
    
    $username = $_POST["username"];
    $password = $_POST["password"];
    $query = "SELECT * FROM staff WHERE username = '$username';";

    $result = $mysqli->query($query);
    $count = $result->num_rows;

    if($count != 1){
        ?>
        <script>
            alert("Username or Password are incorrected.");
            window.location.href = "s-login.php";
        </script>
        <?php
        exit();
    }

    $existinginfo = $result->fetch_array();

    $pass = $existinginfo['password'];

    $salt = "\$5\$rounds=5000\$" . "theerapat" . $username . "\$";
    $loginhash = crypt($password,$salt);

    list($a0,$a1,$a2,$a3,$a4) = explode('$',$loginhash);

    if($a4 != $pass){
        ?>
        <script>
            alert("Username or Password are incorrected.");
            window.location.href = "s-login.php";
        </script>
        <?php
        exit();
    }else{
        $_SESSION['login_session'] = "a1s2d3f4";
        $_SESSION['staffID'] =  $existinginfo['staffID'];
        $_SESSION['fname'] = $existinginfo['f_name'];
        $_SESSION['lname'] = $existinginfo['l_name'];
        header("location: s-dashboard.php");
        exit();
    }

?>
<script>
            alert("Login process failed.");
            window.location.href = "s-login.php";
</script>