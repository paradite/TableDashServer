
<?php
$patterns = array ('(null)');
$replace = array ('"0"');
echo preg_replace($patterns, $replace, '[ [ [ "364A507A", "table-Y", "2014-09-14 10:10:09" ], [ "D46DCCE4", "table-J", "2014-09-14 10:15:16" ], [ null, "table-Z", null ], [ null, "table_virtual_1", null ], [ null, "test_table_1", null ] ], [ [ "5" ] ], [ [ "0" ] ], [ [ "5" ] ] ]');
?>