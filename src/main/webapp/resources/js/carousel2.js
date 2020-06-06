// start carrousel
document.addEventListener('DOMContentLoaded', function() {
	$('.caja').carousel({
		fullWidth : true,
		indicators : false
	});
});

// move next carousel
$('.moveNextCaja').click(function(e) {
	e.preventDefault();
	e.stopPropagation();
	$('.caja').carousel('next');
});

// move prev carousel
$('.movePrevCaja').click(function(e) {
	e.preventDefault();
	e.stopPropagation();
	$('.caja').carousel('prev');
});
