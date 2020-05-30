var userLogin = {};
$(document).ready(function() {
	$('.sidenav').sidenav();
	$('.dropdown-trigger').dropdown({
		hover: true,
		constrainWidth: false
	});
	
	if(document.querySelector('.dropdown-trigger') != null){
		currentUserLogin()
	}

	function currentUserLogin(){
		
		$.ajax({
			type : 'GET',
			url : '/qveo/username',
			success : function(data) {
				$('#foto-user').attr("src", '/qveo' + data.foto);
				userLogin = data;
				addIdForRedirect();
				console.log("SUCCESS : ", data);
			},
			error : function(e) {
				console.log("ERROR : ", e);
			}
		});
	}	
		
		function addIdForRedirect(){
			let mylist = document.getElementById('mylist');
			mylist.href+=`/${userLogin.id}`;
		}

});