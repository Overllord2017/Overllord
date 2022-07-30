<?php

$mysqli = new mysqli('localhost', 'root', '', 'store_choose');

 
$stmt = $mysqli->query("SELECT id_sections, name, description FROM sections");
 
while ($row = $stmt->fetch_row()) {
    echo "<div>$row[1] - $row[2]</div><br>";
}

