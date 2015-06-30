$(document).ready(function(){
	$('img.modal_image').click( function(){
		
		var number = $(this).data('id');
		var url = "/category_items/" + number;
		$.ajax({
			method: "GET",
			url: url
		})
		 .done(function (data){
		 		$("#myModal").html( data );
		 		$('#myModal').modal('show');
		 });
	});
});