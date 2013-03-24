<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TiendaHome.aspx.cs" Inherits="Wardrobe.Web.TiendaHome" %>
<!DOCTYPE html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
 <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
 <title>:: Wardrobe ::</title>

 <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
 <link rel="stylesheet" href="css/style.css"type="text/css" />
 <link rel="stylesheet" href="css/main.css" type="text/css" media="screen"  charset="utf-8"/>
 <link rel="stylesheet" href="css/slider-style.css" type="text/css" media="screen"  charset="utf-8"/>
 <link rel="stylesheet" href="css/menu/megamenu.css" type="text/css" />	
 <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Carrois+Gothic|Oswald'  type='text/css' />
 <link rel="stylesheet" href="css/royalslider/royalslider.css" />
 <link rel="stylesheet" href="css/royalslider/rs-universal.css" />
 <link rel="stylesheet" type="text/css" href="css/fancybox/jquery.fancybox.css?v=2.1.4" media="screen" />

 <script type="text/javascript" src="js/royalslider/jquery.royalslider.min.js"></script>

<!-- Add fancyBox main JS and CSS files -->
 <script type="text/javascript" src="js/fancybox/jquery.fancybox.js?v=2.1.4"></script>
 <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
 <script type="text/javascript" src="js/jquery.cssAnimate.mini.js"></script>
 <script type="text/javascript" src="js/menu/megamenu_plugins.js"></script><!-- Mega Menu Plugins -->
 <script type="text/javascript" src="js/menu/megamenu.js"></script><!-- Mega Menu Script -->

 <!-- TOUCH AND MOUSE WHEEL SETTINGS -->
 <script type="text/javascript" src="js/jquery.touchwipe.min.js"></script>
 <script type="text/javascript" src="js/jquery.mousewheel.min.js"></script>

 <!-- jQuery SERVICES Slider  -->
 <script type="text/javascript" src="js/jquery.themepunch.services.js"></script>
    
 <!-- ELIMINAR AL IMPLEMENTAR DINAMICO -->
 
 <link rel="stylesheet" href="css/slider/settings.css" type="text/css" />
 <link rel="stylesheet" href="css/slider/style.css" type="text/css" />   
 <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>
 <script>
        $(document).ready(function ($) {
            $('.megamenu').megaMenuCompleteSet({
                menu_speed_show: 300, // Time (in milliseconds) to show a drop down
                menu_speed_hide: 200, // Time (in milliseconds) to hide a drop down
                menu_speed_delay: 200, // Time (in milliseconds) before showing a drop down
                menu_effect: 'hover_fade', // Drop down effect, choose between 'hover_fade', 'hover_slide', etc.
                menu_click_outside: 1, // Clicks outside the drop down close it (1 = true, 0 = false)
                menu_show_onload: 0 // Drop down to show on page load (type the number of the drop down, 0 for none)
            });

            $('.fancybox').fancybox(
                    {
                        closeClick: false, // prevents closing when clicking INSIDE fancybox 
                        helpers: {
                            overlay: { closeClick: false} // prevents closing when clicking OUTSIDE fancybox 
                        }
                    });
        });
    </script>

 <script src="js/modernizr.js" type="text/javascript" charset="utf-8"></script>
 <script src="js/cute/cute.slider.js" type="text/javascript" charset="utf-8"></script>
 <script src="js/cute/cute.transitions.all.js" type="text/javascript" charset="utf-8"></script>
 <link rel="stylesheet" href="css/main.css" type="text/css" media="screen"  charset="utf-8"/>
 <link rel="stylesheet" href="css/slider-style.css" type="text/css" media="screen"  charset="utf-8"/>
    
 <script src="js/respond.min.js" type="text/javascript" charset="utf-8"></script>
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
<script type="text/javascript" src="js/Sitio/Tienda/jsAccion.js"></script>
</head>

