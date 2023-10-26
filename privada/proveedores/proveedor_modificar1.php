<?php
session_start();
require_once("../../conexion.php");

//$db->debug=true;


echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
       </head>
       <body>";
       

echo$id_proveedor = $_POST['id_proveedor'];
$nombre = $_POST["nombre"];
$apellidos = $_POST["apellidos"];
$dir = $_POST["dir"];
$telefono = $_POST["telefono"];
 

if(($nombre!="") and ($apellidos!="")){
   $reg = array();
   $reg["id_cafeteria"] = 1;
   $reg["nombre"] = $nombre;
   $reg["apellidos"] = $apellidos;
   $reg["dir"] = $dir;
   $reg["telefono"] = $telefono;
   $reg["_fec_insercion"] = date("Y-m-d H:i:s");
   $reg["_estado"] = 'A';
   $reg["_usuario"] = $_SESSION["sesion_id_usuario"];   
   $rs1 = $db->AutoExecute("proveedores", $reg, "UPDATE", "id_proveedor='".$id_proveedor."'"); 
   header("Location: proveedores.php");
   exit();
} else {
           echo"<div class='mensaje'>";
        $mensage = "NO SE MODIFICARON LOS DATOS DEL PROVEEDOR";
        echo"<h1>".$mensage."</h1>";
        
        echo"<a href='proveedores.php'>
                  <input type='button'style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' value='VOLVER>>>>'></input>
             </a>     
            ";
       echo"</div>" ;
   }


echo "</body>
      </html> ";
?> 