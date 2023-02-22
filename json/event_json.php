<?php
require_once('config.php');
require_once('function.php');

$dbh = connectDb();

$sth = $dbh->prepare("SELECT * FROM app JOIN event USING(event_id)");
$sth->execute();

$userData = array();

while($row = $sth->fetch(PDO::FETCH_ASSOC)){
    $userData[]=array(
    'id'=>$row['event_id'],
    'name'=>$row['event_name']
    );
}

header('Content-type: application/json');
echo json_encode($userData,JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);

?>