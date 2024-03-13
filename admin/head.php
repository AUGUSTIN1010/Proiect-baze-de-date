<link rel="stylesheet" href="../assets/css/styles.css">
<div>
    <nav class="navbar navbar-light navbar-expand-md navigation-clean" style="background: none;">
        <div class="container"><a class="navbar-brand" href="#">Panou de control</a>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item" role="presentation"><a class="nav-link" href="index.php">Bun venit, <?php echo $_SESSION['username']; ?></a><a class="nav-link" href="?logout=1" style="color: red;">Iesire</a></li>
                </ul>
            </div>
        </div>
    </nav>
</div>