<body>
    <!-- #ScriptManager -->
    <form id="form1" runat="server">
        <asp:ScriptManager ID="scriptManager1" runat="server" AjaxFrameworkMode="Enabled" >
            <Services>
                <asp:ServiceReference InlineScript="false" Path="~/Servicios/svcNegocio.svc" />
            </Services>
        </asp:ScriptManager>
   
        <div id="wrapperInit">
	    <div id="container">
                 <div id="header">
                        <div id="logo">
                            <img src="images/logo.png" />
                        </div><!-- #fin logo -->
                        <div id="contenedor-registro">
                            <div id="login" inline="true">
                                <font color="white">LOGIN:&nbsp; </font>
                                <asp:TextBox runat="server" ID="txtLogin"></asp:TextBox>
                                <asp:TextBox TextMode="Password" runat="server" ID="txtPassword"></asp:TextBox>
                                <div id="btn-ingresar">
                                <asp:ImageButton ID="loginAction" ImageUrl="images/btn-ingresar-registro.png" runat="server" onclick="loginAction_Click" /> </div>
                            </div><!-- #fin login -->
                            <div id="separador-header"></div><!-- separador-header -->
                            <div id="registro">
                            	<div id="no-registrado" align="center">
                                   <a class="fancybox" href="#inline2" title="Registro"><font color="white">Registrate</font></a>
                                     <div id="inline2" style=" width:600px;height:500px;display: none;">
                                        <br /><br />
		                                <h1><p align="center">Registrate con Wardrobe</p></h1>
                                        <br /><br />
                                        <table align="center">
                                         <tr>
                                              <td>Usuario:</td>
                                              <td><input id="id_usuario" type="text"/></td>
                                         </tr>
                                            <tr>
                                                <td>Password:</td>
                                                <td><input id="id_password" type="password"/></td>
                                            </tr>
                                            <tr>
                                                <td>Email:</td>
                                                <td><input id="email" type="text"/></td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td><input type="button" value="Ingresar" onclick="registrar()" /></td>
                                            </tr>
                                        </table>
                                       </div>
                                       <div id="s" style="display:none">
                                        <br /><br />
		                                <h1><p align="center">Felicidades, la cuenta ha sido creada.Ahora podra ingresar al sitio con los datos ingresados</p></h1>
                            
                                       </div>
                                </div><!-- #fin no-registrado -->
                                <div id="registrate">
                                   <font color="white">Aun no estas registrado?</font>
                                </div><!-- #fin registrate -->
                            </div><!-- #fin registro -->
                            
                            <div id="login-facebook" align="center">
                               <font color="white"> FACEBUUUUUUKKKK</font>
                            </div><!-- #fin login facebook -->
                        </div><!-- #fin contenedor registro -->
                </div>
                <!-- #FIN header -->
                <!--#INICIO menu -->
                <div class="megamenu_container megamenu_dark_bar megamenu_light">
                     <ul class="megamenu">
                        <li><a href="#" class="megamenu_drop">Videos</a><!-- Begin Item -->
                            <div class="dropdown_fullwidth"><!-- Begin Item container -->
                                <div class="col_6">
                                    <h2>Add videos aswell !</h2>
                                    <p>Sed at justo justo. Nunc pretium laoreet tincidunt. Curabitur ac ipsum vel quam vulputate tempor in eu nulla. Duis sodales tortor ut arcu dictum tincidunt.</p>
                                    <div class="video_container">
                                        <iframe src="http://player.vimeo.com/video/32001208?portrait=0&amp;badge=0"></iframe>
                                    </div>
                                    <p>Phasellus molestie facilisis orci ut bibendum. Aliquam accumsan eros sit amet metus egestas porta. Aenean at sapien leo. Aliquam dapibus sem ac arcu bibendum dignissim. Ut ac sapien ligula, et convallis diam.</p>
                                </div>
                            </div><!-- End Item Container -->
                         </li><!-- End Item -->
                     </ul>
                </div> 
                <!-- #FIN menu -->

                
			<div id="contenedor-wardrobe-disenador"> 	
 					<div id="contenedor-biografia-disenador">
 				 		<div id="logo-biografia-disenador">LOGO<br /><asp:Image ID="imgLogo" runat="server" />
                        </div><!-- #fin logo-biografia-disenador  -->
 						<div id="datos-biografia-disenador">NOMBRE<br /><asp:Label ID="lblNombre" runat="server"></asp:Label></div><!-- #fin datos-biografia-disenador  -->
 				 		<div id="resena-biografia-disenador">
                            UBICACION<br /><asp:Label ID="lblUbicacion" runat="server"></asp:Label><br /><a class="fancybox" href="#mapa" title="Direccion" onclick="initialize();">Ver Mapa</a>
                        </div>
                        <div id="mensaje-disenador">
                            <h2><a class="fancybox" href="#enviarMensaje" title="Mensaje">Enviar Mensaje a [NOMBRE DISEÑADOR]</a></h2>
                        </div>
 					</div><!-- #fin contenedor-biografia-disenador  -->
 	 				<div id="contenedor-galeria-disenador">
                    <div id="wrapper2" class="wrapper2" >
                        <div id="my-cute-slider" class="cute-slider" data-width="800" data-height="350" data-force="2d">
			                    <ul data-type="slides">
								                    <li data-delay="4" data-trans3d="tr2,tr20,tr57" data-trans2d="tr1,tr14,tr26">
									                    <img src="images/1.png" data-thumb="images/thumbs/1.png	"/>
									                    <ul data-type="captions">
										                    <li class="caption1" data-effect="fade">
											                    lorem ipsum dolor
										                    </li>
									                    </ul>
								                    </li>
								                    <li data-delay="4" data-trans3d="tr4,tr21,tr62" data-trans2d="tr5,tr23,tr30">
									                    <img src="cute-theme/blank.jpg" data-src="images/2.png" data-thumb="images/thumbs/2.png"/>
									                    <ul data-type="captions">
										                    <li class="caption2" data-effect="fade">
											                    LOREM IPSUM DOLOR
										                    </li>
									                    </ul>
								                    </li>
								                    <li data-delay="5" data-trans3d="tr17,tr46,tr64" data-trans2d="tr7,tr32,tr40">
									                    <img src="cute-theme/blank.jpg" data-src="images/3.png" data-thumb="images/thumbs/3.png"/>
									                    <ul data-type="captions">
										                    <li class="caption3" data-effect="fade">
											                    Lorem Ipsum Dolor
										                    </li>
									                    </ul>
								                    </li>
								                    <li data-delay="4" data-trans3d="tr8,tr19" data-trans2d="tr15,tr3,tr38">
									                    <img src="cute-theme/blank.jpg" data-src="images/4.png" data-thumb="images/thumbs/4.png"/>
									                    <ul data-type="captions">
										                    <li class="caption4" data-effect="fade">
											                    lorem ipsum dolor
										                    </li>
									                    </ul>	
								                    </li>
								                    <li data-delay="6" data-trans3d="tr10,tr49,tr58" data-trans2d="tr2,tr16,tr27">
									                    <img src="cute-theme/blank.jpg" data-src="images/5.png" data-thumb="images/thumbs/5.png"/>
									                    <ul data-type="captions">
										                    <li class="caption5" data-effect="fade">
											                    lorem ipsum dolor
										                    </li>
									                    </ul>
								                    </li>
								                    <li data-delay="4" data-trans3d="tr11,tr61,tr46" data-trans2d="tr12,tr24,tr35">
									                    <img src="cute-theme/blank.jpg" data-src="images/6.png" data-thumb="images/thumbs/6.png"/>
									                    <ul data-type="captions">
										                    <li class="caption6" data-effect="fade">
											                    LOREM IPSUM DOLOR
										                    </li>
									                    </ul>
								                    </li>
								                    <li data-delay="7" data-trans3d="tr25,tr48,tr23" data-trans2d="tr29,tr20,tr41">
									                    <img src="cute-theme/blank.jpg" data-src="images/7.png" data-thumb="images/thumbs/7.png"/>
									                    <ul data-type="captions">
										                    <li class="caption7" data-effect="fade">
											                    Lorem Ipsum Dolor
										                    </li>
									                    </ul>
								                    </li>
								                    <li data-delay="4" data-trans3d="tr24,tr32,tr1" data-trans2d="tr9,tr18,tr39">
									                    <img src="cute-theme/blank.jpg" data-src="images/5.png" data-thumb="images/thumbs/5.png"/>
									                    <ul data-type="captions">
										                    <li class="caption8" data-effect="fade">
											                    lorem ipsum dolor
										                    </li>
									                    </ul>
								                    </li>
								                    <li data-delay="6" data-trans3d="tr52,tr16,tr60" data-trans2d="tr28,tr5,tr38">
									                    <img src="cute-theme/blank.jpg" data-src="images/6.png" data-thumb="images/thumbs/6.png"/>
									                    <ul data-type="captions">
										                    <li class="caption9" data-effect="fade">
											                    LOREM IPSUM DOLOR
										                    </li>
									                    </ul>
								                    </li>
							                    </ul>
			                    <ul data-type="controls">			
				                    <li data-type="captions"> </li>
				                    <li data-type="link"> </li>
				                    <li data-type="video"> </li>
				                    <li data-type="slideinfo"> </li>
				                    <li data-type="circletimer"> </li>
				                    <li data-type="next"> </li>
				                    <li data-type="previous"> </li>
				                    <li data-type="slidecontrol"> </li>
				                    <li data-type="bartimer"> </li>				
			                    </ul>
		                    </div>
		                 </div>
                         <script>
                             var myslider = new Cute.Slider();
                             myslider.setup("my-cute-slider", "wrapper2");
		                 </script>
                    </div><!-- #fin contenedor-galeria-disenador  -->
 		 			<div id="btn-wardrobe-disenador">WARDROBE</div><!-- #fin btn-wardrobe-disenador  -->
            </div><!-- #fin contenedor-wardrobe-disenador  -->

            <div id="contenedor-galerias-disenador">
                           <div class="example-wrapper" >
					                <div id="services-example-1" class="theme1">
						                <ul>
						                <!--	###############		-	SLIDE 1	-	###############	 -->
							                <li>
								                <img class="thumb" onclick="javascript:window.location.href('#inline1');"  src="images/services/service1.jpg" data-bw="images/services/service1_bw.jpg">
								                <div style="margin-top:16px"></div>
								                <h2>Slide With Large Image77</h2>
								                <p>Lorem ipsum dolor sit amet, conseteetur sadipscing elitr,<br> sed diam monumy eirmod...</p>
								
								                <a class="fancybox" href="#inline1" title="Prueba de ropa">FOTO</a>
							                </li>
                                            <li>
								                <img class="thumb" src="images/services/service1.jpg" data-bw="images/services/service1_bw.jpg">
								                <div style="margin-top:16px"></div>
								                <h2>Slide With Large Image6</h2>
								                <p>Lorem ipsum dolor sit amet, conseteetur sadipscing elitr,<br> sed diam monumy eirmod...</p>
								
								                <a class="fancybox" href="#inline1" title="Prueba de ropa">FOTO</a>
							                </li>
                                            <li>
								                <img class="thumb" src="images/services/service1.jpg" data-bw="images/services/service1_bw.jpg">
								                <div style="margin-top:16px"></div>
								                <h2>Slide With Large Image6</h2>
								                <p>Lorem ipsum dolor sit amet, conseteetur sadipscing elitr,<br> sed diam monumy eirmod...</p>
								
								                <a class="fancybox" href="#inline1" title="Prueba de ropa">FOTO</a>
							                </li>
                                            <li>
								                <img class="thumb" src="images/services/service1.jpg" data-bw="images/services/service1_bw.jpg">
								                <div style="margin-top:16px"></div>
								                <h2>Slide With Large Image6</h2>
								                <p>Lorem ipsum dolor sit amet, conseteetur sadipscing elitr,<br> sed diam monumy eirmod...</p>
								
								                <a class="fancybox" href="#inline1" title="Prueba de ropa">FOTO</a>
							                </li>
                                            <li>
								                <img class="thumb" src="images/services/service1.jpg" data-bw="images/services/service1_bw.jpg">
								                <div style="margin-top:16px"></div>
								                <h2>Slide With Large Image6</h2>
								                <p>Lorem ipsum dolor sit amet, conseteetur sadipscing elitr,<br> sed diam monumy eirmod...</p>
								
								                <a class="fancybox" href="#inline1" title="Prueba de ropa">FOTO</a>
							                </li>
                                            <li>
								                <img class="thumb" src="images/services/service1.jpg" data-bw="images/services/service1_bw.jpg">
								                <div style="margin-top:16px"></div>
								                <h2>Slide With Large Image6</h2>
								                <p>Lorem ipsum dolor sit amet, conseteetur sadipscing elitr,<br> sed diam monumy eirmod...</p>
								
								                <a class="fancybox" href="#inline1" title="Prueba de ropa">FOTO</a>
							                </li>
                                             <li>
								                <img class="thumb" src="images/services/service1.jpg" data-bw="images/services/service1_bw.jpg">
								                <div style="margin-top:16px"></div>
								                <h2>Slide With Large Image6</h2>
								                <p>Lorem ipsum dolor sit amet, conseteetur sadipscing elitr,<br> sed diam monumy eirmod...</p>
								
								                <a class="fancybox" href="#inline1" title="Prueba de ropa">FOTO</a>
							                </li>
                                             <li>
								                <img class="thumb" src="images/services/service1.jpg" data-bw="images/services/service1_bw.jpg">
								                <div style="margin-top:16px"></div>
								                <h2>Slide With Large Image6</h2>
								                <p>Lorem ipsum dolor sit amet, conseteetur sadipscing elitr,<br> sed diam monumy eirmod...</p>
								
								                <a class="fancybox" href="#inline1" title="Prueba de ropa">FOTO</a>
							                </li>
                                             <li>
								                <img class="thumb" src="images/services/service1.jpg" data-bw="images/services/service1_bw.jpg">
								                <div style="margin-top:16px"></div>
								                <h2>Slide With Large Image6</h2>
								                <p>Lorem ipsum dolor sit amet, conseteetur sadipscing elitr,<br> sed diam monumy eirmod...</p>
								
								                <a class="fancybox" href="#inline1" title="Prueba de ropa">FOTO</a>
							                </li>
                                             <li>
								                <img class="thumb" src="images/services/service1.jpg" data-bw="images/services/service1_bw.jpg">
								                <div style="margin-top:16px"></div>
								                <h2>Slide With Large Image6</h2>
								                <p>Lorem ipsum dolor sit amet, conseteetur sadipscing elitr,<br> sed diam monumy eirmod...</p>
								
								                <a class="fancybox" href="#inline1" title="Prueba de ropa">FOTO</a>
							                </li>
                                            </ul>
                                            <div class="toolbar" id="leftRight">
							                    <div class="left"></div>
                                                <div class="right"></div>
				                            </div>
					                </div><!-- End Accordion -->
                           </div>
                           <style>
                           .span7 {
                                width: 670px;
                              }
                           .span5 
                           {
                                margin-left:80px;
                                width: 470px;
                              }
                           </style>
                            <div id="inline1" style="width:1100px;display: none;">
                            <span class="span7">
		                         <div id="gallery-2" class="royalSlider rsUni" style="width:700px; float:left">
                                      <a class="rsImg" href="images/royalslider/700x500/1.jpg" data-rsBigImg="images/royalslider/1.jpg">Vincent van Gogh - Still Life: Vase with Twelve Sunflowers<img class="rsTmb" src="images/royalslider/t/1.jpg" width="96" height="72"></a>
                                      <a class="rsImg" href="images/royalslider/700x500/2.jpg" data-rsBigImg="images/royalslider/2.jpg">Vincent van Gogh - The Starry Night<img class="rsTmb" src="images/royalslider/t/2.jpg" width="96" height="72"></a>
                                      <a class="rsImg" href="images/royalslider/700x500/3.jpg" data-rsBigImg="image/royalslider/3.jpg">Leonardo da Vinci - Mona Lisa
                                      <img class="rsTmb" src="images/royalslider/t/3.jpg" width="96" height="72"></a>
                                       <a class="rsImg" href="images/royalslider/700x500/1.jpg" data-rsBigImg="images/royalslider/1.jpg">Vincent van Gogh - Still Life: Vase with Twelve Sunflowers<img class="rsTmb" src="images/royalslider/t/1.jpg" width="96" height="72"></a>
                                      <a class="rsImg" href="images/royalslider/700x500/2.jpg" data-rsBigImg="images/royalslider/2.jpg">Vincent van Gogh - The Starry Night<img class="rsTmb" src="images/royalslider/t/2.jpg" width="96" height="72"></a>
                                      <a class="rsImg" href="images/royalslider/700x500/3.jpg" data-rsBigImg="images/royalslider/3.jpg">Leonardo da Vinci - Mona Lisa
                                      <img class="rsTmb" src="images/royalslider/t/3.jpg" width="96" height="72"></a>
                                       <a class="rsImg" href="images/royalslider/700x500/1.jpg" data-rsBigImg="images/royalslider/1.jpg">Vincent van Gogh - Still Life: Vase with Twelve Sunflowers<img class="rsTmb" src="images/royalslider/t/1.jpg" width="96" height="72"></a>
                                      <a class="rsImg" href="images/royalslider/700x500/2.jpg" data-rsBigImg="images/royalslider/2.jpg">Vincent van Gogh - The Starry Night<img class="rsTmb" src="images/royalslider/t/2.jpg" width="96" height="72"></a>
                                      <a class="rsImg" href="images/royalslider/700x500/3.jpg" data-rsBigImg="images/royalslider/3.jpg">Leonardo da Vinci - Mona Lisa
                                      <img class="rsTmb" src="images/royalslider/t/3.jpg" width="96" height="72"></a>
                                 </div>
                            </span>
                            <span class="span5">
                                 <div>
                                   <p align="center">[NOMBRE PRENDA]</p>
                                   
                                 </div>
                            </span>
	                      </div>         

                          <div id="enviarMensaje" style="width:700px;display:none;">
                                <table align="center">
                                     <tr>
                                        <td>De:</td>
                                        <td><input type="text" id="msgDe" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td>Asunto:</td>
                                        <td><input type="text" id="msgAsunto" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td>Mensaje:</td>
                                        <td><input type="text" id="msgMensaje" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><input type="button" onclick="agregarMensaje()" value="Enviar" /></td>
                                    </tr>
                                </table>
                          </div>
                          <div id="mapa" style="width:500px;height:300px;display: none;">
                                    <asp:HiddenField id="direccionMapa" runat="server" />
		                         <div id="map_canvas" style="width:440px;height:260px" />
                          </div>
                          <script>
                              function initialize() 
                              {
                                  var geocoder = new google.maps.Geocoder();
                                  var latlng = new google.maps.LatLng(-34.397, 150.644);
                                  var mapOptions = {
                                      zoom: 17,
                                      center: latlng,
                                      mapTypeId: google.maps.MapTypeId.ROADMAP
                                  }
                                  var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
                                  var address = document.getElementById('direccionMapa').value;
                                  geocoder.geocode({ 'address': address }, function (results, status) {
                                      if (status == google.maps.GeocoderStatus.OK) {
                                          map.setCenter(results[0].geometry.location);
                                          var marker = new google.maps.Marker({
                                              map: map,
                                              position: results[0].geometry.location
                                          });
                                      } else {
                                          alert('Geocode was not successful for the following reason: ' + status);
                                      }
                                  });
                              }            
                         </script>
	                 </div>         
 			 </div>  
               <script>
                   jQuery(document).ready(function () {
                       $('#gallery-2').royalSlider({
                           fullscreen: {
                               enabled: false,
                               nativeFS: true
                           },
                           controlNavigation: 'thumbnails',
                           thumbs: {
                               orientation: 'vertical',
                               paddingBottom: 4,
                               appendSpan: true
                           },
                           transitionType: 'fade',
                           autoScaleSlider: true,
                           autoScaleSliderWidth: 960,
                           autoScaleSliderHeight: 600,
                           loop: true,
                           arrowsNav: true,
                           keyboardNavEnabled: true

                       });
                   });
               </script>
                 <script type="text/javascript">
                     $(document).ready(function () {
                         jQuery('#services-example-1').services({
                             width: 920,
                             height: 295,
                             slideAmount: 4,
                             slideSpacing: 30,
                             touchenabled: "on",
                             mouseWheel: "on",
                             transition: 1
                         });
                     });
                </script>
      
            <div id="footer"> 
    
     					<div id="logo-footer"> 
     							<img src="images/logo.png" />
                         </div><!-- logo-footer -->
                                     
                         <div id="separador-footer"> 
                         </div><!-- separador-footer -->
                                     
         				 <div id="redes-footer"> 
         				<div id="titulo-redesfooter"><img src="images/redes.png" /></div>
         							<a href="http://link.cl"><img src="images/fb.png" /></a>
         							<a href="https://twitter.com/WardrobeCL"><img src="images/tw.png" /></a>
         							<a href="http://link.cl"><img src="images/in.png" /></a>
         							<a href="http://link.cl"><img src="images/tb.png" /></a>
         				  
         				</div><!-- redes-footer -->
                                     
                                    <div id="separador-footer"> 
                                     </div><!-- separador-footer -->
                                     
                                      <div id="sobre-empresa-footer"> 
                                      
                                      <h3>Sobre Wardrobe
                                      <P></P>
                                      <li><a href="http://link.cl">Cómo Funciona</a></li>
									  <li><a href="http://link.cl">A Quién Está Dirigido</a></li>
									  <li><a href="http://link.cl">FAQs</a>  </li>
									  </h3>
                                     </div><!-- sobre-empresa-footer -->
                                     
                                     <div id="separador-footer"> 
                                     </div><!-- separador-footer -->

                                      <div id="info-footer"> 
                                      <h3>Mayor Información:
                                      <P></P>
									<li><a href="http://link.cl">TERMINOS Y CONDICIONES</a></li>
									<li><a href="http://link.cl">POLITICAS DE PRIVACIDAD</a></li>
									<li><a href="http://link.cl">INFORMACION RELEVANTE</a></li> </h3>                                     
                                    </div><!-- fin info footer -->
   				   </div><!-- FIN FOOTER-->
        </div><!-- #fin container -->  
    </div>
    </form>
</body>
</html>	