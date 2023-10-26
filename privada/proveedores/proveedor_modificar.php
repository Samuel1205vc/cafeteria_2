<?php
session_start();
require_once("../../conexion.php");
require_once("../../libreria_menu.php");

//$db->debug=true;

$id_proveedor = $_POST['id_proveedor'];

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
       </head>
       <body>
       
       
        <p> &nbsp;</p>";


     

        echo "<h1>MODIFICAR PROVEEDOR</h1>";

$sql = $db->Prepare("SELECT *
                     FROM proveedores
                     WHERE id_proveedor = ?
                     AND _estado <> 'X'                        
                        ");
$rs = $db->GetAll($sql,array($id_proveedor));
 /*  if ($rs) {*/


  foreach($rs as $k => $fila) {


        echo"<form action='proveedor_modificar1.php' method='post' name='formu'>";
        echo"<center>
                <table class='listado'>
                  
                  
                  
                  <tr>
                    <th><b>(*)Nombre</b></th><td><input type='text' name='nombre' size='10' onkeyup='this.value=this.value.toUpperCase()' value='".$fila["nombre"]."'>
                    </td>
                  </tr>

                  <tr>
                    <th><b>(*)Apellidos</b></th><td><input type='text' name='apellidos' size='10' onkeyup='this.value=this.value.toUpperCase()' value='".$fila["apellidos"]."'>
                    </td>
                  </tr>

                  <tr>
                    <th><b>(*)Direccion</b></th><td><input type='text' name='dir' size='10' onkeyup='this.value=this.value.toUpperCase()' value='".$fila["dir"]."'>
                    </td>
                  </tr>
                  
                  <tr>
                    <th><b>(*)Telefono</b></th><td><input type='text' name='telefono' size='10' onkeyup='this.value=this.value.toUpperCase()' value='".$fila["telefono"]."'>
                    </td>
                  </tr>
                  <tr>
                  <input type='hidden' name='id_proveedor' value='".$fila["id_proveedor"]."'>
                    <td align='center' colspan='2'>  
                      <input type='submit' value='MODIFICAR PROVEEDOR'  >
                    </td>
                  </tr>
                </table>
                </center>";
          echo"</form>" ;  }   
    /*}*/

echo "</body>
      </html> ";

 ?>