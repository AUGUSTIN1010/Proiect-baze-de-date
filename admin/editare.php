<?php
    session_start();
    include("mysql.php");
?>
Lista cu postarile blogului
            <center><table border="1">
                <tr>
                    <td>ID</td>
                    <td>TITLU</td>
                    <td>DATA</td>
                 </tr>
                <?php if(isset($_SESSION['username'])) :?>
                    <?php 
                        $sql = "SELECT * FROM postari ORDER BY Post_id ASC";
                        $result = $conn->query($sql);
                        if($result->num_rows > 0) {
                            while($row = $result->fetch_assoc()) { ?>
                                <tr>
                                    <td><?php echo $row['Post_id']; ?></td>
                                    <td><?php echo $row['Tema']; ?></td>
                                    <td><?php echo $row['Data_pos']; ?></td>
                                </tr>
                    <?php  
                            }
                        }
                    ?>
                <?php endif ?>
            </table></center>
            <form method="POST" action="pagina_edit.php">
                ID-ul postarii&nbsp;<input type="text" name="id"><br>
                <input type="submit" name="delete" value="Editeaza">
            </form>