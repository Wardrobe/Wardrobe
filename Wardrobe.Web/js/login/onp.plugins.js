(function($) {
/**
 * Copyright 2013, OnePress, http://onepress-media.com/portfolio
 * Help Desk: http://support.onepress-media.com/
 */
 
$(document).ready(function() {		
	/**
    * Initializtion for placeholders
    */	
	$('input').placeholder();
	
	/**
    * Initializtion checkboxes
    */	
	$('input[type="checkbox"]').checkbox();

	$('.onp-tab-menu li').click(function(){		
		$( '.onp-warning-text', contanier )
			.css('opacity', '0')
			.hide();
		
		if( forgotOpen ) {		
			//Resets to the default state
			returnForm();
		}
	});		
	
	var count = 0;
	
	/**
    * Check form validation on submission
    */	    	
	$('form', "#onp-summer-form").submit(function(){
		
		var data = [
			{nameField: 'onp-lgn', text: 'Field is not filled!', type: 'length'},
			{nameField: 'onp-forgot-lgn', text: 'Field is not filled!', type: 'length'},
			{nameField: 'onp-reg-lgn', text: 'Field is not filled!', type: 'length'},
			{nameField: 'onp-lgn', text: 'Incorrect e-mail!', type: 'email'},
			{nameField: 'onp-forgot-lgn', text: 'Incorrect e-mail!', type: 'email'},
			{nameField: 'onp-reg-lgn', text: 'Incorrect e-mail!', type: 'email'},			
			{nameField: 'onp-psw', text: 'Field is not filled!', type: 'length'},			
			{nameField: 'onp-reg-psw', text: 'Field is not filled!', type: 'length'}			
		 ];
		 
		if( validate( data, this) ) return true;
		return false;
	});
	
	/**
	* A method to validate form data
	*/
	function validate( data, contanier ) {
		var result = true;	
		
		$( '.onp-warning-text', contanier ).hide();
		
		$.each( data, function( index, item ) {
			if($( contanier ).find( 'input[name="'+item.nameField+'"]' ).length > 0 ){
				 switch ( item.type ) {
					case ('length'): 					
						if( $( contanier ).find( 'input[name="'+item.nameField+'"]' ).val().length <= 0 ) {
							$( contanier ).find( 'input[name="'+item.nameField+'"]' ).parent().find( '.onp-warning-text' )
								.text( item.text )
								.show()
								.stop()	
								.animate( { opacity: 1 },500 )
								.unbind( "click" );
								
							result = false;	
						} 								
					break;
					case ( 'email' ):				
						var pattern = new RegExp(/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i);
						
						if( !pattern.test( $( contanier ).find( 'input[name="'+item.nameField+'"]' ).val() ) ) {
							if( result ) {						
								$( contanier ).find( 'input[name="'+item.nameField+'"]' ).parent().find( '.onp-warning-text' )
									.text( item.text )								
									.show()
									.stop()	
									.animate( { opacity: 1 },500 )
									.unbind( "click" );
									
								result = false;								
							} 						
						}
					break;	
				}
			}			
			});	
		/**
		* Tootips for mobile devices
		*/					
		$('.onp-warning-text').click(function() {							
			var self = this;							
			
			if( $(window).width() <= 750  ) {
			
				if( $(self).hasClass('active') ) {									
					$(self).css('background-position','center, center')
					   .css('overflow','visible')
					   .stop()
					   .animate({right: '-5px', width: '35px', paddingLeft: '0', textIndent: '-9999px'}, 300)
					   .removeClass('active');
					   
				} else {				
					$(self).css('background-position','10px, center')
					   .css('overflow','visible')
					   .stop()
					   .animate({width: '130px', paddingLeft: '20px', textIndent: '0'}, 300)
					   .addClass('active');			   
				}
			}	
		});	
		return result;
	}
	
	/**
	* Password recover
	*/	
	var forgotOpen = false;
	
	$("#onp-forgot-open").click(function(){		
		$( '.onp-warning-text', contanier )
			.css('opacity', '0')
			.hide();
		
		// for desktop	
		if( $(window).width() >= 750  ) {
						
			$(".onp-form-side", "#onp-summer-form")
				.css("position", "absolute")
				.css("top", "0")
				.css("left", "0")				
				.animate({left: "130px"}, 1000);
			
			$(".onp-tab-menu", "#onp-summer-form")
				.animate({left: "80px"}, 1000);		
			
			$(".onp-form-meta", "#onp-summer-form")
				.css("position", "absolute")
				.css("top", "0")
				.css("right", "0")
				.css("z-index", "-1")		
				.animate({right: "130px"}, 1000, 
				
			function(){			
				$(".onp-login-area").css("display", "none");
				$(".onp-forgot-login-area").css("display", "block");				
				
				$(".onp-form-side", "#onp-summer-form")
					.append('<div class="onp-hightlight"></div>');
			
				$(".onp-hightlight", "#onp-summer-form")	
					.css("position", "absolute")
					.css("top", "0")
					.css("left", "0")
					.css("background", $(".onp-form-side", "#onp-summer-form").css('background'))
					.css("width", "300px")
					.css("height", "290px")					
					.animate({opacity: 0}, 400, 
				function(){
						$(".onp-hightlight", "#onp-summer-form").css("display", "none");
				});				
					
			});
			
		} else {
		
			// for mobile		
			$(".onp-form-side", "#onp-summer-form")
				.css("position", "relative");				
				
			$(".onp-form-meta", "#onp-summer-form")
				.css("position", "relative")				
				.css("z-index", "-1")		
				.animate({top: -60}, 1000, 
				
			function(){
				$(".onp-form-meta button", "#onp-summer-form").css("display", "none");
				$(".onp-form-meta", "#onp-summer-form").animate({top: 0}, 1000);
				
				$(".onp-login-area").css("display", "none");
				$(".onp-forgot-login-area").css("display", "block");				
				
				$(".onp-form-side", "#onp-summer-form")
					.append('<div class="onp-hightlight"></div>');
				
				$(".onp-hightlight", "#onp-summer-form")	
					.css("position", "absolute")
					.css("top", "0")
					.css("left", "0")
					.css("background", $(".onp-form-side", "#onp-summer-form").css('background'))
					.css("width", "300px")
					.css("height", "290px")					
					.animate({opacity: 0}, 400, function(){
						$(".onp-hightlight", "#onp-summer-form").css("display", "none");
				});	
			});
			}
			forgotOpen = true;							
	});	
	
	/**
	* Reset form to default state
	*/	
	function returnForm() {	
		// for desktop	
		if( $(window).width() >= 750  ) {
		
			$(".onp-form-side", "#onp-summer-form").animate({left: "0"}, 1000, function(){
				$(".onp-hightlight", "#onp-summer-form")
						.css("display", "block")
						.css("opacity", "1");
						
						$(".onp-hightlight", "#onp-summer-form").css("display", "none");
						$(".onp-forgot-login-area").css("display", "none");	
						$(".onp-login-area").css("display", "block");							
						
			});					
			$(".onp-tab-menu", "#onp-summer-form").animate({left: "-50px"}, 1000);
			$(".onp-form-meta", "#onp-summer-form").animate({right: "0"}, 1000);
		
		
		} else {
			// for mobile
			$(".onp-form-meta button", "#onp-summer-form").css("display", "inline-block");
			$(".onp-form-meta", "#onp-summer-form")
				.stop()
				.css("top", "-60px")
				.animate({top: "0"}, 1000);
			
			$(".onp-hightlight", "#onp-summer-form")
				.css("display", "block")
				.css("opacity", "1");
				
				$(".onp-hightlight", "#onp-summer-form").css("display", "none");
				$(".onp-forgot-login-area").css("display", "none");	
				$(".onp-login-area").css("display", "block");
		
		}
		$(".onp-hightlight", "#onp-summer-form").remove();
		forgotOpen = false;
		
	}
		
});

/*
 * jQuery Checkbox Styler 1.1.2
 * http://dimox.name/styling-input-checkboxes-using-jquery-css/
 *
 * Copyright 2012 Dimox (http://dimox.name/)
 * Released under the MIT license.
 *
 * Date: 2012.10.07
 *
 */
	$.fn.checkbox = function() {
		$(this).css({position: 'absolute', left: '-9999px'}).each(function() {
			var input = $(this);
			if (input.next('span.checkbox').length < 1) {
				var span = $('<span class="checkbox" style="display:inline-block"></span>');
				input.after(span);
				if (input.is(':checked')) span.addClass('checked');
				if (input.is(':disabled')) span.addClass('disabled');

				span.click(function() {
					if (!span.is('.disabled')) {
						if (input.is(':checked')) {
							input.removeAttr('checked');
							span.removeClass('checked');
						} else {
							input.attr('checked', true);
							span.addClass('checked');
						}
						input.change();
						return false;
					}
				});

				input.parent('label').add('label[for="' + input.attr('id') + '"]').click(function() {
					span.click();
					return false;
				});

				input.change(function() {
					if (input.is(':checked')) span.addClass('checked');
					else span.removeClass('checked');
				})

				.keydown(function(e) {
					if (input.parent('label').length && (e.which == 13 || e.which == 32)) span.click();
				})
				.focus(function() {
					if (!span.is('.disabled')) span.addClass('focused');
				})
				.blur(function() {
					span.removeClass('focused');
				});

				input.live('refresh', function() {
					if (input.is(':checked')) span.addClass('checked');
						else span.removeClass('checked');
					if (input.is(':disabled')) span.addClass('disabled');
						else span.removeClass('disabled');
				})
			}
		});
	}
	
	// placeholder for form

	var isInputSupported = 'placeholder' in document.createElement('input'),
	    isTextareaSupported = 'placeholder' in document.createElement('textarea'),
	    prototype = $.fn,
	    valHooks = $.valHooks,
	    hooks,
	    placeholder;

	if (isInputSupported && isTextareaSupported) {

		placeholder = prototype.placeholder = function() {
			return this;
		};

		placeholder.input = placeholder.textarea = true;

	} else {

		placeholder = prototype.placeholder = function() {
			var $this = this;
			$this
				.filter((isInputSupported ? 'textarea' : ':input') + '[placeholder]')
				.not('.placeholder')
				.bind({
					'focus.placeholder': clearPlaceholder,
					'blur.placeholder': setPlaceholder
				})
				.data('placeholder-enabled', true)
				.trigger('blur.placeholder');
			return $this;
		};

		placeholder.input = isInputSupported;
		placeholder.textarea = isTextareaSupported;

		hooks = {
			'get': function(element) {
				var $element = $(element);
				return $element.data('placeholder-enabled') && $element.hasClass('placeholder') ? '' : element.value;
			},
			'set': function(element, value) {
				var $element = $(element);
				if (!$element.data('placeholder-enabled')) {
					return element.value = value;
				}
				if (value == '') {
					element.value = value;
					// Issue #56: Setting the placeholder causes problems if the element continues to have focus.
					if (element != document.activeElement) {
						// We can't use `triggerHandler` here because of dummy text/password inputs :(
						setPlaceholder.call(element);
					}
				} else if ($element.hasClass('placeholder')) {
					clearPlaceholder.call(element, true, value) || (element.value = value);
				} else {
					element.value = value;
				}
				// `set` can not return `undefined`; see http://jsapi.info/jquery/1.7.1/val#L2363
				return $element;
			}
		};

		isInputSupported || (valHooks.input = hooks);
		isTextareaSupported || (valHooks.textarea = hooks);

		$(function() {
			// Look for forms
			$(document).delegate('form', 'submit.placeholder', function() {
				// Clear the placeholder values so they don't get submitted
				var $inputs = $('.placeholder', this).each(clearPlaceholder);
				setTimeout(function() {
					$inputs.each(setPlaceholder);
				}, 10);
			});
		});

		// Clear placeholder values upon page reload
		$(window).bind('beforeunload.placeholder', function() {
			$('.placeholder').each(function() {
				this.value = '';
			});
		});

	}

	function args(elem) {
		// Return an object of element attributes
		var newAttrs = {},
		    rinlinejQuery = /^jQuery\d+$/;
		$.each(elem.attributes, function(i, attr) {
			if (attr.specified && !rinlinejQuery.test(attr.name)) {
				newAttrs[attr.name] = attr.value;
			}
		});
		return newAttrs;
	}

	function clearPlaceholder(event, value) {
		var input = this,
		    $input = $(input);
		if (input.value == $input.attr('placeholder') && $input.hasClass('placeholder')) {
			if ($input.data('placeholder-password')) {
				$input = $input.hide().next().show().attr('id', $input.removeAttr('id').data('placeholder-id'));
				// If `clearPlaceholder` was called from `$.valHooks.input.set`
				if (event === true) {
					return $input[0].value = value;
				}
				$input.focus();
			} else {
				input.value = '';
				$input.removeClass('placeholder');
				input == document.activeElement && input.select();
			}
		}
	}

	function setPlaceholder() {
		var $replacement,
		    input = this,
		    $input = $(input),
		    $origInput = $input,
		    id = this.id;
		if (input.value == '') {
			if (input.type == 'password') {
				if (!$input.data('placeholder-textinput')) {
					try {
						$replacement = $input.clone().attr({ 'type': 'text' });
					} catch(e) {
						$replacement = $('<input>').attr($.extend(args(this), { 'type': 'text' }));
					}
					$replacement
						.removeAttr('name')
						.data({
							'placeholder-password': true,
							'placeholder-id': id
						})
						.bind('focus.placeholder', clearPlaceholder);
					$input
						.data({
							'placeholder-textinput': $replacement,
							'placeholder-id': id
						})
						.before($replacement);
				}
				$input = $input.removeAttr('id').hide().prev().attr('id', id).show();
				// Note: `$input[0] != input` now!
			}
			$input.addClass('placeholder');
			$input[0].value = $input.attr('placeholder');
		} else {
			$input.removeClass('placeholder');
		}
	}	

/* ========================================================
 * bootstrap-tab.js v2.3.0
 * http://twitter.github.com/bootstrap/javascript.html#tabs
 * ========================================================
 * Copyright 2012 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ======================================================== */
  "use strict"; // jshint ;_;


 /* TAB CLASS DEFINITION
  * ==================== */

  var Tab = function (element) {
    this.element = $(element)
  }

  Tab.prototype = {

    constructor: Tab

  , show: function () {
      var $this = this.element
        , $ul = $this.closest('ul:not(.dropdown-menu)')
        , selector = $this.attr('data-target')
        , previous
        , $target
        , e

      if (!selector) {
        selector = $this.attr('href')
        selector = selector && selector.replace(/.*(?=#[^\s]*$)/, '') //strip for ie7
      }

      if ( $this.parent('li').hasClass('active') ) return

      previous = $ul.find('.active:last a')[0]

      e = $.Event('show', {
        relatedTarget: previous
      })

      $this.trigger(e)

      if (e.isDefaultPrevented()) return

      $target = $(selector)

      this.activate($this.parent('li'), $ul)
      this.activate($target, $target.parent(), function () {
        $this.trigger({
          type: 'shown'
        , relatedTarget: previous
        })
      })
    }

  , activate: function ( element, container, callback) {
      var $active = container.find('> .active')
        , transition = callback
            && $.support.transition
            && $active.hasClass('fade')

      function next() {
        $active
          .removeClass('active')
          .find('> .dropdown-menu > .active')
          .removeClass('active')

        element.addClass('active')

        if (transition) {
          element[0].offsetWidth // reflow for transition
          element.addClass('in')
        } else {
          element.removeClass('fade')
        }

        if ( element.parent('.dropdown-menu') ) {
          element.closest('li.dropdown').addClass('active')
        }

        callback && callback()
      }

      transition ?
        $active.one($.support.transition.end, next) :
        next()

      $active.removeClass('in')
    }
  }


 /* TAB PLUGIN DEFINITION
  * ===================== */

  var old = $.fn.tab

  $.fn.tab = function ( option ) {
    return this.each(function () {
      var $this = $(this)
        , data = $this.data('tab')
      if (!data) $this.data('tab', (data = new Tab(this)))
      if (typeof option == 'string') data[option]()
    })
  }

  $.fn.tab.Constructor = Tab


 /* TAB NO CONFLICT
  * =============== */

  $.fn.tab.noConflict = function () {
    $.fn.tab = old
    return this
  }


 /* TAB DATA-API
  * ============ */

  $(document).on('click.tab.data-api', '[data-toggle="tab"], [data-toggle="pill"]', function (e) {
    e.preventDefault()
    $(this).tab('show')
  })

})(jQuery);