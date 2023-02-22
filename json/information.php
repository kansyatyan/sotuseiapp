<?php
require_once('config.php');
require_once('function.php');

if (isset($_GET["id"])) {

$dbh = connectDb();
$id=$_GET["id"];

//information
$sth = $dbh->prepare("SELECT *
                        FROM app a
                        JOIN information i ON a.app_id = i.app_id
                        WHERE a.app_id = ".$id);
// image
$images = $dbh->prepare("SELECT images AS imagepath
                        FROM images
                        WHERE app_id = ".$id);
$sth->execute();
$images->execute();

// imagepath
$imageArray = array();
while($row = $images->fetch(PDO::FETCH_ASSOC)) {
    $tmp = array(
            'imagepath' => $row['imagepath']
            );
    $imageArray[] = $tmp;
}

$userData = array();

while($row = $sth->fetch(PDO::FETCH_ASSOC)){
    $tmp=array(
    'id'=>$row['app_id'],
    'title'=>$row['app_title'],
    'haikei'=>$row['haikei'],
    'kankyou'=>$row['kankyou'],
    'OS'=>$row['OS'],
    'language'=>$row['language'],
    'server'=>$row['server'],
    'app_Framework'=>$row['app_Framework'],
    'db_Framework'=>$row['db_Framework'],
    'point'=>$row['point'],
    'idea'=>"",
    'not_function'=>$row['not_function'],
    'site'=>$row['site'],
    'movie'=>$row['movie'],
    'images'=>$imageArray
 );

    $userData[] = $tmp;
}

$userData = array('user_data' => $userData);

header('Content-type: application/json');
echo json_encode($userData,JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
} else {
$errorArray = array('error_code' => 999);
header('Content-type: application/json');
header('HTTP', true, 400);
echo json_encode($errorArray,JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);

}

?>
