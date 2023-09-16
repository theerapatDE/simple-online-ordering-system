<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="login.css">
    </head>
    <body>
        <div class="container login-container">
            <div class="login-form-1">
                <h3>Online Material Ordering System</h3>
                <form action="checkLogin.php" method="POST">
                    <div class="form-group">
                        <input type="text" name="username" class="form-control" placeholder="Username"><br>
                    </div>
                    <div class="form-group">
                        <input type="password"  name="password" class="form-control" placeholder="Password"><br>
                    </div>
                    <div class="form-group">
                        <input type="submit" name="submit" class="btnSubmit" value="login">
                    </div>
                    <div class="form-group">
                        <a href="#" class="SignUp">Sign up</a>
                    </div>
                </form>
            </div>         
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>