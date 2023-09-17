<?php
session_start();
session_destroy();
header("location: s-login.php");
?>