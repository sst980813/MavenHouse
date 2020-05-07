<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title></title>

    <!-- Plugin styles -->
    <link rel="stylesheet" href="css/bundle.css" type="text/css">

    <!-- App styles -->
    <link rel="stylesheet" href="css/app.min.css" type="text/css">
</head>
<body class="form-membership">



<div class="form-wrapper">


    <h5>Sign in Lando</h5>

    <!-- form -->
    <form>
        <div class="form-group">
            <input type="text" class="form-control" placeholder="用户名或手机号 " required autofocus>
        </div>
        <div class="form-group">
            <input type="password" class="form-control" placeholder="密码" required>
        </div>
        <div class="form-group d-flex justify-content-between">
            <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" checked="" id="customCheck1">
                <label class="custom-control-label" for="customCheck1">Remember me</label>
            </div>
        </div>
        <button class="btn btn-primary btn-block">Sign in</button>
        
        <hr>
        <p class="text-muted">Don't have an account?</p>
        <a href="./register.html" class="btn btn-outline-light btn-sm">Register now!</a>
    </form>
    <!-- ./ form -->

</div>

<!-- Plugin scripts -->
<script src="js/bundle.js"></script>

<!-- App scripts -->
<script src="js/app.min.js"></script>
</body>
</html>