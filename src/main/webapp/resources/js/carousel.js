document.addEventListener('DOMContentLoaded', function() {
	var modals = document.querySelectorAll('.modal');
	var modalInstance = M.Modal.init(modals);

	var carousels = document.querySelectorAll('.carousel');
	var carouselInstance = M.Carousel.init(carousels, {
		padding : 10,
		dist : 0,
		interval : 100,
	});

	for (let i = 0; i < carousels.length; i++) {
		carousels[i].removeEventListener('click',
				carouselInstance[i]._handleCarouselClickBound);
	}

});

$(document).ready(function() {
	
	//Boton de movimiento de carusel HBO
	$('.NextHBO').click(function(e) {
		 e.preventDefault();
	      e.stopPropagation();
		$('.carousel_HBO').carousel('next');
	});

	$('.PrevHBO').click(function(e) {
		 e.preventDefault();
	      e.stopPropagation();
		$('.carousel_HBO').carousel('prev');
	});
	
	//Boton de movimiento de carusel Netflix
	$('.NextNetflix').click(function(e) {
		 e.preventDefault();
	      e.stopPropagation();
		$('.carousel_Netflix').carousel('next');
	});

	$('.PrevNetflix').click(function(e) {
		 e.preventDefault();
	      e.stopPropagation();
		$('.carousel_Netflix').carousel('prev');
	});
	
	//Boton de movimiento de carusel Amazon Prime
	$('.NextAmazon_Prime').click(function(e) {
		 e.preventDefault();
	      e.stopPropagation();
		$('.carousel_Amazon_Prime').carousel('next');
	});
	
	$('.PrevAmazon_Prime').click(function(e) {
		 e.preventDefault();
	      e.stopPropagation();
		$('.carousel_Amazon_Prime').carousel('prev');
	});

	//Boton de movimiento de carusel Disney Plus
	$('.NextDisney_Plus').click(function(e) {
		 e.preventDefault();
	      e.stopPropagation();
		$('.carousel_Disney_Plus').carousel('next');
	});
	
	$('.PrevDisney_Plus').click(function(e) {
		 e.preventDefault();
	      e.stopPropagation();
		$('.carousel_Disney_Plus').carousel('prev');
	});
	
	//Boton de movimiento de carusel Filmin
	$('.NextFilmin').click(function(e) {
		 e.preventDefault();
	      e.stopPropagation();
		$('.carousel_Filmin').carousel('next');
	});
	
	$('.PrevFilmin').click(function(e) {
		 e.preventDefault();
	      e.stopPropagation();
		$('.carousel_Filmin').carousel('prev');
	});
	
	//Boton de movimiento de carusel Movistar
	$('.NextMovistar').click(function(e) {
		 e.preventDefault();
	      e.stopPropagation();
		$('.carousel_Movistar').carousel('next');
	});
	
	$('.PrevMovistar').click(function(e) {
		 e.preventDefault();
	      e.stopPropagation();
		$('.carousel_Movistar').carousel('prev');
	});
	
});
