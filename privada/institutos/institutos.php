<?php
session_start();
require_once("../../conexion.php");

$db->debug=true;

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
         <script type='text/javascript' src='../../ajax.js'></script>
         <script type='text/javascript' src='js/buscar_instituto.js'></script>
       </head>
       <body>
       <a  href='../../listado_tablas.php'>Listado de tablas</a>
       <a  href='instituto_nuevo.php'>Nuevo Instituto</a>
       <a onclick='location.href=\"../../validar.php\"'><input type='button'name='accion' value='Cerrar Sesion' style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' class='boton_cerrar'></a>";

echo "<h3>USUARIO: ".$_SESSION["sesion_usuario"]." &nbsp;&nbsp; ";
echo "ROL: ".$_SESSION["sesion_rol"]."</h3>";

        echo "<h1>LISTADO DE INSTITUTOS</h1>";
        echo"<!-------INICIO BUSCADOR------------>
        <center>
        <form action='#' method='post' name='formu'>
        <table border='1' class='listado'>
          <tr>
          <th>
            <b>NOMBRE</b></br>
            <input type='text' name='nombre' size='10' onkeyUp='buscar_instituto()'>
          </th>
        
          <th>
            <b>DIRECCION</b></br>
            <input type='text' name='direccion' size='10' onkeyUp='buscar_instituto()'>
          </th>
          
         
          <th>
            <b>TELEFONO</b></br>
            <input type='text' name='telefono' size='10' onkeyUp='buscar_instituto()'>                  
          </th>
          <th>
            <b>PAGINA WEB</b></br>
            <input type='text' name='pag_web' size='10' onkeyUp='buscar_instituto()'>                  
          </th>
         
         
          
          
        </table>
        </form>
        </center>
        <!-------FIN BUSCADOR--------------->";

  echo"<div id='instituto1'>";

$sql = $db->Prepare("SELECT *
                     FROM institutos
                      
                     ORDER BY id_instituto DESC                      
                        ");
$rs = $db->GetAll($sql);
   if ($rs) {
        echo"<center>
              <table class='listado'>
                <tr>                                   
                  <th>Nro</th><th>NOMBRE</th><th>DIRECCION</th><th>TELEFONO</th><th>PAG_WEB</th>
                  <th><img src='../../imagenes/modificar.gif'></th><th><img src='../../imagenes/borrar.jpeg'></th>
                </tr>";
                $b=1;
            foreach ($rs as $k => $fila) {                                       
                echo"<tr>
                        <td align='center'>".$b."</td>
                        <td align='center'>".$fila['nombre']."</td>
                        <td>".$fila['direccion']."</td>
                        <td>".$fila['telefono']."</td>
                        <td>".$fila['pag_web']."</td>
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
                     $b=$b+1;
            }
             echo"</table>
          </center>";
    }

echo "</body>
      </html> ";

 ?>