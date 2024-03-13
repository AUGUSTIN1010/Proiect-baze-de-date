<?php
    include("mysql.php");
    session_start();

    $titlu = $_POST['titlu'];
    $previzualizare = $_POST['previzualizare'];
    $imag = $_POST['imag'];
    $categorie = $_POST['categorie'];
    $continut = $_POST['continut'];

    $email = $_SESSION['username'];

    $sql = "SELECT * FROM `angajati` WHERE `Adresa_E` = '" . $email . "'";
    $result = $conn->query($sql);
    if($result->num_rows > 0) 
    {
        $row = $result->fetch_assoc();
    }

    $ang_id = $row['Ang_id'];

    //$query = "INSERT INTO `postari` (`Ang_id`, `Tema`, `Data_pos`, `Categorie`, `Continut`, `Previzualizare`) VALUES('" . $ang_id . "', '" . $titlu . "', " . now() . ", '" . $categorie . "', '" . $continut . "', '" . $previzualizare . "')";
    $query = "INSERT INTO `postari` (`Ang_id`, `Tema`, `Data_pos`, `Categorie`, `Continut`, `Previzualizare`) VALUES ($ang_id, '$titlu', now(), '$categorie', '$continut', '$previzualizare')";
    
    if(mysqli_query($conn, $query)) {
        echo 'Done';
    }
    else echo "Error: " . $sql . "<br>" . $conn->error;

    $sql = "SELECT * FROM `postari` WHERE `Tema` = '" . $titlu . "'";
    $result = $conn->query($sql);
    if($result->num_rows > 0) 
    {
        echo "Yes";
        $row = $result->fetch_assoc();
    }

    $post_id = $row['Post_id'];

    //$query = "INSERT INTO `imagine` (`Post_id`, `Imag_url`) VALUES($row['Post_id'], '$imag')";
    $query2 = "INSERT INTO `imagine` (`Post_id`, `Imag_url`) VALUES ($post_id, '$imag')";

    if(mysqli_query($conn, $query2)) {
        header("location: adauga.html");
    }
    else echo "Error: " . $sql . "<br>" . $conn->error;

?>