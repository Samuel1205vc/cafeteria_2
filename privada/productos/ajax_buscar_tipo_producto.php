<?php
session_start();
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");

$db->debug=true;

$nombre = $_POST["nombre"];

if($nombres){
    $sql = $db->Prepare("SELECT *
    FROM tipos_productos
    WHERE nombre_producto LIKE ?
    AND _estado <> 'x' 
    ");  
    $rs =$db->GetAll($sql, array($nombre."%"));


    if ($rs) {
        echo "<center>
                    <table class='listado'>
                    <tr>                                   
                        <th>NOMBRE</th>
                        <th><img src='../../imagenes/modificar.gif'></th><th><img src='../../imagenes/borrar.jpeg'></th>
                    </tr>";
        foreach ($rs as $k => $fila) {
            $str =$fila["nombre"];
           

            echo"<tr>
                   
                    <td>".resaltar($nombre, $str)."</td>
                    <td align='center'>
                        <input type='radio' name='opcion' value='' onClick='buscar_tipo_producto(".$fila["id_tipo_producto"].")'>
                    </td>                                                      
                </tr>";       
        }
        echo"</table>
        </center>";
    } else {
        echo"<center><b> EL TIPO_PRODUCTO NO EXISTE !! </b></center>";
        echo"<center>
                    <table class='listado'>
                    
                    <tr>
                        <th><b>(*)Nombre</b></th>
                        <td><input type='text' name='nombres1' size='10' onkeyup='this.value=this.value.toUpperCase()'>
                        </td>
                    </tr>
                    
                    
                    <tr>
                        <td align='center' colspan='2'>  
                        <input type='button' value='ADICIONAR TIPO_PRODUCTO'  onClick='insertar_tipo_producto()'>
                        </td>
                    </tr>
                    </table>
                </center>";

    }
}
?>