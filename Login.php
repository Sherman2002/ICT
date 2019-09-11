<html>
<style type="text/css">
	h1{
		color:red;
		margin-left: 10%;
	}


</style>
<head>
<meta charset="utf-8">
<title>Login</title>
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
<?php
require('db.php');
session_start();
// If form submitted, insert values into the database.
if($_SERVER["REQUEST_METHOD"] == "POST"){
        // removes backslashes
	$Name = stripslashes($_POST['name']);
        //escapes special characters in a string
	$Name = mysqli_real_escape_string($db,$Name);
	$password = stripslashes($_POST['password']);
	$password = mysqli_real_escape_string($db,$password);
	//Checking is user existing in the database or not
        $query = "SELECT * FROM `Patient_Record` WHERE Patient_Number='$Name' and Password='$password'";
	$result = mysqli_query($db,$query);
	$rows = mysqli_num_rows($result);
        if($rows==1){
	    $_SESSION['Name'] = $Name;
            // Redirect user to index.php
	    header("Location: /home.php");
         }else{
	echo "<script>alert('Username/password is incorrect.');</script>";}}
// 	echo "<div class='form'>
// <h3>Username/password is incorrect.</h3>
// <br/>Click here to <a href='login.php'>Login</a></div>";

?>
<div class="form">
<h1>Log In</h1>
<form action="" method="post" name="login">
Patient Number <input type="text" name="name" placeholder="patient number" required /> <br>
Password <input type="password" name="password" placeholder="Password" required /> <br>
<input name="submit" type="submit" value="Login" />
</form>
<p>Not registered yet? <a href='Registration.php'>Register Here</a></p>
</div>
</body>
</html>