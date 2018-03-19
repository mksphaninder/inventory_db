<?php
	//ini_set('display_errors', 'On');
	//$lifeTime = 1200;
	//session_set_cookie_params($lifetime);
	//header("refresh:1200;url=logout.php");
	//session_start();
	$mysqli = new mysqli('localhost','krishna','password','inventory2');

	if ($mysqli->connect_error) {
		die('connection to the database error: ' . $mysqli->connect_error);
	}
	///////////////////////////////////////////////////////////////
	function chkLogin($username,$password){
		$sql = "select * from users where Username = '$username' and Password = password('$password');";
		global $mysqli;

		$result = $mysqli->query($sql);
		if($result->num_rows>0){
			return TRUE;
		} 
		return FALSE;
	}
	////////////////////////////////////////////////////////////////
	
	if(isset($_POST['username']) and isset($_POST['password'])){
	 $username = $_POST['username'];
	 $password = $_POST['password'];
	}
	if (isset($username) and isset($password)) {

		if(chklogin($username,$password)){
			echo "Welcome!<br>";
			$_session["logged"] = TRUE;
			$_session["username"] = $username;

		}
		else{
			header("refresh:0.5; url = loginform.php");
			echo "\n Invalid username and Password<br>";
			session_destroy();
		}
		if(!isset($_session["logged"])){
			session_destroy();
			header("refresh:2,url=index.html");
		}
	}
?>