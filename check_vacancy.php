<?php
include_once "base.php";
//function check_vacancy(canteen_id)

if (($_SERVER["REQUEST_METHOD"] == "POST") && (!empty($_POST["canteen_id"]))) {
	echo ("[ ");
	$canteen_id = mysqli_real_escape_string($con, $_POST['canteen_id']);
	if (isset($DEBUG) && $DEBUG) echo($canteen_id);
	$sql = "SELECT `tag_occupied_by_user`.`tag_id`,  `tag_to_table`.`table_id`, `tag_occupied_by_user`.`timestamp_ending` 
FROM `tag_occupied_by_user` 
INNER JOIN `tag_to_table` 
ON `tag_to_table`.`tag_id` = `tag_occupied_by_user`.`tag_id` 
INNER JOIN `table_to_canteen` 
ON `tag_to_table`.`table_id` = `table_to_canteen`.`table_id` 
WHERE `canteen_id` = '$canteen_id'
AND `user_id` != ''";
	$result = mysqli_query($con,$sql);
	echo json_encode(new ArrayValue(mysqli_fetch_all($result)), JSON_PRETTY_PRINT);
	echo(", [ [ \"".mysqli_num_rows($result)."\" ] ], "); //self-made json
	$sql = "SELECT COUNT(*)
FROM `tag_to_table` 
INNER JOIN `table_to_canteen` 
ON `tag_to_table`.`table_id` = `table_to_canteen`.`table_id` 
WHERE `canteen_id` = 'canteen_1'";
	$result = mysqli_query($con,$sql);
	echo json_encode(new ArrayValue(mysqli_fetch_all($result)), JSON_PRETTY_PRINT);
echo (" ]");
}
include "log_activity.php";
mysqli_close($con);

?>