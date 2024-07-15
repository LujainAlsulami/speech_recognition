<!DOCTYPE html>
<html>

<head>
	<title>Insert Page</title>
</head>

<body>
		<?php
		$conn = mysqli_connect("localhost", "root", "", "robot");
		if($conn === false){
			die("ERROR: Could not connect. "
				. mysqli_connect_error());
		}
		if ($_SERVER["REQUEST_METHOD"] == "POST") {
			$text = $_POST['result'];
		
			$sql = "INSERT INTO speech (text) VALUES ('$text')";
		
			if ($conn->query($sql) === TRUE) {
				echo "Text saved successfully!";
			} 
		
			$conn->close();
		}
		?>
	
</body>
