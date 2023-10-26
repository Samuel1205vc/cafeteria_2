<?php
session_start();
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");

$marca = $_POST['marca'];
$nombre_producto = $_POST['nombre_producto'];
$imagen = $_POST['imagen'];


//$db->debug=true;
if ($marca or $nombre_producto or $imagen) {
    $sql3 = $db->Prepare("SELECT *
                          FROM marcas m
                          INNER JOIN productos_examen pe ON m.id_marca = pe.id_marca
                          WHERE m.marca LIKE ?
                          AND pe.nombre_producto LIKE ?
                          AND pe.imagen LIKE ?
                        ");
    $rs3 = $db->GetAll($sql3, array($marca."%", $nombre_producto."%", $imagen."%",));
  if ($rs3) {
    echo "<center>
            <table class='listado'>
                  <tr>
                    <th>MARCA</th><th>NOMBRE_PRODUCTO</th><th>IMAGEN</th><img src'../../imagenes/modificar.gif'></th><th><img src='../../imagenes/borrar.jpeg'></th>
                  </tr>";
              foreach($rs3 as $k => $fila){
                      
                      $str = $fila["marca"];
                      $str1 = $fila["nombre_producto"];
                      $str2 = $fila["imagen"];

                  echo "<tr>
                            
                            <td>".resaltar($marca, $str)."</td>
                            <td>".resaltar($nombre_producto, $str1)."</td>
                            <td>".resaltar($imagen, $str2)."</td>
                            <td aling='center'>
                              <input type='radio' name='opcion' value='' onClick='mostrar(".$fila["id_producto"].")'>
                          </td>
                        </tr>";
              }
              echo "</table>
            </center>";
  } else {
          echo "<center><b> LA MARCA NO EXISTE !!</b></center><br>";
  }
}
?>