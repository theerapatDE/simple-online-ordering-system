<?php
session_start();

if($_SESSION['login_session'] == "1z2x3c4v"){
    $customer_id = $_SESSION['customerId'];
}else{
    header("location: login.php");
}

include("connect_db.php");

?>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cart</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="index.css">
    </head>
    <body>
        <div id="shopping-cart" style="padding-left:10%;padding-right:10%;padding-top:5%">
            <div class="txt-heading"><h1>Shopping Cart</h1></div>
                <a href="index.php">Continue Shopping</a>
                <a id="btnEmpty" href="index.php?action=empty">Empty Cart</a>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="filter">
                            <?php
                            if(isset($_SESSION["cart_item"])){
                                $total_quantity = 0;
                                $total_price = 0;
                            ?>	
                            <table class="tbl-cart" cellpadding="10" cellspacing="1">
                                <tbody>
                                    <tr>
                                        <th style="text-align:left;">Name</th>
                                        <th style="text-align:left;">Code</th>
                                        <th style="text-align:right;" width="5%">Quantity</th>
                                        <th style="text-align:right;" width="10%">Unit Price</th>
                                        <th style="text-align:right;" width="10%">Price</th>
                                        <th style="text-align:center;" width="5%">Remove</th>
                                    </tr>	
                                    <?php		
                                    foreach ($_SESSION["cart_item"] as $item){
                                        $item_price = $item["quantity"]*$item["price"];
                                        ?>
                                        <tr>
                                            <td><?php echo $item["name"]; ?></td>
                                            <td><?php echo $item["code"]; ?></td>
                                            <td style="text-align:right;"><?php echo $item["quantity"]; ?></td>
                                            <td  style="text-align:right;"><?php echo "฿ ".$item["price"]; ?></td>
                                            <td  style="text-align:right;"><?php echo "฿ ". number_format($item_price,2); ?></td>
                                            <td style="text-align:center;"><a href="index.php?action=remove&code=<?php echo $item["code"]; ?>" class="btnRemoveAction">Remove</a></td>
                                        </tr>
                                        <?php
                                        $total_quantity += $item["quantity"];
                                        $total_price += ($item["price"]*$item["quantity"]);
                                    }
                                    ?>
                                    <tr>
                                        <td colspan="2" align="right">Total:</td>
                                        <td align="right"><?php echo $total_quantity; ?></td>
                                        <td align="right" colspan="2"><strong><?php echo "฿ ".number_format($total_price, 2); ?></strong></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td colspan="4"></td>
                                        <td colspan="2" align="center"><a href='checkout.php' class="btnSubmit">Check out</a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>	
                </div>	
            </div>	
            <?php
            } else {
            ?>
            <div class="no-records">Your Cart is Empty</div>
            <?php 
            }
            ?>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>