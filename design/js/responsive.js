//responsive.js

$(document).ready(function() {
	responsive();
	$(window).on('resize', function() {
		responsive();
	});

	//custom
	function customResponsive(win_width, win_height) {

		if (win_width < 450) {
    		$('.col-1').css({'padding-right':'25px', 'padding-left':'25px'});
    		$('.col-2').css({'padding-right':'25px', 'padding-left':'25px'});
    		$('.col-3').css({'padding-right':'25px', 'padding-left':'25px'});
    	} else {
    		$('.col-1').css({'padding-right':'50px', 'padding-left':'50px'});
    		$('.col-2').css({'padding-right':'50px', 'padding-left':'50px'});
    		$('.col-3').css({'padding-right':'50px', 'padding-left':'50px'});
    	}

    	$('.printer-img-1').css({'height': ($('.printer-img-1').width() / 1.45) + 'px'});

	}

	//common
	function responsive() {
		var win_width = window.innerWidth;
		var win_height = window.innerHeight;

		//case smart phone
		if ((navigator.userAgent.indexOf('iPhone') > 0 && navigator.userAgent.indexOf('iPad') == -1) ||
			(navigator.userAgent.indexOf('iPod') > 0) || (navigator.userAgent.indexOf('Android') > 0)) {

        }

		if (win_width < 550) {
			$('.col-2 .col-item').css({'width':'100%'});
			$('.col-2 .inner-col-item').css({'padding-right':0, 'padding-left':0});
			$('.col-2 .inner-col-item .text-small').removeClass('text-small').addClass('text');
			$('.col-2 .col-item-30').css({'width':'100%'});
			$('.col-2 .col-item-70').css({'width':'100%'});
		} else {
			$('.col-2 .col-item').css({'width':'50%'});
			$('.col-2 .inner-col-item').css({'padding-right':'20px', 'padding-left':'20px'});
			$('.col-2 .inner-col-item .text').removeClass('text').addClass('text-small');
			$('.col-2 .col-item-30').css({'width':'30%'});
			$('.col-2 .col-item-70').css({'width':'70%'});
		}

		if (win_width < 600) {
			$('.inner-right').css({'width':'100%'});
			$('.inner-left').css({'width':'100%', 'position':'relative', 'text-align':'center'});
			$('.col-2 .col-item-40').css({'width':'100%'});
			$('.col-2 .col-item-60').css({'width':'100%'});
		} else {
			$('.inner-right').css({'width':'70%'});
			$('.inner-left').css({'width':'20%', 'position':'absolute', 'text-align':'right'});
			$('.col-2 .col-item-40').css({'width':'40%'});
			$('.col-2 .col-item-60').css({'width':'60%'});
		}

		if (win_width < 650) {
			$('.global_link').attr('class', 'global_link_compact');
			$('.global_link .link-item').css({});
			$('#menubar').removeClass('hide');
		} else {
			$('.global_link_compact').attr('class', 'global_link');
			$('.global_link .link-item').css({'opacity':1.0, 'padding-top':'0px', 'padding-bottom':'0px'});
			$('#menubar').addClass('hide');
			$('.shrink_header').css({'padding-top':'25px'});
			$('.shrink_header_admin').css({'padding-top':'25px'});
		}

		if (win_width < 650) {
			$('.col-3').find('.col-item').css({'width':'100%'});
			$('.col-3 .inner-col-item').css({'padding-right':0, 'padding-left':0});
			$('.col-3 .inner-col-item .text-small').attr('class', 'text');
		} else if (win_width < 950) {
			$('.col-3').find('.col-item').css({'width':'50%'});
			$('.col-3 .inner-col-item').css({'padding-right':'20px', 'padding-left':'20px'});
			$('.col-3 .inner-col-item .text').attr('class', 'text-small');
		} else {
			$('.col-3').find('.col-item').css({'width':'33.33%'});
			$('.col-3 .inner-col-item').css({'padding-right':'20px', 'padding-left':'20px'});
			$('.col-3 .inner-col-item .text').attr('class', 'text-small');
		}

		//custom function
		customResponsive(win_width, win_height);
	}
});