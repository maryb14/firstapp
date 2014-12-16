$(function(){
	$("#abc").keyup(function(){	
		var x=$("#abc").val().length;
		if(x>0)
			$("#message").text("You have entered "+$('#abc').val().length+" letters");
		else 
			$("#message").text("");
	});
});