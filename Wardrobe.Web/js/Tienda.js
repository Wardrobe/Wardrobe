$(document).ready(function () {
    traerTienda();
});

function traerTienda() {
    var objetoTienda = new Servicios.svcNegocio();
    objetoTienda.obtenerTienda(1, onMethodCompleted, onFailed);
}

function onMethodCompleted(msg) {
    var texto = "";
    for (var i = 0; i < 10; i++) {
        var tienda = msg;
        texto += '<li>';
        texto += '<img class="thumb" src=' + 'Tiendas/Lupe_Gajardo/Ropas/thumb/1.png' + ' data-bw=' + tienda.URL_LOGO + '>';
        texto += '<a class="fancybox" href="#inline1" title="Prueba de ropa">FOTO</a>';
        texto += '</li>';

    }


    $('#ul').append(texto);
    $(document).ready(function () {
        $('#services-example-1').services(
						    {
						        width: 920,
						        height: 350,
						        slideAmount: 5,
						        slideSpacing: 30,
						        carousel: "off",
						        touchenabled: "on",
						        mouseWheel: "off",
						        hoverAlpha: "off", 		// Turns Alpha Fade on/off by Hovering
						        slideshow: 0, 			// 0 = No SlideShow, 1000 = 1 sec Slideshow (rotating automatically)
						        hovereffect: "off", 		// All Hovereffect on/off
						        callBack: function () {
						            var leftRigth = document.getElementById("leftRight");
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
function onFailed(msg) {
    alert(msg);
}
