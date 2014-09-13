initialization:
tag to table:
SQL:
INSERT INTO `dashtable`.`tag_to_table` (`tag_id`, `table_id`) VALUES ('test_tag_1', 'test_table_1');
PHP:
$sql = "INSERT INTO `dashtable`.`tag_to_table` (`tag_id`, `table_id`) VALUES (\'test_tag_1\', \'test_table_1\');";

----=================
updating user priviledge:
SQL:
INSERT INTO `dashtable`.`users` (`user_id`,`is_moderator`) VALUES ('test_user_1', '1') ON DUPLICATE KEY UPDATE `is_moderator`='1';
PHP:
$sql = "INSERT INTO `dashtable`.`users` (`user_id`,`is_moderator`) VALUES (\'test_user_2\', \'1\') ON DUPLICATE KEY UPDATE `is_moderator`=\'1\'";



----===========================
updating who occupies the tag:
SQL:
INSERT INTO `dashtable`.`tag_occupied_by_user` (`tag_id`, `user_id`, `timestamp_checkin`) VALUES ('test_tag_1', 'test_user_1', CURRENT_TIMESTAMP);
PHP:
$sql = "INSERT INTO `dashtable`.`tag_occupied_by_user` (`tag_id`, `user_id`, `timestamp_checkin`) VALUES (\'test_tag_1\', \'test_user_1\', CURRENT_TIMESTAMP);";

updating eventlog
SQL:
INSERT INTO `dashtable`.`eventlog` (`timestamp`, `tag_id`, `user_id`) VALUES (CURRENT_TIMESTAMP, 'test_tag_1', 'test_user_1');
PHP:
$sql = "INSERT INTO `dashtable`.`eventlog` (`timestamp`, `tag_id`, `user_id`) VALUES (CURRENT_TIMESTAMP, \'test_tag_1\', \'test_user_1\');";



--checking when the user will end, based on user id
SELECT `tag_occupied_by_user`.`user_id`, `tag_occupied_by_user`.`timestamp_ending`
FROM tag_occupied_by_user
WHERE (`tag_occupied_by_user`.`tag_id` ='test_tag_1')

--checking tag id and time ending based for all
SELECT `tag_occupied_by_user`.`tag_id`, `tag_occupied_by_user`.`timestamp_ending` FROM tag_occupied_by_user, tag_to_table

$sql = "SELECT `tag_occupied_by_user`.`tag_id`, `tag_occupied_by_user`.`timestamp_ending`\n"
    . "FROM tag_occupied_by_user, tag_to_table\n"
    . "\n";

$sql = "UPDATE `dashtable`.`tag_occupied_by_user` SET `timestamp_ending` = \'2014-09-13 16:12:42\' WHERE `tag_occupied_by_user`.`tag_id` = \'test_tag_1\';";
