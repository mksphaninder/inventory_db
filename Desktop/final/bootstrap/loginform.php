</!DOCTYPE html>
<h1>Login</h1>
<?php
//require "index1.php";
echo "<br>current time: " . date("Y-m-d h:i:sa");
?>
<form action="administrator.php" method="POST" class="form login">
Username:<input type="text"  name="username" /> <br><!--/*required pattern="\w+"-->
Password: <input type="password"   name="password" /> <br><!--required pattern="(?=.*[A-Z]).{6,}"-->
<button class ="button" type="submit">
Login
</button>
</form>
</html>