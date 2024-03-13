<?php session_start(); ?>
<html>
<head>
    <?php 
        include("head.php");
        include("mysql.php");
    ?>
    <title>GameForgeLegends</title>
</head>
<body>
    <div class="article-list">
        <div class="container">
            <div class="intro">
                <h3 class="text-center" style="border: 3px dotted black;">Postari</h3><br><br>
            </div>
            <div class="row articles" style="margin-top: -40px;">
                <?php 
                    $sql = "SELECT * FROM postari ORDER BY Post_id DESC";
                    $result = $conn->query($sql);
                    $k = 1;
                    if($result->num_rows > 0) {
                        while($row = $result->fetch_assoc()) { 
                            $sql = "SELECT Imag_url FROM imagine WHERE Post_id = " . $row['Post_id'];
                            $result_img = $conn->query($sql);
                            if($result_img->num_rows > 0)
                                $img = $result_img->fetch_assoc();
                            ?>
                            
                            <div class="col-sm-6 col-md-4 item" style="border: 1px solid black; margin-top: 2px;"><a href="post.php?id=<?php echo $row['Post_id'] ?>"><img class="img-fluid" src="<?php echo $img['Imag_url'] ?>"></a>
                                <h3 class="name"><?php echo $row['Tema'] ?></h3><p><?php echo $row['Categorie']; ?></p>
                                <p class="description"><?php echo $row["Previzualizare"]; ?></p><a href="post.php?id=<?php echo $row['Post_id'] ?>" class="action"><i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        <?php
                        // $img = "";
                        }
                    }
                    else {
                        echo "Nu exista postari!";
                    }
                ?>
            </div>
        </div>
    </div>
    <?php include("footer.php"); ?>
</body>
</html>