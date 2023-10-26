<?php
session_start();
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");

$nombre = $_POST['nombre'];


if ($nombre) {
    $sql3 = $db->Prepare("SELECT *
                          FROM tipos_productos
                          WHERE nombre LIKE ?
                          AND _estado <> 'X'
                        ");
    $rs3 = $db->GetAll($sql3, array($nombre."%"));
  if ($rs3) {
    echo "<center>
            <table class='listado'>
                  <tr>
                    <th>NOMBRE</th><img src'../../imagenes/modificar.gif'></th><th><img src='../../imagenes/borrar.jpeg'></th>
                  </tr>";
              foreach($rs3 as $k => $fila){
                      $str = $fila["nombre"];

                  echo "<tr>
                            <td>".resaltar($nombre, $str3)."</td>
                            <td aling='center'>
                              <form name='formModif".$fila["id_tipo_producto"]."' method='post' action='tipo_producto_modificar.php'>
                              <input type='hidden' name='id_tipo_producto' value='".$fila["id_tipo_producto"]."'>
                              <a href='javascript:document.formModif".$fila['id_tipo_producto'].".submit();' title='Modificar Tipo_Producto Sistema'>
                              Modificar>>
                              </a>
                            </form>
                          </td>
                        </tr>";
              }
              echo "</table>
            </center>";
  } else {
          echo "<center><b> El TIPO DE PRODUCTO NO EXISTE !!</b></center><br>";
  }
}
?>