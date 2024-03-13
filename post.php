<?php 
    session_start(); 
    $id = $_GET['id'];
    include("mysql.php");
    include("head.php")
?>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>
<body>
    <?php
        $sql = "SELECT * FROM postari WHERE Post_id = $id";
        $result = $conn->query($sql);
        $imgs = array("");
        if($result->num_rows > 0) 
            while($row = $result->fetch_assoc()) { 
                $sql = "SELECT * FROM imagine WHERE Post_id = " . $row['Post_id'];
                $result_img = $conn->query($sql);
                if($result_img->num_rows > 0)
                    while($img = $result_img->fetch_assoc())
                        array_push($imgs, $img['Imag_url']);
        ?>
                <div class="article-clean">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-10 col-xl-8 offset-lg-1 offset-xl-2">
                                <div class="intro">
                                    <title><?php echo $row['Tema']; ?></title>
                                    <h1 class="text-center" style="border-top: 3px groove black; border-bottom: 3px groove black; line-height: 5px; height: 50px;"><?php echo $row['Tema']; ?></h1>
                                    <p class="text-center"> <?php echo $row['Data_pos'] ?> | <?php echo $row['Categorie'] ?></p><img class="img-fluid" src="<?php echo $imgs[1]; ?>">
                                </div>
                                <div class="text">
                                    <?php echo $row["Continut"]; ?>

                                    <br>
                                    <?php

                                    if(count($imgs) > 2)
                                    {
                                        for($i = 2; $i < count($imgs); $i++) {?>
                                            <img class="img-fluid" src="<?php echo $imgs[$i]; ?>"/>
                                            <?php }} ?>
                                </div>
                                <br><br><h4>Comentarii</h4>
                                <?php 
                                    $sql = "SELECT * FROM comentari WHERE Post_id = $id";
                                    $result = $conn->query($sql);
                                    $imgs = array("");
                                    if($result->num_rows > 0) 
                                        while($row = $result->fetch_assoc()) { 

                                            $sql = "SELECT * FROM utilizatori WHERE User_id = " . $row['User_id'];
                                            $res = $conn->query($sql);
                                            if($res->num_rows > 0)
                                                $user = $res->fetch_assoc();
                                    ?>
                                <div class="text" style="border: 1px solid gray; border-radius: 5px;">
                                        <img src="assets/img/user-128.png" style="width: 32px; height:32px; margin-left: 15px; margin-top 25px; align: inline; float: left;"> <p style="margin-top: 7px;"><?php echo $user['Nume_U']; ?></p> <p style="margin-top: 7px; font-size: 10px; margin-left: 15px;"><?php echo $row['Data_com']; ?> </p><br>
                                        <p style="margin-top: -15px; margin-left: 15px; margin-right: 15px;"><?php echo $row['Continut']; ?></p>
                                </div><br>
                                <?php }?>
                            </div>
                        </div>
                    </div>
                </div>
            <?php
            }
    ?>
    <?php include("footer.php"); ?>
</body>
</html>