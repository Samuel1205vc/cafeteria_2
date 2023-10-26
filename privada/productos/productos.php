<?php
session_start();
require_once("../../conexion.php");

//$db->debug=true;

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
       </head>
       <body>
       <a  href='../../listado_tablas.php'>Listado de tablas</a>
       <a  href='producto_nuevo.php'>Nuevo Producto</a>
       <a onclick='location.href=\"../../validar.php\"'><input type='button'name='accion' value='Cerrar Sesion' style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' class='boton_cerrar'></a>";

         echo "<h3>USUARIO: ".$_SESSION["sesion_usuario"]." &nbsp;&nbsp; ";
echo "ROL: ".$_SESSION["sesion_rol"]."</h3>";

        echo "<h1>LISTADO DE PRODUCTOS</h1>";

$sql = $db->Prepare("SELECT CONCAT_WS(' ', tp.nombre) AS tipo_producto, p.* 
                     FROM tipos_productos tp, productos p
                     WHERE tp.id_tipo_producto = p.id_tipo_producto
                     AND tp._estado <> 'X' 
                     AND p._estado <> 'X' 
                     ORDER BY p.id_producto DESC                      
                        ");
$rs = $db->GetAll($sql);
   if ($rs) {
        echo"<center>
              <table class='listado'>
                <tr>                                   
                  <th>Nro</th><th>TIPO_PRODUCTO</th><th>PRODUCTO</th>
                  <th><img src='../../imagenes/modificar.gif'></th><th><img src='../../imagenes/borrar.jpeg'></th>
                </tr>";
                $b=1;
            foreach ($rs as $k => $fila) {                                       
                echo"<tr>
                        <td align='center'>".$b."</td>
                        <td>".$fila['tipo_producto']."</td>                        
                        <td>".$fila['nombre_producto']."</td>
                        

                        <td align='center'>
                          <form name='formModif".$fila["id_producto"]."' method='post' action='producto_modificar.php'>
                            <input type='hidden' name='id_tipo_producto' value='".$fila['id_tipo_producto']."'>
                            <input type='hidden' name='id_producto' value='".$fila['id_producto']."'>

                            <a href='javascript:document.formModif".$fila['id_producto'].".submit();' title='Modificar Producto Sistema'>
                              Modificar>>
                            </a>
                          </form>
                        </td>
                        <td align='center'>  
                          <form name='formElimi".$fila["id_producto"]."' method='post' action='producto_eliminar.php'>
                            <input type='hidden' name='id_producto' value='".$fila["id_producto"]."'>
                            <a href='javascript:document.formElimi".$fila['id_producto'].".submit();' title='Eliminar producto del Sistema' onclick='javascript:return(confirm(\"Desea realmente Eliminar al producto ".$fila["nombre_producto"]." ?\"))'; location.href='producto_eliminar.php''> 
                              Eliminar>>
                            </a>
                          </form>                        
                        </td>
                     </tr>";
                     $b=$b+1;
            }
             echo"</table>
          </center>";
    }

echo "</body>
      </html> ";

 ?>