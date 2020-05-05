document.addEventListener('DOMContentLoaded', function() {

	var fecha = document.querySelectorAll('.datepicker');
	var instance = M.Datepicker.init(fecha, {
		format : 'yyyy-mm-dd',
		yearRange : 100
	});
	
	$('input[type=checkbox]').each(function() {

		var name = $(this).attr('name');
		$('[name="' + '_' + name + '"]').remove();

	});

	var elems = document.querySelectorAll('select');
	var instances = M.FormSelect.init(elems);
	
});