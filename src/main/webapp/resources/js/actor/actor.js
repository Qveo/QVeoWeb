document.addEventListener('DOMContentLoaded', function() {
	
	//Seleect
	var elems = document.querySelectorAll('select');
	var instances = M.FormSelect.init(elems);
	
	 //Modals
	 var modals = document.querySelectorAll('.modal');
	 var modalInstance = M.Modal.init(modals);
});