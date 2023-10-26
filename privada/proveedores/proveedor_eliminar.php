<?php
session_start();
require_once("../../conexion.php");


$__id_proveedor = $_REQUEST["id_proveedor"];

//$db->debug=true;

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
       </head>
       <body>";
       echo " <p> &nbsp;</p>";

$sql = $db->Prepare("SELECT *
					FROM insumos
					WHERE id_proveedor = ?
					AND _estado <> 'X'
					");
$rs = $db->GetAll($sql, array($__id_proveedor));

if(!$rs){
   $reg = array();
   $reg["_estado"] = 'X';
   $reg["_usuario"] = $_SESSION["sesion_id_usuario"];   
   $rs1 = $db->AutoExecute("proveedores", $reg, "UPDATE", "id_proveedor='".$__id_proveedor."'"); 
   header("Location:proveedores.php");
   exit();
}else {
   require_once("../../libreria_menu.php");
           echo"<div class='mensaje'>";
        $mensage = "NO SE ELIMINARON LOS DATOS DEL PROVEEDOR PORQUE TIENE HERENCIA";
        echo"<h1>".$mensage."</h1>";
        
        echo"<a href='proveedores.php'>
                  <input type='button'style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' value='VOLVER>>>>'></input>
             </a>     
            ";
            echo "</div>";
            }
            echo "</body>
            </html>";
            ?>