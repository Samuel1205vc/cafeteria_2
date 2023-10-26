<?php
session_start();
require_once("../../conexion.php");

$db->debug=true;

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
       </head>
       <body>";
       


$id_proveedor = $_POST["id_proveedor"];
$nombre = $_POST["nombre"];
$descripcion = $_POST["descripcion"];
// $clave = $_POST["clave"];
//$hash=password_hash($clave, PASSWORD_DEFAULT);

if(($id_proveedor!="") and  ($nombre!="") and ($descripcion!="")/*and ($clave!="")*/){
   $reg = array();
   $reg["id_proveedor"] = $id_proveedor;
   $reg["nombre"] = $nombre;
   $reg["descripcion"] = $descripcion;
   //$reg["clave"] = $hash;
   $reg["_fec_insercion"] = date("Y-m-d H:i:s");
   $reg["_estado"] = 'A';
   $reg["_usuario"] = $_SESSION["sesion_id_usuario"];   
   $rs1 = $db->AutoExecute("insumos", $reg, "INSERT"); 
   header("Location: insumos.php");
   exit();
} else {
           echo"<div class='mensaje'>";
        $mensage = "NO SE INSERTARON LOS DATOS DE INSUMO";
        echo"<h1>".$mensage."</h1>";
        
        echo"<a href='insumo_nuevo.php'>
                  <input type='button'style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' value='VOLVER>>>>'></input>
             </a>     
            ";
       echo"</div>" ;
   }


echo "</body>
      </html> ";
?> 