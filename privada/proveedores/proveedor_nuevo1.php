<?php
session_start();
require_once("../../conexion.php");

$db->debug=true;

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
       </head>
       <body>";
       


$apellidos = $_POST["apellidos"];
$nombre = $_POST["nombre"];
//$ci = $_POST["ci"];
$direccion = $_POST["direccion"];
$telefono = $_POST["telefono"];
//$genero1 = isset($_POST["genero"]); 

if($nombre!=""){
   $reg = array();
   $reg["id_cafeteria"] = 1;
   $reg["apellidos"] = $apellidos;
   
   $reg["nombre"] = $nombre;
   // $reg["ci"] = $ci;
   $reg["dir"] = $dir;
   $reg["telefono"] = $telefono;
   //$reg["genero"] = $_POST["genero"];
   $reg["_fec_insercion"] = date("Y-m-d H:i:s");
   $reg["_estado"] = 'A';
   $reg["_usuario"] = $_SESSION["sesion_id_usuario"];   
   $rs1 = $db->AutoExecute("proveedores", $reg, "INSERT"); 
   header("Location: proveedores.php");
   exit();
} else {
           echo"<div class='mensaje'>";
        $mensage = "NO SE INSERTARON LOS DATOS DEL PROVEEDOR";
        echo"<h1>".$mensage."</h1>";
        
        echo"<a href='proveedor_nuevo.php'>
                  <input type='button'style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' value='VOLVER>>>>'></input>
             </a>     
            ";
       echo"</div>" ;
   }


echo "</body>
      </html> ";
?> 