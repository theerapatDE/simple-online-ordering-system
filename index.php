<?php
session_start();

if($_SESSION['login_session'] == "1z2x3c4v"){
    $customer_id = $_SESSION['customerId'];
}else{
    header("location: login.php");
}

include("connect_db.php");
$page_num = 1;
if(isset($_GET['page'])){
    $page_num = $_GET['page'];
}else{
    $page_num = 1;
}
if(isset($_GET['search'])){
    $search = $_GET['search'];
}else{
    $search = '';
}
$results_per_page = 30;  
$page_first_result = ($page_num-1) * $results_per_page; 

if(isset($_GET['action'])){
    switch($_GET['action']){
        case "add":
            if(isset($_POST['quantity']) && $_POST['quantity'] != null){
                $query = "SELECT * FROM material WHERE MaterialID = ".$_GET['code']. ";"; 
                $result = $mysqli->query($query);
                $row = mysqli_fetch_array($result);

                $itemArray = array($row['MaterialID']=>array('name'=>$row['MaterialName'],'code'=>$row['MaterialID'],'quantity'=>$_POST['quantity'],'price'=>$row['Price']));

                if(!empty($_SESSION["cart_item"])) {
                    if(in_array($row['MaterialID'],array_keys($_SESSION["cart_item"]))) {
                        foreach($_SESSION["cart_item"] as $k => $v) {
                                if($row['MaterialID'] == $k) {
                                    if(empty($_SESSION["cart_item"][$k]["quantity"])) {
                                        $_SESSION["cart_item"][$k]["quantity"] = 0;
                                    }
                                    $_SESSION["cart_item"][$k]["quantity"] += $_POST["quantity"];
                                }
                        }
                    } else {
                        $_SESSION["cart_item"] = array_merge($_SESSION["cart_item"],$itemArray);
                    }
                } else {
                    $_SESSION["cart_item"] = $itemArray;
                }
            }
            break;
        case "remove":
            if(!empty($_SESSION["cart_item"])) {
                foreach($_SESSION["cart_item"] as $k => $v) {
                    if($_GET["code"] == $k)
                        unset($_SESSION["cart_item"][$k]);				
                    if(empty($_SESSION["cart_item"]))
                        unset($_SESSION["cart_item"]);
                }
            }
            break;
        case "empty":
            unset($_SESSION["cart_item"]);
            break;
    }
}
?>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Online Material Ordering System</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="index.css">
    </head>
    <body>
        <div id="navbar">
            <a href="cart.php">Cart
                <?php
                    if(isset($_SESSION["cart_item"])){
                        echo "(".count($_SESSION["cart_item"]).")";
                    }
                ?>
            </a>
            <a><?=$customer_id?></a>
            <a href="logout.php">Logout</a>
        </div>

        <div class="container">
            <div class="row" style="padding-top: 25px;">
                <div class="col-md-3">
                    <div class="filter">
                        <form action="index.php" method="GET">
                        <div class="form-group">
                            <input type="text" name="search" class="form-control" placeholder="Material Name" value="<?=$search?>"><br>
                        </div>
                        <div class="form-group">
                            <input type="submit" name="submit" class="btnSubmit" value="Filter">
                        </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="goods">
                        <div>
                            <?php
                            $query = "SELECT * FROM material";  
                            if(isset($_GET['search'])){
                                $query = $query." WHERE MaterialName LIKE '%$search%'";
                            }
                            
                            $result = $mysqli->query($query);
                            $totalcount = $result->num_rows;

                            if(is_numeric($page_num)){
                                $page_num = intval($page_num);
                            }else{
                                $page_num = 1;
                            }

                            if($page_num < 1){
                                $page_num = 1;
                            }

                            if($totalcount > 30){
                                $link_num = ceil($totalcount / 30);
                                if($page_num > $link_num){
                                    $page_num = $link_num;
                                }
                                echo "<h6 style='display:inline'>";
                                echo "Page : ";
                                if($page_num != 1){
                                    echo "<a href='index.php?page=". $page_num-1 ."&search=$search'>Previous</a>";
                                }
                                echo " ";
                                echo "$page_num/$link_num";
                                echo " ";
                                if($page_num != $link_num){
                                    echo "<a href='index.php?page=". $page_num+1 ."&search=$search'>Next</a>";
                                }
                                echo "</h6>";
                            }

                            $query = "SELECT * FROM material";  
                            if(isset($_GET['search'])){
                                $query = $query." WHERE MaterialName LIKE '%".$_GET['search']."%'";
                            }
                            $query = $query." LIMIT ". $page_first_result . ',' . $results_per_page;
                            $result2 = $mysqli->query($query);
                            $count = $result2->num_rows;
                            $maxrow = ceil($count/3);
                            echo "<div>";
                            for($i=0;$i<$maxrow;$i++){
                                echo "<div class='row' id='itemrow'>";
                                for($j=0;$j<3;$j++){
                                    $row = mysqli_fetch_array($result2);
                                    if(isset($row)){
                                        echo "<div class='col-md-3' id='item'>";
                                        echo "<span style='color:#0062cc; font-weight: 600;'>".$row['MaterialName']."</span><br>";
                                        echo "Price : ".$row['Price']."฿<br>";
                                        echo "<form method='POST' action='index.php?page=$page_num&search=$search&action=add&code=". $row['MaterialID'] ."'><input type='number' name='quantity' min='1' style='width:30%' required><input type='submit' class='btnSubmit' value='Add to cart'></form>";
                                        echo "</div>";
                                    }else{
                                        exit();
                                    }
                                }
                                echo "</div>"; 
                            }
                            echo "</div>"; 
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    
        <script>
            window.onscroll = function() {myFunction()};

            var navbar = document.getElementById("navbar");
            var sticky = navbar.offsetTop;

            function myFunction() {
                if (window.pageYOffset > sticky) {
                    navbar.classList.add("sticky")
                } else {
                    navbar.classList.remove("sticky");
                }
            }
        </script>
    </body>
</html>

<?php
/*case "add":
	if(!empty($_POST["quantity"])) {
		$productByCode = $db_handle->runQuery("SELECT * FROM tblproduct WHERE code='" . $_GET["code"] . "'");
		$itemArray = array($productByCode[0]["code"]=>array('name'=>$productByCode[0]["name"], 'code'=>$productByCode[0]["code"], 'quantity'=>$_POST["quantity"], 'price'=>$productByCode[0]["price"], 'image'=>$productByCode[0]["image"]));
		
		if(!empty($_SESSION["cart_item"])) {
			if(in_array($productByCode[0]["code"],array_keys($_SESSION["cart_item"]))) {
				foreach($_SESSION["cart_item"] as $k => $v) {
						if($productByCode[0]["code"] == $k) {
							if(empty($_SESSION["cart_item"][$k]["quantity"])) {
								$_SESSION["cart_item"][$k]["quantity"] = 0;
							}
							$_SESSION["cart_item"][$k]["quantity"] += $_POST["quantity"];
						}
				}
			} else {
				$_SESSION["cart_item"] = array_merge($_SESSION["cart_item"],$itemArray);
			}
		} else {
			$_SESSION["cart_item"] = $itemArray;
		}
	}
	break;
    
    case "remove":
	if(!empty($_SESSION["cart_item"])) {
		foreach($_SESSION["cart_item"] as $k => $v) {
			if($_GET["code"] == $k)
				unset($_SESSION["cart_item"][$k]);				
			if(empty($_SESSION["cart_item"]))
				unset($_SESSION["cart_item"]);
		}
	}
	break;
case "empty":
	unset($_SESSION["cart_item"]);
        break;
    */
?>