<?php
session_start();
require_once("../../conexion.php");

$db->debug=true;
$id_producto = $_REQUEST["id_producto"];

$sql = $db->Prepare("SELECT pe.nombre_producto,pe.imagen, m.marca
                     FROM marcas m
                     INNER JOIN productos_examen pe ON m.id_marca = pe.id_marca
                     WHERE pe.id_producto=?                                           
                        ");
$rs = $db->GetAll($sql, array($id_producto));

$sql1 = $db->Prepare("SELECT *
                     FROM cafeteria
                     WHERE id_cafeteria=1
                     AND _estado <> 'X'                     
                        ");
            $rs1 = $db->GetAll($sql1);
            $nombre =$rs1[0]["nombre"];
            $logo =$rs1[0]["logo"];
            echo"<html>
        <head>
           <script type='text/javascript'>
            var ventanaCalendario=false
            function imprimir(){
                if(confirm(' Desea imprimir ?')){
                    window.print();
                }
            } 
           </script>
           </head>
           <body style='cursor:pointer;cursor:hand' onClick='imprimir();'>";
           if ($rs){
            echo"<table width='100%' border='0'>
                <td><img src='../cafeteria/logos/{$logo}' width='70%'></td>
                <td align='center'  width='80%'><h1>REPORTES DE MARCAS Y PRODUCTOS</h1></td>
            </table>";

            echo"
            <center>
                <table border='1' cellspacing='0'>";                
                $b=1;
                foreach($rs as $k => $fila){
                    echo"
                    <tr>
                        <th align='riht'>nombre_producto</th><th>:</th>
                        <td><input type='text' name='nombre_producto' value='".$fila['nombre_producto']."' disabled=''></td>
                    </tr>
                    <tr>
                        <th align='riht'>imagen</th><th>:</th>
                        <td><input type='text' name='imagen' value='".$fila['imagen']."' disabled=''></td>
                    </tr>
                    <tr>
                        <th align='riht'>marca</th><th>:</th>
                        <td><input type='text' name='marca' value='".$fila['marca']."' disabled=''></td>
                    </tr>
                    </table>";
                    $b=$b+1;
                }
                
            }
        echo "</body>
            </html>";
?>