$(function(){
	$("#abc").keyup(function(){	
		var x=$("#abc").val().length;
		$("#message").val("You have entered");	
	});
	$("#abc").keydown(function(){	
		$("#message").remove();	
	});
});