<?php

require_once("adodb/adodb.inc.php");


$conServidor = "localhost";
$conUsuario = "root";
$conClave = "";
$conBasededatos = "bd_cafeteria";

$db = ADONewConnection("mysqli");

//$db-> debug = true;

$conex = $db->Connect($conServidor, $conUsuario, $conClave, $conBasededatos);
$db->Execute("SET NAMES 'utf8'");
?>