<?php
session_start();
    if(!isset($_POST['submit'])){
        header("location: login.php");
    }

    include("connect_db.php");

    if($mysqli -> connect_errno){
        ?>
        <script>
            alert("Connection Failed.");
            window.location.href = "login.php";
        </script>
        <?php
        exit();
    }
    
    $username = $_POST["username"];
    $password = $_POST["password"];
    $qurry = "SELECT * FROM customer WHERE username = '$username'";

    $result = $mysqli->qurry($qurry);
    $count = $result->num_rows;

    if($count != 1){
        ?>
        <script>
            alert("Username or Password are incorrected.");
            window.location.href = "login.php";
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
            window.location.href = "login.php";
        </script>
        <?php
        exit();
    }else{
        $_session['login_session'] = "1z2x3c4v";
        $_session['customerId'] =  $existinginfo['username'];
        header("location: index.php");
        exit();
    }

?>
<script>
            alert("Login process failed.");
            window.location.href = "login.php";
</script>