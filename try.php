
<?php
$patterns = array ('(null)');
$replace = array ('"0"');
echo preg_replace($patterns, $replace, json_encode(new ArrayValue(mysqli_fetch_all($result)), JSON_PRETTY_PRINT));
?>