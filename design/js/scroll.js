//main.js

$(document).ready(function() {
	//common
	var scroll_x = 0, scroll_y = 1;
	var win_width = window.innerWidth;

	//custom
	var scroll_elements = $('.col-scroll');
	var shrink_header_ok = true;

	//action
	$(window).on('resize', function() {
		win_width = window.innerWidth;
	});

	$(window).on('scroll', function() {
		scroll_x = document.documentElement.scrollLeft || document.body.scrollLeft;
		scroll_y = document.documentElement.scrollTop || document.body.scrollTop;

		if (win_width >= 650) {
			if (scroll_y > 150) {
				if (shrink_header_ok) {
					$('.shrink_header').animate({
						paddingTop: '15px',
						paddingBottom: '40px',
						backgroundColor: 'rgba(255,255,255,0.9)'
					}, 200);

					$('.shrink_header_admin').animate({
						paddingTop: '15px',
						paddingBottom: '40px'
					}, 200);

					shrink_header_ok = false;
				}
			} else {
				 if (!shrink_header_ok) {
					$('.shrink_header').animate({
						paddingTop: '25px',
						paddingBottom: '50px',
						backgroundColor: 'rgba(255,255,255,0.0)'
					}, 200);

					$('.shrink_header_admin').animate({
						paddingTop: '25px',
						paddingBottom: '50px'
					}, 200);

					shrink_header_ok = true;
				}
			}
		}
	});

	$('.scroll_action').on('click', function() {
		var num = $(this).attr('id').replace('scroll_', '');
		$('body').animate({
            scrollTop: $(scroll_elements[num]).offset().top
        }, 250);
	});
});