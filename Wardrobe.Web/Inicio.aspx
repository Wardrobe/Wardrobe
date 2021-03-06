﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Wardrobe.Web.Inicio" %>
<!DOCTYPE html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
 <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
 <title>:: Wardrobe ::</title>

 <link href='http://fonts.googleapis.com/css?family=Carrois+Gothic|Oswald' rel='stylesheet' type='text/css' />
 <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
 <script type="text/javascript" src="js/Sitio/Inicio/jsAccion.js"></script>
 <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
 <script type="text/javascript" src="js/jquery.cssAnimate.mini.js"></script>
 <script type="text/javascript" src="js/menu/megamenu_plugins.js"></script><!-- Mega Menu Plugins -->
 <script type="text/javascript" src="js/menu/megamenu.js"></script><!-- Mega Menu Script -->

 <script type="text/javascript" src="css/modal/jquery.fancybox.js?v=2.1.4"></script>
 <link rel="stylesheet" type="text/css" href="css/modal/jquery.fancybox.css?v=2.1.4" media="screen" />

<!-- Add Button helper (this is optional) -->
<link rel="stylesheet" type="text/css" href="css/modal/helper/jquery.fancybox-buttons.css?v=1.0.5" />
<script type="text/javascript" src="css/modal/helper/jquery.fancybox-buttons.js?v=1.0.5"></script>

<!-- Add Thumbnail helper (this is optional) -->
<link rel="stylesheet" type="text/css" href="css/modal/helper/jquery.fancybox-thumbs.css?v=1.0.7" />
<script type="text/javascript" src="css/modal/helper/jquery.fancybox-thumbs.js?v=1.0.7"></script>

<!-- Add Media helper (this is optional) -->
<script type="text/javascript" src="css/modal/helper/jquery.fancybox-media.js?v=1.0.5"></script>

<!-- TOUCH AND MOUSE WHEEL SETTINGS -->
<script type="text/javascript" src="js/jquery.touchwipe.min.js"></script>
<script type="text/javascript" src="js/jquery.mousewheel.min.js"></script>

<!-- jQuery SERVICES Slider  -->
<script type="text/javascript" src="js/jquery.themepunch.services.js"></script>

<!-- FONT IMPORT -->
<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow:400,700' rel='stylesheet' type='text/css'>
   	
<script src="js/modernizr.js" type="text/javascript" charset="utf-8"></script>
<script src="js/cute/cute.slider.js" type="text/javascript" charset="utf-8"></script>
<script src="js/cute/cute.transitions.all.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" href="css/main.css" type="text/css" media="screen"  charset="utf-8"/>
<link rel="stylesheet" href="css/slider-style.css" type="text/css" media="screen"  charset="utf-8"/>


<link rel="stylesheet" href="css/menu/megamenu.css" type="text/css" />
<script src="js/respond.min.js" type="text/javascript" charset="utf-8"></script>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-fancybox.js" type="text/javascript" charset="utf-8"></script>
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
        });
</script>

<link href="css/login/summer.theme.css" rel="stylesheet" type="text/css" />
<script src="js/login/onp.plugins.js" type="text/javascript" charset="utf-8"></script>
<!--[if lt IE 8]>
	<script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE8.js"></script>
<![endif]-->

<!--[if lt IE 9]>
	<script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js"></script>
	<link rel='stylesheet' href='css/login/summer.theme-ie.css' type='text/css' media='all'>	    
	<script src="js/login/libs/css3-mediaqueries.js"></script>
<![endif]-->
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
                               <%-- <font color="white">LOGIN:&nbsp; </font>
                                                        <asp:TextBox runat="server" ID="txtLogin"></asp:TextBox>
                                                        <asp:TextBox TextMode="Password" runat="server" ID="txtPassword"></asp:TextBox>
                                                        <div id="btn-ingresar">
                                                        <asp:ImageButton ID="loginAction" ImageUrl="images/btn-ingresar-registro.png" runat="server" onclick="loginAction_Click" /> </div>--%>
                            </div><!-- #fin login -->
                            <div id="separador-header"></div><!-- separador-header -->
                            <div id="registro">
                            	<div id="no-registrado" align="center">
                                   <a class="fancybox" href="#inline1"><font color="white">Registrate</font></a>
                                   <div id="inline1" style="display:none">
                                      <div id="contanier">
                                      </div>
                                    </div>
                                </div><!-- #fin no-registrado -->
                                <div id="registrate">
                                  
                                </div><!-- #fin registrate -->
                            </div><!-- #fin registro -->
                            
                            <div id="login-facebook" align="center">
                              
                            </div><!-- #fin login facebook -->
                
                        </div><!-- #fin contenedor registro -->
                </div>
                <!-- #FIN header -->
                <!--#INICIO menu -->
                <div class="megamenu_container megamenu_dark_bar megamenu_light">
                     <ul class="megamenu">
                        <li>
                            <a href="#" class="megamenu_drop">Videos</a><!-- Begin Item -->
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

                <!-- #COMIENZO contenedor-vitrina -->
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
                 <!-- #FIN contenedor-vitrina -->

                <!-- #COMIENZO contenedor-modulos-home -->
                 <div id="contenedor-modulos-home"> 
                    <div id="titulo-contenedor-home"> 
                        <h1> RECIENTES</h1>
                    </div>
                    <div id="example-wrapper" class="example-wrapper" style="display:none">
					    <div id="services-example-1" class="theme1">
							 <ul id="ul"></ul>			
										
						    <div class="toolbar" id="leftRight">
							    <div class="left"></div>
                                <div class="right"></div>
				            </div>
                        </div> 
                    </div>            
 					
                    
                 </div>
                <!-- FIN contenedor-modulos-home -->
                
                <!-- #COMIENZO FOOTER -->
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