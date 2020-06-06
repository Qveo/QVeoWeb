// start carrousel
document.addEventListener('DOMContentLoaded', function() {
	$('.caja').carousel({
		fullWidth : true,
		indicators : false
	});
});

// move next carousel
$('.nextCaja').click(function(e) {
	e.preventDefault();
	e.stopPropagation();
	$('.caja').carousel('next');
});

// move prev carousel
$('.prevCaja').click(function(e) {
	e.preventDefault();
	e.stopPropagation();
	$('.caja').carousel('prev');
});
