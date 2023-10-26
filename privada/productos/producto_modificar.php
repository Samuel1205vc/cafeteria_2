<?php
session_start();
require_once("../../conexion.php");

//$db->debug=true;

$id_tipo_producto = $_POST["id_tipo_producto"];
$id_producto = $_POST["id_producto"];

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
       </head>
       <body>
       <a  href='../../listado_tablas.php'>Listado de tablas</a>
       <a  href='productos.php'>Listado de Productos</a>
       <a onclick='location.href=\"../../validar.php\"'><input type='button'name='accion' value='Cerrar Sesion' style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' class='boton_cerrar'></a>";

         echo "<h3>USUARIO: ".$_SESSION["sesion_usuario"]." &nbsp;&nbsp; ";
echo "ROL: ".$_SESSION["sesion_rol"]."</h3>";

        echo "<h1>MODIFICAR PRODUCTOS</h1>";

$sql = $db->Prepare("SELECT *
                     FROM productos
                     WHERE id_producto = ? 
                     AND _estado='A'                       
                        ");
$rs = $db->GetAll($sql, array($id_producto));

$sql1 = $db->Prepare("SELECT nombre as dato, id_tipo_producto
                     FROM tipos_productos
                     WHERE id_tipo_producto =?
                     AND _estado = 'A'                        
                        ");
$rs1 = $db->GetAll($sql1,array($id_tipo_producto));

$sql2 = $db->Prepare("SELECT nombre as dato, id_tipo_producto
                     FROM tipos_productos
                     WHERE id_tipo_producto <>?
                     AND _estado = 'A'                        
                        ");
$rs2 = $db->GetAll($sql2,array($id_tipo_producto));
 /*  if ($rs) {*/
        echo"<form action='producto_modificar1.php' method='post' name='formu'>";
        echo"<center>
                <table class='listado'>
                  <tr>
                    <th>(*)Tipos_productos</th>
                    <td>
                      <select name='id_tipo_producto'>";
                       
                        foreach ($rs1 as $k => $fila) {
                        echo"<option value='".$fila['id_tipo_producto']."'>".$fila['dato']."</option>";    
                        } 

                        foreach ($rs2 as $k => $fila) {
                        echo"<option value='".$fila['id_tipo_producto']."'>".$fila['dato']."</option>";    
                        }  

                echo"</select>
                    </td>
                  </tr>";

                  foreach ($rs as $k =>$fila){
                    echo"<tr>
                    <th><b>(*)Nombre de producto</b></th>
                    <td><input type='text' name='nombre_producto' size='10' value ='".$fila["nombre_producto"]."'></td>
                  </tr>
                  
                  
                  <tr>
                    <td align='center' colspan='2'>  
                      <input type='submit' value='MODIFICAR PRODUCTO'><br>
                      <input type='hidden' name='id_producto' value='".$fila["id_producto"]."'>
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