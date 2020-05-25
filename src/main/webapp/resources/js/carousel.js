document.addEventListener('DOMContentLoaded', function() {
	var modals = document.querySelectorAll('.modal');
    var modalInstance = M.Modal.init(modals);
	
	var carousels = document.querySelectorAll('.carousel');
    var carouselInstance = M.Carousel.init(carousels, {
		padding: 10,
		dist: 0,
		interval: 100,
	});
	
	for(let i=0; i<carousels.length; i++){
		carousels[i].removeEventListener('click', carouselInstance[i]._handleCarouselClickBound);
	}
	
});
