<?php
session_start();
require_once("../../conexion.php");

//$db->debug=true;

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css 'type='text/css'>
         <script type='text/javascript'>
         function validar() {
          alert('llega');
           sindicato_payasos = document.formu.sindicato_payasos.value;
            if (document.formu.sindicato_payasos.value == '') {
                alert('Selecione el sindicato_payasos');
                document.formu.sindicato_payasos.focus();
                return;
            }
            ventanaCalendario = window.open('animaciones_sindicatos1.php?sindicato_payasos=' + sindicato_payasos, 'calendario', 'width=600, height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO')
          }
         </script>
       </head>
       <body>
       <a  href='../../listado_tablas.php'>Listado de tablas</a>
       <a onclick='location.href=\"../../validar.php\"'><input type='button'name='accion' value='Cerrar Sesion' style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' class='boton_cerrar'></a>
        <h1>REPORTES DE animaciones CON sindicatos</h1>
        <form method='post' name='formu'>";
        echo"<center>
        <table border='1'>
      <tr>
        <th><h3>*Seleccione sindicato de payasos </th><th>:</th>
         <td>
                <select name='sindicato'>
                    <option value=''>Seleccione</option>
                    <option value='T'>Todos</option>
                    
                </select>
        </td>    
      </tr>
      <tr>
        <td align='center' colspan='6'>
        <input type='hidden' name='accion' value=''>
        <input type='button' value='Aceptar' onclick='validar();' class='boton2'>
        </td>
        </tr>
        </table>
        </form>
        </center>";
echo "</body>
      </html> ";

 ?>