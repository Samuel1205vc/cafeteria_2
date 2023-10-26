<?php
session_start();
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");

$id_Libro = $_POST["id_Libro"];

$sql = $db->Prepare("SELECT *
                     FROM libros l
                     WHERE id_Libro= ?
                     INNER JOIN categorias c ON c.id_Categoria = l.id_Categoria                       
                        ");
$rs = $db->GetAll($sql,array($id_Libro));

echo"<center>
    <table width='60%' border='1'>
        <tr>
            <th colspan='4' > DATOS LIBRO </th>
        </tr> ";
        foreach ($rs as $k => $fila) {
            echo "<tr>
                    <td align='center'>" . $fila['codigo'] . "</td>
                    <td>" . $fila['titulo'] . "</td>
                    <td>" . $fila['editorial'] . "</td>
                </tr>";
        }
        echo"</table>
        </center>";
?>