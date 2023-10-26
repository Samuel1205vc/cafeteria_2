<?php
session_start();
require_once("../../conexion.php");
require_once("../../libreria_menu.php");

//$db->debug=true;

$id_tipo_producto = $_POST['id_tipo_producto'];

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
       </head>
       <body>
       

        <p> &nbsp;</p>";

        echo "<h1>MODIFICAR TIPO_PRODUCTO</h1>";

$sql = $db->Prepare("SELECT *
                     FROM tipos_productos
                     WHERE id_tipo_producto = ?
                     AND _estado <> 'X'                        
                        ");
$rs = $db->GetAll($sql,array($id_tipo_producto));
 /*  if ($rs) {*/


  foreach($rs as $k => $fila) {


        echo"<form action='tipo_producto_modificar1.php' method='post' name='formu'>";
        echo"<center>
                <table class='listado'>
                  
                  
                  
                  <tr>
                    <th><b>(*)Nombre</b></th><td><input type='text' name='nombre' size='10' onkeyup='this.value=this.value.toUpperCase()' value='".$fila["nombre"]."'>
                    </td>
                  </tr>
                  
                  
                  <tr>
                  <input type='hidden' name='id_tipo_producto' value='".$fila["id_tipo_producto"]."'>
                    <td align='center' colspan='2'>  
                      <input type='submit' value='MODIFICAR TIPO_PRODUCTO'  >
                    </td>
                  </tr>
                </table>
                </center>";
          echo"</form>" ;  }   
    /*}*/

echo "</body>
      </html> ";

 ?>