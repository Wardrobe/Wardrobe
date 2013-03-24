function obtenerCantidadMensajes() {
    //TODO setear y obtener el id de la tienda a consultar
    var idTienda = 1;
    var tienda = new Servicios.svcNegocio();
    tienda.obtenerCantidadMensaje(idTienda,obtenerMensajeExito, fallo);
}

function obtenerMensajeExito(data) {
    document.getElementById('pipMensaje').innerHTML = "";
    document.getElementById('pipMensaje').innerHTML = data;
}

function cargarTablaMensajes() {
    //TODO setear y obtener el id de la tienda a consultar
    //TODO 2 CARGAR MENSAJES DE LA BDD A LA PAGINA
    var idTienda = 1;
    var tienda = new Servicios.svcNegocio();
    obtenerCantidadMensajes();
    tienda.cargarTablaMensaje(idTienda, cargarMensajeExito, fallo);
}

function cargarMensajeExito(data) {
    var div = document.getElementById('page_container_table');
    div.innerHTML = "";
    var texto="";
    texto+='<h1>Mensajes</h1>';
    texto += '<table class="qlabs_grid_container" id="tablaExample">';
    texto+='<thead>';
    texto += '<tr class="subheader_row">';
    texto += '<td class="subheader_cell">De</td>';
    texto += '<td class="subheader_cell">Asunto<div class="qlabs_tooltip">i<span><strong>Asunto</strong>Asunto del mensaje</span></div></td';
    texto += '<td class="subheader_cell"></td>';
    texto += '</tr>';
	texto+='</thead>';
	texto+='<tbody class="data_container">';
	for (var i = 0; i < data.length; i++) {
	    texto += '<tr class="data_odd">';
	    texto += '<td class="data_cell">' + data[i].nombreEmisor + '</td>';
	    texto += '<td class="data_cell">' + data[i].asunto + '</td>';
	    texto += '<td class="data_cell"><label for="row_' + (i + 1) + '">Ver Mensaje</label><div style="margin-left: 5px;" class="grid_button" onclick="levantarRespuestaMensaje(' + data[i].idMensaje + ',' + "'" + data[i].nombreEmisor + "'" + ',' + "'" + data[i].asunto + "'" + ')">Responder</div><div style="margin-left: 5px;" class="grid_button" onclick="eliminarMensaje(' + data[i].idMensaje + ')">Eliminar</div></td>';
	    texto += '</tr>';
	    texto += '<tr class="expanded">';
	    texto += '<td colspan="7">';
	    texto += '<input id="row_'+(i+1)+'" name="#" type="checkbox" />';
	    texto += '<div class="expanded">';
	    texto += '<div class="column_100">';
	    texto += '<h3 class="expanded_header">Mensaje</h3>';
	    texto += '<p>' + data[i].mensaje + '</p>';
	    texto += '</div>';
	    texto += '</div>';
	    texto += '</td';
	    texto += '</tr>';
	}
    texto+='</tbody>';
    texto += '</table>';
    document.getElementById('page_container_table').innerHTML = texto;
    var options = {
        currPage: 1,
        optionsForRows: [ 5],
        rowsPerPage: 5,
        topNav: false
    };
    $('#tablaExample').tablePagination(options);
}

function levantarRespuestaMensaje(id, de, asunto) {
    var texto = "";
    texto += '<div id="inline2" style="width:300px;height:350px;">';
    texto+='<br /><br />';
    texto+='<table align="center">';
    texto+='<tr><td>Para:</td><td>'+de+'</td></tr>';
    texto+='<tr><td>Asunto:</td><td>'+asunto+'</td></tr>';
    texto+='<tr><td>Mensaje:</td><td><input type="text" id="txtMensaje" /></td></tr>';
    texto+='<tr><td></td><td><input type="button" onclick="enviarRespuesta('+"'"+asunto+"'"+','+ id +')" value="Enviar" /></td></tr>';
    texto+='</table>';
    texto += '<input id="id_emisor" type="hidden" value ="1"  />';
    texto += '</div>';
//    document.getElementById('inline2').innerHTML = texto; 
//    //    document.getElementById('ventanaRespoMensaje').click();
    //    document.getElementById('inline2').fancybox();
    $.fancybox(texto);
}

function enviarRespuesta(asunto,id) 
{
    var receptor = document.getElementById('id_emisor').value;
    var emisor = 1;
    var asunto = asunto;
    var respuesta = document.getElementById('txtMensaje').value;
    var mensaje = new Servicios.svcNegocio();
    mensaje.enviarRespuesta(receptor, emisor, asunto, respuesta,id, envioRespuestaExito, fallo);
}

function envioRespuestaExito(data) {
    if (data == "ok") {
        alert("mensaje enviado");
        cargarTablaMensajes();
        $.fancybox.close();
    }
    else 
    {
        alert("No se pudo enviar la respuesta");
    }
}

function eliminarMensaje(id) {
    if (confirm("Esta seguro de eliminar este mensaje?")) {
        var mensaje = new Servicios.svcNegocio();
        mensaje.eliminarMensaje(id, eliminacionMensajeExito, fallo);       
    }
}

function eliminacionMensajeExito(data) {
    if (data == "ok") {
        alert("mensaje eliminado");
        cargarTablaMensajes();
    }
    else {
        alert("No se pudo enviar la respuesta");
    }
}
function fallo(data) 
{
    alert(data);
}
                                