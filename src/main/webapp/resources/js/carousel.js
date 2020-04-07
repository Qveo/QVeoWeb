document.addEventListener('DOMContentLoaded', function () {
	var elems = document.querySelectorAll('.carousel');
	var instances = M.Carousel.init(elems, {
		padding: 10,
		dist: 0,
		interval: 100,
	});
});
