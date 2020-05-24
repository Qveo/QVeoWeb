$(document).ready(function(){
    $('.sidenav').sidenav();
    $('.dropdown-trigger').dropdown();
    
    var userLogin = {};
    //if($('#dropdown1').css('display')!= 'none'){
    	
    	$.ajax({
    		type : 'GET',
    		url : '/qveo/username',
    		success : function(data) {
    			
    			$('#foto-user').attr("src",'/qveo'+data.foto);
    			
    			console.log("SUCCESS : ", data);
    		},
    		error : function(e) {
    			console.log("ERROR : ", e);
    		}
    	});
    //}
    
});