<?php
session_start();
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");
//$db->debug=true;
$id_instituto = $_POST["id_instituto"];

 
    $sql3 = $db->Prepare("SELECT*
                            FROM institutos
                            WHERE id_instituto =?
                                            
                              ");
    $rs3 = $db->GetAll($sql3, array($id_instituto));
        echo"<center>
            <table whith='60%' border='1'>
                <tr>
                <th colspan='4'>Datos institutos</th>
                </tr>";
         
        foreach ($rs3 as $k => $fila) {                                       

            echo"<tr>
                <td align='center'>".$fila["nombre"]."</td>
                <td>".$fila["direccion"]."</td>
                <td>".$fila["telefono"]."</td>
                <td>".$fila["pag_web"]."</td>
                
               
                
            </tr>";
        }
                                
    echo"</table>
    </center>";
  
 ?>