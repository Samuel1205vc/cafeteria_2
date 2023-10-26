<?php
session_start();
require_once("../../conexion.php");

$db->debug=true;

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
       </head>
       <body>";
       


$id_tipo_producto = $_POST["id_tipo_producto"];
$producto = $_POST["producto"];
// $clave = $_POST["clave"];
$hash=password_hash($clave, PASSWORD_DEFAULT);

if(($id_tipo_producto!="") and  ($producto!="") /*and ($clave!="")*/){
   $reg = array();
   $reg["id_tipo_producto"] = $id_tipo_producto;
   $reg["nombre_producto"] = $producto;
   $reg["clave"] = $hash;
   $reg["_fec_insercion"] = date("Y-m-d H:i:s");
   $reg["_estado"] = 'A';
   $reg["_usuario"] = $_SESSION["sesion_id_usuario"];   
   $rs1 = $db->AutoExecute("productos", $reg, "INSERT"); 
   header("Location: productos.php");
   exit();
} else {
           echo"<div class='mensaje'>";
        $mensage = "NO SE INSERTARON LOS DATOS DE PRODUCTO";
        echo"<h1>".$mensage."</h1>";
        
        echo"<a href='producto_nuevo.php'>
                  <input type='button'style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' value='VOLVER>>>>'></input>
             </a>     
            ";
       echo"</div>" ;
   }


echo "</body>
      </html> ";
?> 