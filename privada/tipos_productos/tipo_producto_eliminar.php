<?php
session_start();
require_once("../../conexion.php");


$__id_tipo_producto = $_REQUEST["id_tipo_producto"];

//$db->debug=true;

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
       </head>
       <body>";

$sql = $db->Prepare("SELECT *
					FROM productos
					WHERE id_tipo_producto = ?
					AND _estado <> 'X'
					");
$rs = $db->GetAll($sql, array($__id_tipo_producto));

if(!$rs){
   $reg = array();
   $reg["_estado"] = 'X';
   $reg["_usuario"] = $_SESSION["sesion_id_usuario"];   
   $rs1 = $db->AutoExecute("tipos_productos", $reg, "UPDATE", "id_tipo_producto='".$__id_tipo_producto."'"); 
   header("Location:tipos_productos.php");
   exit();
}else {
   require_once("../../libreria_menu.php");
           echo"<div class='mensaje'>";
        $mensage = "NO SE ELIMINARON LOS DATOS DE TIPO_PRODUCTO PORQUE TIENE HERENCIA";
        echo"<h1>".$mensage."</h1>";
        
        echo"<a href='tipos_productos.php'>
                  <input type='button'style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' value='VOLVER>>>>'></input>
             </a>     
            ";
            echo "</div>";
            }
            echo "</body>
            </html>";
            ?>