var userLogin = {};
$(document).ready(function() {
	$('.sidenav').sidenav();
	$('.desplegable-user').dropdown({
		hover : false,
		constrainWidth : false
	});

	if (document.querySelector('.desplegable-user') != null) {
		currentUserLogin();
	}

	function currentUserLogin() {

		$.ajax({
			type : 'GET',
			url : '/qveo/username',
			success : function(data) {
				$('#foto-user').attr("src", `/qveo${data.foto}`);
				userLogin = data;
				addIdForRedirect();
				console.log("SUCCESS : ", data);
			},
			error : function(e) {
				console.log("ERROR : ", e);
			}
		});
	}

	function addIdForRedirect() {
		let mylist = document.getElementById('mylist');
		let cutPosition = mylist.href.lastIndexOf('/');
		let cutHref = mylist.href.substring(0,cutPosition);
		mylist.href = `${cutHref}/${userLogin.id}`;
	}

});