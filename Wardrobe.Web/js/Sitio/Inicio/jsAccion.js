$(document).ready(function () 
{
    var tienda = new Servicios.svcNegocio();
    tienda.obtenerTiendas(completado, fallo);
});

function completado(msg) {
    var texto="";
    for (var i = 0; i < msg.length; i++) {
            var tienda = msg[i];
            texto +='<li>';
            texto += '<img class="thumb" src=' + tienda.URL_LOGO + ' data-bw=' + tienda.URL_LOGO + '>';				    					
            texto +='<div style="margin-top:16px"></div>';
            texto += '<h2>' + tienda.NOMBRE + '</h2> <br /> <br /><br /> <br /><br /> <br /><br /> <br /><br />';
			texto +='<a class="buttonlight morebutton" href="#">Ver Mas</a>';
            texto +='<!--   Seccion ver mas -->';
	        texto +='<div class="page-more">';
	        texto += '<img class="big-image" width="498" height="280" src=' + tienda.URL_PORTADA + '>';
		    texto +='<div class="details_double">';
		    texto += '<h2>' + tienda.NOMBRE + '</h2>';
		    texto += '<br />';
			texto += '' + tienda.RESENA + ''
			texto += '<br /><br />';
			texto += '<a class="buttonlight" href="TiendaHome.aspx?ID_TIENDA='+tienda.ID_TIENDA +'">Ver Tienda</a>';
			texto +='</div>';
			texto +='<div  class="closer"></div>';
			texto += '</div>';
			texto += '</li>';
}   
$('#ul').append(texto);
$(document).ready(function () {
    $('#services-example-1').services(
						    {
						        width: 920,
						        height: 290,
						        slideAmount: 5,
						        slideSpacing: 30,
						        carousel: "off",
						        touchenabled: "off",
						        mouseWheel: "off",
						        hoverAlpha: "off", 		// Turns Alpha Fade on/off by Hovering
						        slideshow: 0, 			// 0 = No SlideShow, 1000 = 1 sec Slideshow (rotating automatically)
						        hovereffect: "off", 		// All Hovereffect on/off
						        callBack: function () {
                                    var leftRigth= document.getElementById("leftRight");
						            if (msg.length == 1) {
						                leftRigth.style.display = "none";
						            }
						            else {
						                leftRigth.style.display = "block";
                                    }

						        } 	//Callback any Function after loaded

						    });
						});

$('head').append('<link rel="stylesheet" href="css/slider/style.css" type="text/css" />');
$('head').append('<link rel="stylesheet" href="css/slider/settings.css" type="text/css" />');
document.getElementById("example-wrapper").style.display = "block";

}


function traerNoticia() 
{
    var objetoNoticias = new Servicios.svcNegocio();
    objetoTienda.obtenerNoticias(1, cargarNoticias, fallaNoticias);
}

function cargarNoticias(msg) {
    alert(msg);
}

function fallaNoticias(msg) {
    alert(msg);
}

function irTienda() {
    window.location.href("TiendaHome.aspx");
}

function ingresarCodigo() {
    var codigo = document.getElementById('idCodigo').value;
    var tienda = new Servicios.svcNegocio();
    tienda.validarCodigo(codigo,ingresoCodigoSuccess, fallo);
}

function ingresoCodigoSuccess(msg)
{
    if (msg == true) {
        document.getElementById("paso1").style.display = "none";
        document.getElementById("paso2").style.display = "block";
    }
    else {
        document.getElementById("noValido").style.display = "block";
    }

}
function fallo(msg) {
    alert(msg);
}


function registrar(msg) {
    var id_usuario = document.getElementById('id_usuario').value;
    var id_password = document.getElementById('id_password').value;
    var email = document.getElementById('email').value;
    var codigo = document.getElementById('idCodigo').value;

    var tienda = new Servicios.svcNegocio();
    tienda.registrar(id_usuario, id_password, email, codigo, registroSuccess, fallo);
}

function registroSuccess(msg) {
//    var id_usuario = document.getElementById('id_usuario').value;
//    var id_password = document.getElementById('id_password').value;
//    var email = document.getElementById('email').value;
    //    var codigo = document.getElementById('idCodigo').value;
    if (msg == true) {
        document.getElementById("paso2").style.display = "none";
        document.getElementById("paso3").style.display = "block";
    }
    else {
        document.getElementById("noValido").style.display = "block";
    }

    
}

