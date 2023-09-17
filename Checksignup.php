<?php
session_start();

    include("connect_db.php");

    if(!isset($_POST['signup'])){
        header("location: login.php");
    }else{
        $fname = $_POST['fname'];
        $lname = $_POST['lname'];
        $address = $_POST['address'];
        $username = $_POST['username'];
        $password = $_POST['password'];
        $c_password = $_POST['c_password'];
    }

?>
<!doctype html>
<form id="form" action="signup.php" method="POST">
    <input type="hidden" name="fname" value="<?=$fname?>">
    <input type="hidden" name="lname" value="<?=$lname?>">
    <input type="hidden" name="address" value="<?=$address?>">
    <input type="hidden" name="username" value="<?=$username?>">
    <input type="hidden" name="password" value="<?=$password?>">
    <input type="hidden" name="signin" value="signin">
</form>

<?php

    $query = "SELECT * FROM customer WHERE username = '$username';";
    $result = $mysqli->query($query);
    $count = $result->num_rows;

    if($count > 0){
        ?>
        <script>
            alert("The username has been used.");
            var form = document.getElementById("form");
            form.submit();
        </script>
        <?php
    }
    if($password != $c_password){
        ?>
        <script>
            alert("Password and Confirm Password are mismatch.");
            var form = document.getElementById("form");
            form.submit();
        </script>
        <?php
    }

    $salt = "\$5\$rounds=5000\$" . "theerapat" . $username . "\$";
    $loginhash = crypt($password,$salt);

    list($a0,$a1,$a2,$a3,$a4) = explode('$',$loginhash);

    $c_id = rand(0, 99);

    $query = "INSERT INTO customer(CustomerID,f_name,l_name,address,username,password) VALUES('$c_id','$fname','$lname','$address','$username','$a4');";
    $result = $mysqli->query($query);

    header("location: login.php");
?>
</html>