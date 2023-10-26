"use strict"
function buscar_animacion(){
    var d1, d2, d3,  d11, ajax,url,param, contenedor;
    contenedor=document.getElementById('animacion1');
    d1=document.formu.nombre.value;
    d2=document.formu.representante.value;
    d3=document.formu.telefono.value;
    
    ajax=nuevoAjax();
    url="ajax_buscar_animacion.php"
    param="nombre="+d1+"&representante="+d2+"&telefono="+d3;
    //alert(param);
    ajax.open("POST",url,true);
    ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    ajax.onreadystatechange=function(){
        if(ajax.readyState==4){
            contenedor.innerHTML=ajax.responseText;
        }
    }
    ajax.send(param);
}