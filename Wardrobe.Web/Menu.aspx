<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Wardrobe.Web.Menu" %>
<!DOCTYPE html>
<html lang="">
    <head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
     <meta name="description" content="" />
     <meta name="keywords" content="" />
     <title>:: Wardrobe ::</title>
     <link href="css/menu_vertical/style.css" rel="stylesheet" type="text/css" />
     <link rel="stylesheet" href="css/menu_usuario/prettyPhoto.css" type="text/css" media="screen" />
     <link rel="stylesheet" type="text/css" href="css/menu_usuario/jquery.jscrollpane_horizontal.css" media="all" />
     <link rel="stylesheet" type="text/css" href="css/menu_usuario/index_grid_horizontal_scroll.css" />
     <link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow:400,700' rel='stylesheet' type='text/css'>
     <link rel="stylesheet" href="css/main.css" type="text/css" media="screen"  charset="utf-8"/>
     <link href="css/style.css" rel="stylesheet" type="text/css" />
     <link href='http://fonts.googleapis.com/css?family=Carrois+Gothic|Oswald' rel='stylesheet' type='text/css' />
     <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
     <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
     <script type="text/javascript" src="js/menu_usuario/jquery.prettyPhoto.js" charset="utf-8"></script>
     <script type="text/javascript" src="js/jquery.mousewheel.min.js"></script>
     <script type="text/javascript" src="js/menu_usuario/jquery.jscrollpane.min.js"></script>
     <script type="text/javascript" src="js/menu_usuario/jquery.thumbGallery.js"></script>

     <!-- CSS3 Data Grids Stylesheets -->
	<link rel="stylesheet" type="text/css" href="css/menu_vertical/data_grids_main.css"/>
	<link rel="stylesheet" type="text/css" href="css/menu_vertical/data_grids_style_01.css"/> <!-- style_01 - style_04 -->
	<link rel="stylesheet" type="text/css" href="css/menu_vertical/data_grids_tooltip.css"/>
	<!-- / -->
		
	<!-- IE7-IE8 Fallback -->
	<!--[if (gte IE 6)&(lte IE 8)]>
	<script type="text/javascript" src="js/menu_vertical/selectivizr.js"></script>
	<noscript><link rel="stylesheet" href="css/menu_vertical/data_grids_main.css"/></noscript>
	<![endif]-->

     <link rel="stylesheet" type="text/css" href="css/fancybox/jquery.fancybox.css?v=2.1.4" media="screen" />
      <script type="text/javascript" src="js/fancybox/jquery.fancybox.js?v=2.1.4"></script>

      <script type="text/javascript">
          function thumbGallerySetupDone() {
              //function called when component is ready to receive public function calls
              //console.log('thumbGallerySetupDone');
          }

          function detailActivated() {
              //function called when prettyphoto is opened
              //console.log('detailActivated');
          }

          function detailClosed() {
              //function called when prettyphoto is closed
              //console.log('detailClosed');
          }

          function overThumb(i, j) {
              //function called when mouse over thumb holder (plus returned item number: i = first level, j = second level)
              //console.log('overThumb: ', i,' , ', j);
          }

          function outThumb(i, j) {
              //function called when mouse out thumb holder (plus returned item number: i = first level, j = second level)
              //console.log('outThumb: ', i,' , ', j);
          }

          $('.fancybox').fancybox(
                    {
                        closeClick: false, // prevents closing when clicking INSIDE fancybox 
                        helpers: {
                            overlay: { closeClick: false} // prevents closing when clicking OUTSIDE fancybox 
                        }
                    });

          var divVisible = 'inicioContenido';
          function verMensajes(divMostrar) {
              document.getElementById(divVisible).style.display = "none";
              document.getElementById(divMostrar).style.display = "block";
              divVisible = divMostrar;
              if (divMostrar == "subirImagenContenido") {
                  jQuery.noConflict();
                  jQuery('#componentWrapper').thumbGallery({
                      layoutType: 'line',
                      thumbOrientation: 'horizontal',
                      moveType: 'buttons',
                      scrollOffset: 25,
                      maxWidth: 900,
                      maxHeight: 0,
                      verticalSpacing: 10,
                      horizontalSpacing: 10,
                      buttonSpacing: 10,
                      thumbsScrollValue: 150,
                      innerSlideshowDelay: [2, 4],
                      innerSlideshowOn: false,
                      containerWidthAddOn: 0,
                      containerHeightAddOn: 0
                  });

                  jQuery("a[data-rel^='prettyPhoto']").prettyPhoto({ theme: 'pp_default',
                      deeplinking: false,
                      callback: function () { detailClosed(); }
                  });

              }
              else if (divMostrar == "mensajeContenido") {
              cargarTablaMensajes();
              }
          }
      </script>
       <style type="text/css">
		        .fancybox-custom .fancybox-skin 
		        {
			        box-shadow: 0 0 50px #222;
		        }
		        div.inline  
		        {
		               float:left;
		        }
                .clearBoth 
                { 
                    clear:both; 
                }
     </style>
     
        <style>
				#tablePagination { 
	            background-color: #DCDCDC; 
	            font-size: 0.8em; 
	            padding: 0px 5px; 
	            height: 20px
	          }
	          
	          #tablePagination_paginater { 
	            margin-left: auto; 
	            margin-right: auto;
	          }
	          
	          #tablePagination img { 
	            padding: 0px 2px; 
	          }
	          
	          #tablePagination_perPage { 
	            float: left; 
	          }
	          
	          #tablePagination_paginater { 
	            float: right; 
	          }
	          </style>
    <script type="text/javascript" src="js/jquery.tablePagination.0.5.min.js"></script>
    <script type="text/javascript" src="js/Sitio/Menu/jsAccion.js"></script>
    </head>

