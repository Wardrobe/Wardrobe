

function agregarMensaje() {
    var de = document.getElementById('msgDe').value;
    var asunto = document.getElementById('msgAsunto').value;
    var mensaje = document.getElementById('msgMensaje').value;
    var tienda = new Servicios.svcNegocio();
    tienda.enviarMensaje(de,asunto,mensaje,mensajeEnviado, mensajeFallo);
}

function mensajeEnviado(data){
    if (data == true) {
        alert("mensaje ingresado");
        document.getElementById('msgDe').value = "";
        document.getElementById('msgAsunto').value = "";
        document.getElementById('msgMensaje').value = "";
        $.fancybox.close();
     
    }
    else {
        alert("mensaje no ingresado");
    }
}

function mensajeFallo(data) {
    alert(data);
}