$(function(){
	$('button').click(function(event){
		if(event.target.id=="first")
		{	
			if($("#abc").val().length>=5)
				{
					$("ul").append("<li>"+$("#abc").val()+"<input type='checkbox' value='true'><br> </li>");
					$("#abc").next("#error").remove();
				}
			else
				{
					$("<p id='error'>You have to write more than 5 characters</p>").insertAfter("#abc");
				}
		}
		else
		{
			$('input:checked').parent().remove();
		}
		
	});
	
});