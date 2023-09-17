<?php
if(isset($_POST['signup'])){
    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $address = $_POST['address'];
    $username = $_POST['username'];
    echo "firstname: ".$fname;
}else{
    $fname = null;
    $lname = null;
    $address = null;
    $username = null;
}
?>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Sign Up</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="index.css">
    </head>
    <body>
        <div style="padding-left:10%;padding-right:10%;padding-top:5%">
            <div>
                <div class="row">
                    <div class="col-md-3">
                    </div>
                    <div class="col-md-6">
                        <div  class="filter">
                            <h6 align="right"><a href="login.php">close</a></h6>
                            <h3 align="center">Sign Up</h3>
                            <form action="Checksignup.php" method="POST">
                                <div class="form-group">
                                    <label for="html">First name:</label><br>
                                    <input type="text" name="fname" class="form-control" value="<?=$fname?>" required><br>
                                    <label for="html">Last name:</label><br>
                                    <input type="text" name="lname" class="form-control" value="<?=$lname?>" required><br>
                                    <label for="html">Address:</label><br>
                                    <textarea name="address" rows="4" cols="40" name="address" class="form-control" value="<?=$address?>" required></textarea><br>
                                    <label for="html">Username:</label><br>
                                    <input type="text" name="username" class="form-control" value="<?=$username?>" required><br>
                                    <label for="html">Password:</label><br>
                                    <input type="password" name="password" class="form-control" required><br>
                                    <label for="html">Confirm Password:</label><br>
                                    <input type="password" name="c_password" class="form-control" required><br><br>
                                    <div align="center">
                                        <input type="submit" name="signup" class="btnSubmit" value="Sign up" class="form-control">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-3">
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>