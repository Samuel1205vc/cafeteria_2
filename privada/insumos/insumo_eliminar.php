<?php
session_start();
require_once("../../conexion.php");


$__id_insumo = $_REQUEST["id_insumo"];

//$db->debug=true;

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
       </head>
       <body>";




   $reg = array();
   $reg["_estado"] = 'X';
   $reg["_usuario"] = $_SESSION["sesion_id_usuario"];   
   $rs1 = $db->AutoExecute("insumos", $reg, "UPDATE", "id_insumo='".$__id_insumo."'"); 
   header("Location:insumos.php");
   require_once("../../libreria_menu.php");
   exit();

            ?>