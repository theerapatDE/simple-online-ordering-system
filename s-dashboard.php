<?php
session_start();

if($_SESSION['login_session'] == "a1s2d3f4"){
    $staff_id = $_SESSION['staffID'];
    $fname = $_SESSION['fname'];
    $lname = $_SESSION['lname'];
}else{
    header("location: s-login.php");
}

include("connect_db.php");

/*$query = "SELECT year(orderDate) as year,
 sum(sale.pc * material.Price) as revenue 
 FROM `sale` 
 INNER JOIN material ON sale.Material = material.MaterialName 
 GROUP BY year;";*/
$query = "SELECT year(orderDate) as year,
sum(pc) as revenue 
FROM `sale` 
GROUP BY year;";
$result = $mysqli->query($query);

$dataPoints = array();
$row_num = 0;
while($row = mysqli_fetch_array($result)){
    $newData = array("y" => $row['revenue'], "label" => $row['year']);
    $dataPoints[$row_num] = $newData;
    $row_num++;
}

$dataPoints2 = array(array("y" => 12625048, "label" => "2013"),
array("y" => 13660073, "label" => "2014"),
array("y" => 13660073, "label" => "2015"),
array("y" => 13299729, "label" => "2016"),
array("y" => 11412300, "label" => "2017"),
array("y" => 9054882, "label" => "2018"))
;
$query = "SELECT year(orderDate) as year FROM `sale` GROUP BY year ORDER BY year DESC limit 1;";
$result = $mysqli->query($query);
$row = mysqli_fetch_array($result);
$nextyear = intval($row['year'])+1;

$query = "SELECT year(orderDate) as year, sum(pc) as revenue FROM `sale` GROUP BY year HAVING year > ". $row['year']-3 .";";
$result = $mysqli->query($query);

$dataPoints3 = array();
$row_num = 0;
while($row = mysqli_fetch_array($result)){
    $newData = array("y" => $row['revenue'], "label" => $row['year']);
    $dataPoints3[$row_num] = $newData;
    $row_num++;
}
$size = sizeof($dataPoints3);
$growth = (($dataPoints3[$size-1]['y'] - $dataPoints3[$size-2]['y']) / $dataPoints3[$size-2]['y']) * 100;
$growthvalue = ($dataPoints3[$size-1]['y'] * $growth)/100;
$nextyearrevenue = $dataPoints3[$size-1]['y'] + $growthvalue;
$dataPoints3[$row_num] = array("y" => $nextyearrevenue, "label" => "$nextyear");


?>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Online Material Managing System</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="index.css">
        <script>
            window.onload = function() {
                CanvasJS.addColorSet("growth",
                [//colorSet Array

                "#6D78AD",
                "#6D78AD",
                "#6D78AD",
                "#7DAD6D"                
                ]);
            
                var chart = new CanvasJS.Chart("chartContainer", {
                    animationEnabled: true,
                    theme: "light2",
                    title:{
                        text: "Revenue over the years"
                    },
                    axisY: {
                        title: "Revenue (Bath)",
                        minimum: 0
                    },
                    toolTip: {
		                shared: true
	                },
                    data: [{
                        type: "column",
                        name: "Actual Sale",
                        showInLegend: true,
                        yValueFormatString: "#,##0.## baths",
                        dataPoints: <?php echo json_encode($dataPoints, JSON_NUMERIC_CHECK); ?>
                    },
                    {
                        type: "line",
                        name: "Target Sale",
                        showInLegend: true,
                        yValueFormatString: "#,##0.## baths",
                        dataPoints: <?php echo json_encode($dataPoints2, JSON_NUMERIC_CHECK); ?>
                    }
                    ]
                }
                );
                chart.render();

                var chart2 = new CanvasJS.Chart("chartContainer2", {
                    animationEnabled: true,
                    theme: "light2",
                    colorSet: "growth",
                    title:{
                        text: "Expected Revenue Growth"
                    },
                    axisY: {
                        title: "Revenue (Bath)",
                        minimum: 0
                    },
                    toolTip: {
		                shared: true
	                },
                    data: [{
                        type: "column",
                        name: "Actual Sale",
                        yValueFormatString: "#,##0.## baths",
                        dataPoints: <?php echo json_encode($dataPoints3, JSON_NUMERIC_CHECK); ?>
                    }]
                }
                );
                chart2.render();
            };
        </script>
    </head>
    <body>
        <div id="navbar">
            <a><?php echo $fname." ".$lname; ?></a>
            <a href="s-logout.php">Logout</a>
        </div>

        <div class="container">
            <div class="row" style="padding-top: 25px;">
                <!--<div class="col-md-3">
                    <div class="filter">
                        <div class="form-group">
                            <select id="mySelect" name="dashboard" class="form-control" onchange="myFunction()">
                                <option value="">Revenue over the year</option>
                                <option value="2">Expected Growth</option>
                            </select>
                        </div>
                    </div>
                </div>-->
                <div class="col-md-12">
                    <div class="goods">
                        <div>
                            <div id="chartContainer" style="height: 370px; width: 100%;"></div>
                        </div>
                        <div>
                            <div id="chartContainer2" style="height: 370px; width: 100%;"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.canvasjs.com/canvasjs.min.js"></script>    
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