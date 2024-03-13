<?php
    session_start();
    include("mysql.php");
    
    $x = $_POST['id'];
?>
<form method="POST" action="query_edit.php">
    <?php
        $sql = "SELECT * FROM postari where Post_id = $x";
        $result = $conn->query($sql);
        if($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) { 
                $sql = "SELECT Imag_url FROM imagine WHERE Post_id = " . $row['Post_id'];
                $result_img = $conn->query($sql);
                if($result_img->num_rows > 0)
                    $img = $result_img->fetch_assoc();
                ?>
                Titlul postarii<br>
                <input type="text" name="titlu" style="width: 60%; border: 1px solid black;" value='<?php echo $row['Tema']; ?>'><br><br>
                Text previzualizare<br>
                <textarea name="previzualizare" style="resize: none; width: 60%; height: 70px; border: 1px solid black;"><?php echo $row['Previzualizare']; ?></textarea><br><br>
                Imagine previzualizare<br>
                <input type="text" name="imag" style="width: 60%; border: 1px solid black;" value='<?php echo $img['Imag_url']; ?>'><br><br>
                Categorie<br>
                <input type="text" name="categorie" style="width: 60%; border: 1px solid black;" value='<?php echo $row['Categorie']; ?>'><br><br>
                                Continut<br>
                <textarea name="continut" style="resize: none; border: 1px solid black; width: 60%; height: 500px;"><?php echo $row['Continut']; ?></textarea><br>
                <input type="submit" name="go" value="Editeaza">
            <?php
            }
        }
    ?>
</form>