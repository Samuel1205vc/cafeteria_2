<?php
session_start();
require_once("../../conexion.php");

$db->debug=true;

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
         <script type='text/javascript' src='../../ajax.js'></script>
         <script type='text/javascript' src='js/buscar_personas.js'></script>
       </head>
       <body>
       <a  href='../../listado_tablas.php'>Listado de tablas</a>
       <a  href='persona_nuevo.php'>Nueva Persona</a>
       <a onclick='location.href=\"../../validar.php\"'><input type='button'name='accion' value='Cerrar Sesion' style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' class='boton_cerrar'></a>";
        echo"<h3>USUARIO:".$_SESSION['sesion_usuario']."&nbsp;&nbsp;";
        echo"ROL: ".$_SESSION['sesion_rol']."</h3>";
        echo"<h1>LISTADO DE PERSONAS</h1>";

echo"<!-------INICIO BUSCADOR------------>
        <center>
        <form action='#' method='post' name='formu'>
        <table border='1' class='listado'>
          <tr>
          <th>
            <b>PATERNO</b></ br>
            <input type='text' name='paterno' size='10' onkeyUp='buscar_personas()'>
          </th>
        
          <th>
            <b>MATERNO</b></ br>
            <input type='text' name='materno' size='10' onkeyUp='buscar_personas()'>
          </th>
          
         
          <th>
            <b>NOMBRES</b></ br>
            <input type='text' name='nombres' size='10' onkeyUp='buscar_personas()'>                  
          </th>
         
          <th>
           <b>C.I.</b></ br>
           <input type='text' name='ci' size='10' onkeyUp='buscar_personas()'>
          </th>
            
          </tr>
          
        </table>
        </form>
        </center>
        <!-------FIN BUSCADOR--------------->";

  echo"<div id='personas1'>"; 

  $sql = $db->Prepare("SELECT *
                FROM personas
                WHERE estado <> 'X' 
                ORDER BY id_persona DESC                      
              ");
$rs = $db->GetAll($sql);

if ($rs) {
echo"<center>
                <table class='listado'>
                <tr>                                   
                <th>Nro</th><th>C.I.</th><th>PATERNO</th><th>MATERNO</th><th>NOMBRES</th>
                <th><img src='../../imagenes/modificar.gif'></th><th><img src='../../imagenes/borrar.jpeg'></th>
                </tr>";
                $b=1;
            foreach ($rs as $k => $fila) {                                       
            echo"<tr>
                <td align='center'>".$b."</td>
                <td align='center'>".$fila['ci']."</td>
                <td>".$fila['ap']."</td>
                <td>".$fila['am']."</td>
                <td>".$fila['nombres']."</td>
                <td align='center'>
                  <form name='formModif".$fila["id_persona"]."' method='post' action='persona_modificar.php'>
                    <input type='hidden' name='id_persona' value='".$fila['id_persona']."'>
                    <a href='javascript:document.formModif".$fila['id_persona'].".submit();' title='Modificar Persona Sistema'>
                      Modificar>>
                    </a>
                  </form>
                </td>
                <td align='center'>  
                  <form name='formElimi".$fila["id_persona"]."' method='post' action='persona_eliminar.php'>
                    <input type='hidden' name='id_persona' value='".$fila["id_persona"]."'>
                    <a href='javascript:document.formElimi".$fila['id_persona'].".submit();' title='Eliminar Persona Sistema' onclick='javascript:return(confirm(\"Desea realmente Eliminar a la persona ".$fila["nombres"]." ".$fila["ap"]." ".$fila["am"]." ?\"))'; location.href='persona_eliminar.php''> 
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
echo"</div>";
echo "</body>
</html> ";

 ?>