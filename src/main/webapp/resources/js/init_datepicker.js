document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.datepicker');
    var instances = M.Datepicker.init(elems, {
    	format: 'yyyy-mm-dd',
    	yearRange: 100
    });
  });