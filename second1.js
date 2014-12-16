$(function(){
	$("#abc").keyup(function(){	
		var x=$("#abc").val().length;
		$("<p id='message' >You have entered "+x+" letters</p>").insertAfter('#abc');	
	});
	$("#abc").keydown(function(){	
		$("#message").remove();	
	});
});