$(function(){
	alert("what?");
	$('button').click(function(event){
		if(event.target.id=="first")
			$(this).hide();
			$("div").css("background-color", "black");
		else
			$("#first").show();
	});
});