<?php
session_start();
require_once("../../conexion.php");
require_once("../../paginacion.inc.php");
require_once("../../libreria_menu.php");

//$db->debug=true;

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
       </head>
       <body>
       <p> &nbsp;</p>";
    

contarRegistros($db, "tipos_productos");

paginacion("tipos_productos.php?");

/*$sql = $db->Prepare("SELECT *
                     FROM tipos_productos
                     WHERE _estado <> 'X' 
                     ORDER BY id_tipo_producto DESC                      
                        ");
$rs = $db->GetAll($sql);*/

$sql = $db->Prepare("SELECT *
                     FROM tipos_productos
                     WHERE _estado <> 'X'
                     AND id_tipo_producto > 1
                     ORDER BY id_tipo_producto DESC
                     LIMIT ? OFFSET ?                     
                        ");
$rs = $db->GetAll($sql, array($nElem, $regIni));

   if ($rs) {
        echo"<center>
        <h1>LISTADO DE TIPOS_PRODUCTOS</h1>
        <b><a  href='tipo_producto_nuevo.php'>Nuevo tipo_producto >>>> </a></b>
              <table class='listado'>
                <tr>                                   
                  <th>Nro</th><th>NOMBRE</th>
                  <th><img src='../../imagenes/modificar.gif'></th><th><img src='../../imagenes/borrar.jpeg'></th>
                </tr>";
                $b=0;
                $total=$pag-1;
                $a = $nElem*$total;
                $b = $b+1+$a;

            foreach ($rs as $k => $fila) {                                       
                echo"<tr>
                        <td align='center'>".$b."</td>
                        
                        <td>".$fila['nombre']."</td>
                        <td align='center'>
                          <form name='formModif".$fila["id_tipo_producto"]."' method='post' action='tipo_producto_modificar.php'>
                            <input type='hidden' name='id_tipo_producto' value='".$fila['id_tipo_producto']."'>
                            <a href='javascript:document.formModif".$fila['id_tipo_producto'].".submit();' title='Modificar Tipo_Producto'>
                              Modificar>>
                            </a>
                          </form>
                        </td>
                        <td align='center'>  
                          <form name='formElimi".$fila["id_tipo_producto"]."' method='post' action='tipo_producto_eliminar.php'>
                            <input type='hidden' name='id_tipo_producto' value='".$fila["id_tipo_producto"]."'>
                            <a href='javascript:document.formElimi".$fila['id_tipo_producto'].".submit();' title='Eliminar Tipo_Producto del Sistema' onclick='javascript:return(confirm(\"Desea realmente Eliminar al Tipo_Producto ".$fila["nombre"]."?\"))'; location.href='tipo_producto_eliminar.php''> 
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

    echo"<!--PAGINACION--------------------->";
    echo"<table border='0' align='center'>
          <tr>
            <td>";
            if(!empty($urlback)){
              echo"<a href=".$urlback." style'font-family:Verdana;font-size:9px;cursor:pointer'; >&laquo;Anterior</a>";
            }
            if(!empty($paginas)){
              foreach ($paginas as $k => $pagg) {
                if ($pagg["npag"]== $pag){
                  if ($pag != '1'){
                    echo"|";
                  }
                  echo"<b style='color:#FB992F;font-size: 12px;'>";
                }else
                echo"</b> | <a href=".$pagg["pagV"]." style='cursor:pointer;'>";echo $pagg["npag"]; echo"</a>";
              }
            }
            if(($nPags > $nBotones) and (!empty($urlnext)) and ($pag < $nPags)){
              echo" |<a href=".$urlnext." style='font-family: Verdana;font-size: 9px;cursor:pointer'>Siguiente&raquo;</a>";
            }
            echo"</td>
            </tr>
            </table>";
            echo"<!--PAGINACION------------------------>";

echo "</body>
      </html> ";

 ?>