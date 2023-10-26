<?php
ob_start();
session_start();
require_once("../../conexion.php");

//$db->debug=true;

echo"<html>
        <head>
        </head>
            <body>";

            $sql = $db->Prepare("SELECT CONCAT_WS(' ',p.nombres,p.ap,p.am) as persona, u.nom_usuario
                                 FROM personas p
                                 INNER JOIN usuarios u ON p.id_persona = u.id_persona
                                 WHERE p._estado <> 'X'
                                 AND u._estado <> 'X'                        
                                 ");
            $rs = $db->GetAll($sql); 
                              
            $sql1 = $db->Prepare("SELECT *
                                  FROM cafeteria
                                  WHERE id_cafeteria = 1
                                  AND _estado <> 'X'
                                  ");
            $rs1 = $db->GetAll($sql1);
            $nombre = $rs1[0]["nombre"];
            $logo = $rs1[0]["logo"];
            $fecha = date("Y-m-d H:i:s");

            if($rs1){
                echo"<table width='100%'' border='0'>
                        <tr>   
                        <td ><img src='http://".$_SERVER['HTTP_HOST']."/SIS_CAFETERIA_2/privada/cafeteria/logos/{$logo}' width='100%' ></td>
                        <td align='center' width='80%'><h1>REPORTES DE PERSONAS-USUARIOS</h1></td> 
                        </tr>
                        </table>";
                echo"
                <center>
                    <table border='1' cellspacing='0' width='100%'>
                    <tr>
                    <th>Nro</th><th>PERSONAS</th><th>NOMBRE DE USUARIO</th>
                    </tr>";
                    $b=1;
                    foreach ($rs as $k => $fila) {                                       
                        echo"<tr>
                                <td align='center'>".$b."</td>
            
                                <td>".$fila['persona']."</td>
                                <td>".$fila['nom_usuario']."</td>
                             </tr>";
                             $b=$b+1;
                    }
                echo"</table><br>
                <b>fecha :</b>".$fecha."</center>";   
        }
        echo "</body>
        </html> ";

    $html=ob_get_clean();
    //echo $html;

    require_once("../dompdf/autoload.inc.php");
    use Dompdf\Dompdf;
    $dompdf =new Dompdf();

    $options = $dompdf->getOptions();
    $options->set(array('isRemoteEnable' => true));
    $dompdf->setOptions($options);

    $dompdf->loadHtml($html);

    $dompdf->setPaper('letter');
    //$dompdf->setPaper('A4', 'landscape');

    $dompdf->render();

    $dompdf->stream("archivo.pdf", array("Attachment" => false));

?>