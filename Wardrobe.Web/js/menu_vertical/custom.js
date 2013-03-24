$(document).ready(function() {

	// Adds title attributes and classnames to list items
	 
	$("ul li a:contains('Inicio')").addClass("dashboard").attr('title', 'Inicio');
	$("ul li a:contains('Pages')").addClass("pages").attr('title', 'Pages');
	$("ul li a:contains('Imagenes')").addClass("media").attr('title', 'Imagenes');
	$("ul li a:contains('Seguidores')").addClass("messages").attr('title', 'Seguidores');
	$("ul li a:contains('Mensajes')").addClass("pages").attr('title', 'Mensajes');
	$("ul li a:contains('Cuenta')").addClass("settings").attr('title', 'Cuenta');
	
	// Add class to last list item of submenu
	
	$("ul.submenu li:last-child").addClass("last");
	
	// Hover function
	
	$("ul li:has(ul)").hover(function(){
		$(this).find("ul.submenu").stop("true", "true").slideDown(500);
		}, function(){
		$(this).find("ul.submenu").stop("true", "true").slideUp(500);
	});
	
	// Click function (Uncomment the code below to activate click function & comment out the above code)
	
	/*$("ul li a").live("click", function() {
		$(this).parent().find("ul.submenu").stop("true", "true").slideDown(500);
		$(this).parent().siblings().find("ul.submenu").stop("true", "true").slideUp(500);
	});*/
	
});