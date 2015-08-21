
$(document).ready(function(){
	$(".submit_button").click( function(){
		var right_answers = 0, total_answers = 0;
		$("form").each(function(){
			var correct_answer = $( this ).children(".storage");
			var final_answer = $( this ).children(".storage").text(); 
			if($(this).children("input[name = 'question']:checked").val() === final_answer ){
				right_answers++;
				$(this).append("<p class = 'right-answered'>You answered correctly here!</p>");
			}
			else {
				$(this).append("<p class = 'wrong-answered'>You answered incorrectly here!</p>")
			}
			total_answers++;
		});	
		$("#report").text("You answered " + right_answers + " questions correctly out of " + total_answers);
		$("#report").show();
		$('html, body').animate({scrollTop: 0}, 1)
	});
});