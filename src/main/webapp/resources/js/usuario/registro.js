document.addEventListener('DOMContentLoaded', function() {
    var fecha = document.querySelectorAll('.datepicker');
    var instance = M.Datepicker.init(fecha, {
    	format: 'yyyy-mm-dd',
    	yearRange: 100
    });
    
    var select = document.querySelectorAll('select');
	var instance2 = M.FormSelect.init(select);
	
	$('input[type=checkbox]').each(function() {
		var name = $(this).attr('name');
		$('[name="' + '_' + name + '"]').remove();
	});
	
//	var elems = document.querySelectorAll('.chips');
//	    var instances = M.Chips.init(elems);
  });
