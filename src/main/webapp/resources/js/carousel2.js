// start carrousel
document.addEventListener('DOMContentLoaded', function() {
	$('.caja').carousel({
		fullWidth : true,
		indicators : false
	});
});

// move next carousel
$('.moveNextCarousel').click(function(e) {
	e.preventDefault();
	e.stopPropagation();
	$('.caja').carousel('next');
});

// move prev carousel
$('.movePrevCarousel').click(function(e) {
	e.preventDefault();
	e.stopPropagation();
	$('.caja').carousel('prev');
});