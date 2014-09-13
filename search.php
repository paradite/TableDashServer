<?php
include_once "base.php";    

/*if (($_SERVER["REQUEST_METHOD"] == "POST") && (!empty($_POST["canteen_id"]))) {
    $canteen_id = test_input($_POST["canteen_id"]);
    $canteen_id = strtolower($canteen_id);
  */  $canteen_id='test_canteen_1'; //dummy
  //  echo($canteen_id);
    $sql = "SELECT `tag_occupied_by_user`.`tag_id`, `tag_occupied_by_user`.`timestamp_ending`\n"
        . "FROM tag_occupied_by_user, tag_to_table\n";
    $result = mysqli_query($con,$sql);
    echo json_encode(new ArrayValue(mysqli_fetch_all($result)), JSON_PRETTY_PRINT);
//}

mysqli_close($con);

