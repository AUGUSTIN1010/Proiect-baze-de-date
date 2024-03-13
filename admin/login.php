<?php
    session_start();
    include("mysql.php");
    
    $nume = "";
	$errors = array(); 
	$_SESSION['success'] = "";
    
    $nume = mysqli_real_escape_string($conn, $_POST['nume']);
	$parola = mysqli_real_escape_string($conn, $_POST['parola']);

	if(empty($nume)) array_push($errors, "Numele de utilizator este necesar!");
	if(empty($parola)) array_push($errors, "Parola este necesara!");

	if(count($errors) == 0) {
		$parola = md5($parola);
		$query = "SELECT * FROM angajati WHERE Adresa_E='$nume' AND Parola='$parola'";
		$results = mysqli_query($conn, $query);

		if(mysqli_num_rows($results) == 1) {
			$_SESSION['username'] = $nume;
			header("location: index.php");
		}
		else {
		    header("location: index.php");
		}
	}
?>