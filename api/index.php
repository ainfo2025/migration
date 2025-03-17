<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

require_once("class.apiCall.php");


$P = array_merge($_GET, $_POST);


$API = new apiCall($P, null);
$API->dumpJSON();

?>