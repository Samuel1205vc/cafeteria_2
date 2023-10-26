<?php
session_start();
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");

$nombre = $_POST['nombre'];
$representante = $_POST['representante'];
$telefono = $_POST['telefono'];


//$db->debug=true;
if ($nombre or $representante or $telefono) {
    $sql3 = $db->Prepare("SELECT *
                          FROM animaciones
                          WHERE nombre LIKE ?
                          AND representante LIKE ?
                          AND telefono LIKE ?
                          
                        ");
    $rs3 = $db->GetAll($sql3, array($nombre."%", $representante."%", $telefono."%",));
  if ($rs3) {
    echo "<center>
            <table class='listado'>
                  <tr>
                    <th>NOMBRE</th><th>REPRESENTANTE</th><th>TELEFONO</th><img src'../../imagenes/modificar.gif'></th><th><img src='../../imagenes/borrar.jpeg'></th>
                  </tr>";
              foreach($rs3 as $k => $fila){
                      
                      $str = $fila["nombre"];
                      $str1 = $fila["representante"];
                      $str2 = $fila["telefono"];

                  echo "<tr>
                            
                            <td>".resaltar($nombre, $str)."</td>
                            <td>".resaltar($representante, $str1)."</td>
                            <td>".resaltar($telefono, $str2)."</td>
                            <td aling='center'>
                              <input type='radio' name='opcion' value='' onClick='mostrar(".$fila["id_animacion"].")'>
                          </td>
                        </tr>";
              }
              echo "</table>
            </center>";
  } else {
          echo "<center><b> LA ANIMACION NO EXISTE !!</b></center><br>";
  }
}
?>