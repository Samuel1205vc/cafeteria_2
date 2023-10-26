<?php
session_start();
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");
$db->debug=true;

$nombre = $_POST["nombre"];
$direccion= $_POST["direccion"];
$telefono = $_POST["telefono"];
$pag_web= $_POST["pag_web"];

 
if($nombre or $direccion or $telefono or $pag_web ){
    $sql3 = $db->Prepare("SELECT*
                            FROM institutos
                            WHERE nombre LIKE ?
                            AND direccion LIKE ?
                            AND telefono LIKE ?
                            AND pag_web LIKE ?
                                           
                        ");
    $rs3 = $db->GetAll($sql3, array($nombre."%", $direccion."%", $telefono."%", $pag_web."%"));
    if ($rs3) {
        echo"<center>
                        <table class='listado'>
                        <tr>                                   
                        <th>NOMBRE</th><th>DIRECCION</th><th>TELEFONO</th><th>PAG_WEB</th>
                        <th><img src='../../imagenes/modificar.gif'></th><th><img src='../../imagenes/borrar.jpeg'></th>
                        </tr>";
                        
                    foreach ($rs3 as $k => $fila) {                                       
 
                        $str= $fila['nombre'];
                        $str1=$fila['direccion'];
                        $str2=$fila['telefono'];
                        $str3=$fila['pag_web'];

                      
                        echo"<tr>
                                <td align='center'>".resaltar($nombre,$str)."</td>
                                <td>".resaltar($direccion, $str1)."</td>
                                <td>".resaltar($telefono, $str2)."</td>
                                <td>".resaltar($pag_web, $str3)."</td>
                               
                                
                        <td align='center'>
                          <form name='formModif".$fila["id_instituto"]."' method='post' action='instituto_modificar.php'>
                            <input type='hidden' name='id_instituto' value='".$fila['id_instituto']."'>
                            <a href='javascript:document.formModif".$fila['id_instituto'].".submit();' title='Modificar Instituto del Sistema'>
                              Modificar>>
                            </a>
                          </form>
                        </td>
                        <td align='center'>  
                          <form name='formElimi".$fila["id_instituto"]."' method='post' action='instituto_eliminar.php'>
                            <input type='hidden' name='id_instituto' value='".$fila["id_instituto"]."'>
                            <a href='javascript:document.formElimi".$fila['id_instituto'].".submit();' title='Eliminar Instituto del Sistema' onclick='javascript:return(confirm(\"Desea realmente Eliminar al Instituto ".$fila["nombre"]." ".$fila["direccion"]." ".$fila["telefono"]." ".$fila["pag_web"]." ?\"))'; location.href='instituto_eliminar.php''> 
                              Eliminar>>
                            </a>
                          </form>                        
                        </td>
                     </tr>";
                    }
                    echo"</table>
                    </center>";
              

   }else{
echo"<center><b> EL INSTITUTO NO EXISTE !!! </b></center>";
  }

}

 ?>