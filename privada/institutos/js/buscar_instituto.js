"use strict"
function buscar_instituto(){
    var d1, d2, d3,d4, ajax, url, param, contenedor;
    contenedor =document.getElementById('instituto1');
    d1 = document.formu.nombre.value;
    d2 = document.formu.direccion.value;
    d3 = document.formu.telefono.value;
    d4 = document.formu.pag_web.value;
    
    ajax =nuevoAjax();
    url = "ajax_buscar_instituto.php"
    param = "nombre="+d1+"&direccion="+d2+"&telefono="+d3+"&pag_web="+d4;


    ajax.open("POST", url, true);
    ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    ajax.onreadystatechange = function(){ 
    if(ajax.readyState==4 ){
       contenedor.innerHTML=ajax.responseText;
    }

    }
    ajax.send(param);
}