<?php
require_once('config.php');
require_once('function.php');

$dbh = connectDb();

$sth = $dbh->prepare("SELECT * FROM app JOIN student USING(student_id)");
$sth->execute();

$userData = array();

while($row = $sth->fetch(PDO::FETCH_ASSOC)){
    $userData[]=array(
    'id'=>$row['app_id'],
    'title'=>$row['app_title'],
    'icon'=>$row['app_icon'],    
    'year'=>$row['year'],
    'tag_id'=>$row['tag_id'],
    'student_id'=>$row['student_id'],
    'event_id'=>$row['event_id'],
    'student_name'=>$row['student_name']
  );
}

header('Content-type: application/json');
echo json_encode($userData,JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);

?>