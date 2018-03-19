<?php
session_start();
session_destroy();
echo "you hav been logged out<br>";
echo "<a href='loginform.php'>Click here to login</a>";
?>
