//progressbar.js

$(document).ready(function() {
	dummy();

	function dummy() {
		var elm_progress = $('.progress');
			elm_current = $('.progress .progress-current');
			elm_num = $('.progress .percent .num');
			progress_current = $(elm_current).width();

		var progress = setInterval(function() {
			$(elm_current).css({'width':progress_current + '%'});
			$(elm_num).html(progress_current);
			if (progress_current >= 100) {
				clearInterval(progress);
				endAlert();
			} else {
				progress_current += 1;
			}
		}, 50);
	}

	function endAlert() {
		$('.alert-full').css('display', 'block');
		$('.alert-full').animate({
			opacity: 1
		}, 500);
	}
});