<?php
    include("mysql.php");

    $titlu = $_POST['titlu'];
    $previzualizare = $_POST['previzualizare'];
    $imag = $_POST['imag'];
    $categorie = $_POST['categorie'];
    $continut = $_POST['continut'];

    $sql = "UPDATE postari SET Tema = '$titlu', Previzualizare = '$previzualizare', Categorie = '$categorie', Continut = '$continut' WHERE Tema = '$titlu'";
    $result = $conn->query($sql);
    if(mysqli_query($conn, $sql)) 
    {
        header("location: editare.php");
    }
?>