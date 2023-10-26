<?php
session_start();
require_once("../../conexion.php");

$db->debug=true;

$sindicato = $_REQUEST["sindicato"];
$fecha = DATE("Y-m-d H:i:s");


if ($sindicato=="T"){
    $sql = $db->Prepare("SELECT *, CONCAT_WS(' ',spt.nombre, spt.direcion) as sindicato_payasos
                     FROM sindicato_paya_tarija spt
                     INNER JOIN animaciones a ON spt.id_sindicato = a.id_sindicato                                                                       
                     ");

    $rs = $db->GetAll($sql);
}else{
    $sql = $db->Prepare("SELECT *, CONCAT_WS(' ',spt.nombre, spt.direcion) as sindicato_payasos
                        FROM sindicato_paya_tarija spt
                        INNER JOIN animaciones a ON spt.id_sindicato = a.id_sindicato
                        WHERE a.id_animacion=?
                        ");                 
    $rs = $db->GetAll($sql, array($sindicato));
}



$sql1 = $db->Prepare("SELECT nombre, logo
			FROM cafeteria
			WHERE id_cafeteria=1	
		    AND _estado <> 'X'				
				");
$rs1 = $db->GetAll($sql1);

$nombre = $rs1[0]["nombre"];
$logo = $rs1[0]["logo"];

echo "<html> 
        <head>
            <script type='text/javascript'>
                var ventanaCalendario=false
                function imprimir() {
                    if (confirm(' Desea Imprimir ?')){
                    window.print();
                    }
                }
            </script>
        </head>
        <body style='cursor:pointer;cursor:hand' onClick='imprimir();'>";

if ($rs) {
    echo "<table width='100%'' border='0'>
                <tr>
                    <td ><img src='../cafeteria/logos/{$logo}' width='70%' > </td>
                    <td align='center' width='80%'> <h1>REPORTE DE SINDICATOS CON ANIMACIONES</h1></td>
                </tr>
            </table>";
    echo "<center>             
                <table border='1' cellspacing='0'>
                    <tr>
                        <th>NOMBRE</th><th>REPRESENTANTE</th><th>DIRECCION</th><th>TELEFONO</th>
                    </tr>";
    $b = 1;
    foreach ($rs as $k => $fila) {
        echo "<tr>
                
                <td align='center'>" . $fila['nombre'] . "</td>
                <td align='center'>" . $fila['representante'] . "</td>
                <td align='center'>" . $fila['direccion'] . "</td>
                <td align='center'>" . $fila['telefono'] . "</td>
                
        </tr>";
        $b++;
    }
    echo"</table></br>";
    echo"<table><br>
                    <b>Fecha :</b>".$fecha."</b></center>";

      
    echo"        
            </center>";
}
echo "</body>
    </html>";
?>