<body onload="obtenerCantidadMensajes()">
    <!-- #ScriptManager -->
    <form id="form1" runat="server">
        <asp:ScriptManager ID="scriptManager1" runat="server" AjaxFrameworkMode="Enabled" >
            <Services>
                <asp:ServiceReference InlineScript="false" Path="~/Servicios/svcNegocio.svc" />
            </Services>
        </asp:ScriptManager>
      <div id="wrapperInit">
	    <div id="container2">
                <!-- #INICIO header -->
                 <div id="header">
                        <div id="logo">
                            <img src="images/logo.png" />
                        </div><!-- #fin logo -->
                        <div id="contenedor-registro">
                            <div id="login" inline="true">
                                  <font color="white">Bienvenido <asp:Label ID="lblNombreUsuario" runat="server" /></font><br />
                                  <asp:LinkButton ID="lnkSalir" runat="server" onclick="lnkSalir_Click">Salir</asp:LinkButton>
                            </div><!-- #fin login -->
                        </div><!-- #fin contenedor registro -->
                </div>
                <div class="megamenu_container megamenu_dark_bar megamenu_light" style="background-color:Gray">
                </div> 
                 <div class="sidebar">
	                    <ul>
		                    <li><a href="#" onclick="verMensajes('inicioContenido');">Inicio</a></li>
		                    <li>
			                    <a href="#" onclick="verMensajes('mensajeContenido');">Mensajes <span class="pip" id="pipMensaje"></span></a>			
		                    </li>
		                    <li>
			                    <a href="#" onclick="verMensajes('subirImagenContenido');">Imagenes </a>
		                    </li>
		                    <li><a href="#" onclick="verMensajes('seguidoresContenido');">Seguidores</a></li>
		                    <li><a href="#" onclick="verMensajes('cuentaContenido');">Cuenta</a></li>
	                    </ul>
                    </div>
                    <div class="content">
	                    <div id="inicioContenido">
		                     <h3 class="table_header">BIENVENIDO [USUARIO]</h3> <!-- header label -->
                              <h2 class="table_header">EN ESTA SECCION PODRAS VER UN RESUMEN DE TODOS LAS COSAS QUE PUEDAS HACER COMO:</h2> <!-- header label -->
	                    </div>
	                    <div id="mensajeContenido" style="display:none">
                               <div class="page_container" id="page_container_table">
		                       </div>
	                    </div>
	                    <div id="subirImagenContenido" style="display:none;">
                            IMAGENES
	                    </div>
	                    <div id="catalogarImagenContenido" style="display:none">
		                    contenido imagen catalogar
	                    </div>
	                    <div id="eliminarImagenContenido" style="display:none">
		                    contenido imagen eliminar 
	                    </div>
	                    <div id="seguidoresContenido" style="display:none">
		                    contenido seguidores
	                    </div>
	                    <div id="cuentaContenido" style="display:none">
		                    contenido de cuenta
	                    </div>
                    </div>
                    <script type="text/javascript" src="js/menu_vertical/custom.js"></script> 

         </div>
    </div>
    </form>
</body>
</html>