<?php
session_start();
require_once("../../conexion.php");

$db->debug=true;

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
       </head>
       <body>";
       


$nombre = $_POST["nombre"];

 

if($nombre!=""){
   $reg = array();
   $reg["id_cafeteria"] = 1;
   $reg["nombre"] = $nombre;
   $reg["_fec_insercion"] = date("Y-m-d H:i:s");
   $reg["_estado"] = 'A';
   $reg["_usuario"] = $_SESSION["sesion_id_usuario"];   
   $rs1 = $db->AutoExecute("tipos_productos", $reg, "INSERT"); 
   header("Location: tipos_productos.php");
   exit();
} else {
           echo"<div class='mensaje'>";
        $mensage = "NO SE INSERTARON LOS DATOS DE TIPO_PRODUCTO";
        echo"<h1>".$mensage."</h1>";
        
        echo"<a href='tipo_producto_nuevo.php'>
                  <input type='button'style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' value='VOLVER>>>>'></input>
             </a>     
            ";
       echo"</div>" ;
   }


echo "</body>
      </html> ";
?> 