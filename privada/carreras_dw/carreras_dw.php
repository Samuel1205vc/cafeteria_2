<?php
session_start();
require_once("../../conexion.php");
require_once("../../paginacion.inc.php");
$db->debug=true;

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
       </head>
       <body>
       <a  href='../../listado_tablas.php'>Listado de tablas</a>
       <a  href='carrera_nuevo.php'>Nueva Carrera</a>
       <a onclick='location.href=\"../../validar.php\"'><input type='button'name='accion' value='Cerrar Sesion' style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' 

        class='boton_cerrar'></a>";
        echo"<h3>USUARIO:".$_SESSION["sesion_usuario"]." &nbsp;&nbsp;";
        echo"ROL: ".$_SESSION["sesion_rol"]."</h3>"; 
        echo"<h1>LISTADO DE CARRERAS</h1>";

contarRegistros($db, "carreras_dw");
paginacion("carreras_dw.php?");

$sql = $db->Prepare("SELECT i.nombre,ca.*
                     FROM institutos_dw i
                     INNER JOIN carreras_dw ca ON i.id_instituto = ca.id_instituto
                     WHERE ca.id_carrera > 1 
                     ORDER BY ca.id_carrera DESC 
                     LIMIT ? OFFSET ?                     
                        ");
$rs = $db->GetAll($sql, array($nElem, $regIni));
   if ($rs) {
        echo"<center>
              <table class='listado'>
                <tr>                                   
                  <th>Nro</th><th>INSTITUTO</th><th>CARRERA</th><th>GRADO_ACADEMICO</th><th>DESCRIPCION</th><th>DURACION</th>
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
                        <td>".$fila['carrera']."</td>
                      
                        <td>".$fila['grado_academico']."</td> 
                        <td>".$fila['descripcion']."</td>
                        <td>".$fila['duracion']."</td>   
                        
                        <td align='center'>
                          <form name='formModif".$fila["id_carrera"]."' method='post' action='carrera_modificar.php'>
                            <input type='hidden' name='id_carrera' value='".$fila['id_carrera']."'>
                            <input type='hidden' name='id_instituto' value='".$fila['id_instituto']."'>
                            <a href='javascript:document.formModif".$fila['id_carrera'].".submit();' title='Modificar Carrera del Sistema'>
                              Modificar>>
                            </a>
                          </form>
                        </td>
                        <td align='center'>  
                          <form name='formElimi".$fila["id_carrera"]."' method='post' action='carrera_eliminar.php'>
                            <input type='hidden' name='id_carrera' value='".$fila["id_carrera"]."'>
                            <input type='hidden' name='id_instituto' value='".$fila['id_instituto']."'>
                            <a href='javascript:document.formElimi".$fila['id_carrera'].".submit();' title='Eliminar Carrera del Sistema' onclick='javascript:return(confirm(\"Desea realmente Eliminar a la Carrera ".$fila["carrera"]." ?\"))'; location.href='carrera_eliminar.php''> 
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