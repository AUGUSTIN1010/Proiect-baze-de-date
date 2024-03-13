<?php 
    session_start();
    include("sesiune.php");
    include("mysql.php");
?>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Panou de Control</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>
<body>
    <div class="login-dark">
    <?php if(isset($_SESSION['username'])) :?>
            <?php include("head.php"); ?>
            <center><div class="card" style="width: 95%; height: 85%;">
                <div class="card-header">
                    <ul class="nav nav-tabs card-header-tabs">
                        <li class="nav-item"><a class="nav-link active" href="index.php">Postare noua</a></li>
                        <li class="nav-item"><a class="nav-link" href="edit.php">Editare postare</a></li>
                        <li class="nav-item"><a class="nav-link" href="del.php">Stergere postare</a></li>
                    </ul>
                </div>
                <div class="card-body">
                    <h4 class="card-title">Adaugare articol nou</h4>
                    
                        <iframe src="adauga.html" style="width: 100%; height: 90%; border: none;"></iframe>
                    
                </div>
            </div></center>
        <?php else: ?>
        <form method="post" action="login.php">
            <h2 class="sr-only">Login Form</h2>
            <div class="form-group"><input class="form-control" type="text" name="nume" placeholder="E-mail"></div>
            <div class="form-group"><input class="form-control" type="password" name="parola" placeholder="Parola"></div>
            <div class="form-group"><button class="btn btn-primary btn-block" type="submit">Log In</button></div>
        </form>
        <?php endif ?>
    </div>
</body>
</html>