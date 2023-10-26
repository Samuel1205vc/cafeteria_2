<?php
session_start();
require_once("../../conexion.php");

$db->debug=true;

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
         <script type='text/javascript' src='../../ajax.js'></script>
         <script type='text/javascript'>



          function buscar_instituto() {

            var d1, contenedor, url;

            contenedor = document.getElementById('institutos');
            contenedor2 = document.getElementById('instituto_seleccionada');
            contenedor3 = document.getElementById('instituto_insertada');

            d1 = document.formu.nombre.value;
            d2 = document.formu.direccion.value;
            d3 = document.formu.telefono.value;
            d3 = document.formu.pag_web.value;

           ajax = nuevoAjax();

            url = 'ajax_buscar_instituto.php'

            param = 'nombre='+d1+'&direccion='+d2+'&telefono='+d3+'&pag_web='+d3;

            ajax.open('POST', url, true);

            ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
            ajax.onreadystatechange = function() {
              if (ajax.readyState == 4) {  
                contenedor.innerHTML = ajax.responseText;
                contenedor2.innerHTML = '';
                contenedor3.innerHTML = '';
              }
            }
            ajax.send(param);

          }



          
    function buscar_instituto(id_instituto){
      var d1, contenedor, url;
      contenedor =document.getElementById('instituto_seleccionada');
      contenedor2 =document.getElementById('institutos');
    
      document.formu.id_instituto.value = id_instituto;

      d1 = id_instituto;
     
      ajax =nuevoAjax();
      url = 'ajax_buscar_instituto1.php';
      param = 'id_instituto='+d1;
   
      ajax.open('POST', url, true);
      ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
      ajax.onreadystatechange = function(){ 
      if(ajax.readyState==4 ){
         contenedor.innerHTML = ajax.responseText;
         contenedor2.innerHTML = '';
         
      }
  
      }
      ajax.send(param);
  }


          function insertar_instituto() {
            var d1, contenedor, url;
              contenedor = document.getElementById('instituto_seleccionada');
              contenedor2 = document.getElementById('institutos');
              contenedor3 = document.getElementById('instituto_insertada');

              d1 = document.formu.nombre1.value;
              d2 = document.formu.direccion1.value;
              d3 = document.formu.telefono1.value;
              d4 = document.formu.pag_web1.value;
              d5 = document.formu.resol_min1.value;
              d6 = document.formu.vision1.value;
              d7 = document.formu.mision1.value;
              
            if (d1=='') {
                alert('Por favor introduzca el nombre');
                document.formu.nombre1.focus();
                return;
              }
            if (d2=='') {
                alert('Por favor introduzca la direccion');
                document.formu.direccion1.focus();
                return;
              }
              if (d4 == '') {
                alert('El telefono es incorrecto o el campo esta vacio');
                document.formu.telefono1.focus();
                return;
              }
             
              
              if (d3 == '') {
                alert('La pag_web es incorrecta o el campo esta vacio');
                document.formu.pag_web1.focus();
                return;
              }
              if (d5 == '') {
                alert('La resol_min es incorrecta o el campo esta vacio');
                document.formu.resol_min1.focus();
                return;
              }
              if (d6 == '') {
                alert('La vision es incorrecta o el campo esta vacio');
                document.formu.vision1.focus();
                return;
              }
              if (d7 == '') {
                alert('La mision es incorrecta o el campo esta vacio');
                document.formu.mision1.focus();
                return;
              }




          ajax = nuevoAjax();
          url = 'ajax_inserta_instituto.php';
          param = 'nombre1='+d1+'&direccion1='+d2+'&telefono1='+d3+'&pag_web1='+d4+'&resol_min1='+d5+'&vision1='+d6+'&mision1='+d7;
          ajax.open('POST', url, true);
          ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
        
          ajax.onreadystatechange = function() {
            if (ajax.readyState == 4) {
              contenedor.innerHTML = '';
              contenedor2.innerHTML = '';
              contenedor3.innerHTML = ajax.responseText;
            }
          }

          ajax.send(param);
        }

          </script>
       </head>";
       echo"<body>
       <a  href='../../listado_tablas.php'>Listado de tablas</a>
       <a  href='carreras.php'>Listado de Carreras</a>
       <a onclick='location.href=\"../../validar.php\"'><input type='button'name='accion' value='Cerrar Sesion' style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' class='boton_cerrar'></a>
        <h1>INSERTAR CARRERA</h1>";


        $sql = $db->Prepare("SELECT CONCAT_WS(' ' ,nombre, direccion, pag_web, telefono) as instituto, id_instituto
                            FROM institutos
                                             
                           ");
$rs = $db->GetAll($sql);
 /*  if ($rs) {*/
        echo"<form action='carrera_nuevo1.php' method='post' name='formu'>";
        echo"<center>
                <table class='listado'>
                  <tr>
                    <th>(*)Selecciona a los institutos</th>
                    <td>
                      <table>
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
                        
                        </tr>
                        </table>
                        </td>
                        </tr>";
   echo"<tr>
        <td colspan='6' align='center'>
          <table width='100%'>
          <tr>
            <td colspan='3' align='center'>
            <div id='institutos'></div></td>
          </tr>
          </table>
        </td>
      </tr>

     <tr>
         <td colspan='6' align='center'>
          <table width='100%'>
          <tr>
            <td colspan='3' >
            <div id='instituto_seleccionada'></div>
          </td>
          </tr>
          </table>
        </td>
      </tr>

      <tr>
          <td colspan='6' align='center'>
            <table width='100%'>
             <tr>
                <td colspan='3' >
                <input type='hidden' name='id_instituto'>
                <div id='instituto_insertada'></div>
              </td>
             </tr>
            </table>
          </td>
      </tr>";
             echo" <tr>
                    <th><b>Carrera</b></th>
                    <td><input type='text' name='carrera' size='20' onkeyup='this.value=this.value.toUpperCase()'></td>
                  </tr>
                  <tr>
                    <th><b>Direccion</b></th>
                    <td><input type='text' name='direccion' size='20' onkeyup='this.value=this.value.toUpperCase()'></td>
                  </tr>
                  <tr>
                    <th><b>Telefono</b></th>
                    <td><input type='text' name='telefono' size='20' onkeyup='this.value=this.value.toUpperCase()'>
                    </td>                    
                  </tr>
                  <tr>
                    <th><b>Grado_academico</b></th><td><input type='text' name='grado_academico' size='20' onkeyup='this.value=this.value.toUpperCase()'>
                    </td>
                  </tr>
                  <tr>
                    <th><b>Descripcion</b></th>
                    <td><input type='text' name='descripcion' size='20' onkeyup='this.value=this.value.toUpperCase()'>
                    </td>
                  </tr>
                  <tr>
                    <th><b>Duracion</b></th>
                    <td><input type='text' name='duracion' size='20' onkeyup='this.value=this.value.toUpperCase()'>
                    </td>
                  </tr>
                  
                  
                  <tr>
                    <td align='center' colspan='2'>  
                      <input type='submit' value='ADICIONAR CARRERA'><br>
                      (*)Datos Obligatorios
                    </td>
                  </tr>
                </table>
                </center>";
          echo"</form>" ;     
    /*}*/
echo "</body>
      </html> ";
 ?>