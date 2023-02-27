<?php
require_once('config.php');
require_once('function.php');

$sth;

$dbh = connectDb();

if(isset($_GET["year"])) {
    $year = $_GET["year"];
    if(isset($_GET["event"])) {
        $event = $_GET["event"];
        $sth = $dbh->prepare("SELECT * FROM app where year = '$year' AND event_id = $event
                                JOIN student s ON a.app_id = s.app_id");
    } else {
        $sth = $dbh->prepare("SELECT * FROM app where year = '$year'");
    }
}

$sth->execute();

$userData = array();

while($row = $sth->fetch(PDO::FETCH_ASSOC)){
    $userData[]=array(
    'id'=>$row['app_id'],
    'student_name'=>getStudents($row['student_id']),
    'title'=>$row['app_title'],
    'icon'=>$row['app_icon'],
    'year'=>$row['year'],
    'tags'=>getTags($row['app_id']),
    'student_id'=>$row['student_id'],
    'event_id'=>$row['event_id']
  );
}

function getTags($id) {
    $dbh = connectDb();
    $tags = $dbh->prepare("SELECT t.tag_name as tag_name FROM tag t LEFT JOIN app_tag at ON t.tag_id = at.tag_id WHERE at.app_id = $id");
    $tags->execute();
    $show = [];
    while($row = $tags->fetch(PDO::FETCH_ASSOC)){
        $show[] = $row['tag_name'];
    }
    return $show;
}

function getStudents($id) {
    $dbh = connectDb();
    $stu = $dbh->prepare("SELECT * FROM app JOIN student USING(student_id) where student_id = '$id'");
    $stu->execute();
    $show = [];
    while($row = $stu->fetch(PDO::FETCH_ASSOC)){
        $show[] = $row['student_name'];
    }
    return $show;
}

header('Content-type: application/json');
echo json_encode($userData,JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);

?>
