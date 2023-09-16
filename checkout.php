<?php
session_start();

if($_SESSION['login_session'] == "1z2x3c4v"){
    $customer_id = $_SESSION['customerId'];
}else{
    header("location: login.php");
}

include("connect_db.php");

$query = "SELECT MAX(Saleorder) AS max FROM sale;";                             
$result = $mysqli->query($query);
$row = mysqli_fetch_array($result);
$current_sale_order = $row['max'] + 1;

for($i=0;$i<count($_SESSION['cart_item']);$i++){
    $query = "INSERT INTO sale(CustomerID,Saleorder,Material,pc) VALUES('$customer_id','$current_sale_order','".$_SESSION['cart_item'][$i]['name']."','".$_SESSION['cart_item'][$i]['quantity']."');";
    $result = $mysqli->query($query);
}
unset($_SESSION["cart_item"]);
header("location: index.php");

?>