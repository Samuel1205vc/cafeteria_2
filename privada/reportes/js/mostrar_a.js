"use strict"
function mostrar(id_animacion){
    var d1, ventanaCalendario;
    d1 = id_animacion;
    ventanaCalendario = window.open("ficha_tecnica_animaciones1.php?id_animacion=" + d1 , "calendario", "width=600, height=550, left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO")
}