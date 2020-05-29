$(document).ready(function() {
	$('.sidenav').sidenav();
	$('.dropdown-trigger').dropdown({
		hover: true,
		constrainWidth: false
	});

	var userLogin = {};
	
	//$['#login'].click(()=>{
		
		$.ajax({
			type : 'GET',
			url : '/qveo/username',
			success : function(data) {
				$('#foto-user').attr("src", '/qveo' + data.foto);
				console.log("SUCCESS : ", data);
			},
			error : function(e) {
				console.log("ERROR : ", e);
			}
		});
	//});

});