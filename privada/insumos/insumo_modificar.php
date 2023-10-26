<?php
session_start();
require_once("../../conexion.php");
require_once("../../libreria_menu.php");

//$db->debug=true;

$id_proveedor = $_POST["id_proveedor"];
$id_insumo = $_POST["id_insumo"];

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
       </head>
       <body>
       
      <p> &nbsp;</p>";
         echo "<h3>USUARIO: ".$_SESSION["sesion_usuario"]." &nbsp;&nbsp; ";
echo "ROL: ".$_SESSION["sesion_rol"]."</h3>";

        echo "<h1>MODIFICAR INSUMOS</h1>";

$sql = $db->Prepare("SELECT *
                     FROM insumos
                     WHERE id_insumo = ? 
                     AND _estado='A'                       
                        ");
$rs = $db->GetAll($sql, array($id_insumo));

$sql1 = $db->Prepare("SELECT nombre as dato, id_proveedor
                     FROM proveedores
                     WHERE id_proveedor =?
                     AND _estado = 'A'                        
                        ");
$rs1 = $db->GetAll($sql1,array($id_proveedor));

$sql2 = $db->Prepare("SELECT nombre as dato, id_proveedor
                     FROM proveedores
                     WHERE id_proveedor <>?
                     AND _estado = 'A'                        
                        ");
$rs2 = $db->GetAll($sql2,array($id_proveedor));
 /*  if ($rs) {*/
        echo"<form action='insumo_modificar1.php' method='post' name='formu'>";
        echo"<center>
                <table class='listado'>
                  <tr>
                    <th>(*)Proveedores</th>
                    <td>
                      <select name='id_proveedor'>";
                       
                        foreach ($rs1 as $k => $fila) {
                        echo"<option value='".$fila['id_proveedor']."'>".$fila['dato']."</option>";    
                        } 

                        foreach ($rs2 as $k => $fila) {
                        echo"<option value='".$fila['id_proveedor']."'>".$fila['dato']."</option>";    
                        }  

                echo"</select>
                    </td>
                  </tr>";

                  foreach ($rs as $k =>$fila){
                    echo"<tr>
                    <th><b>(*)Nombre de insumo</b></th>
                    <td><input type='text' name='nombre' size='10' value ='".$fila["nombre"]."'></td>
                  </tr>

                  <tr>
                    <th><b>(*)Descripcion</b></th>
                    <td><input type='text' name='descripcion' size='10' value ='".$fila["descripcion"]."'></td>
                  </tr>


                  
                  
                  <tr>
                    <td align='center' colspan='2'>  
                      <input type='submit' value='MODIFICAR INSUMO'><br>
                      <input type='hidden' name='id_insumo' value='".$fila["id_insumo"]."'>
                      (*)Datos Obligatorios
                    </td>
                  </tr>";


                  }
             echo "
                </table>
                </center>";
          echo"</form>" ;     
    /*}*/

echo "</body>
      </html> ";

 ?>