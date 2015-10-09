
$(document).ready(function(){

	$(".load").hide();

	$(".delete-post").on("ajax:complete", function(event){   
		$(event.currentTarget).parent().slideUp(2000) 
	});

});

$(document).on('page:load', function(event) {

	$(".load").hide();	

	$(document).on('page:fetch', function(event) {
		$(".load").show();
	});

	$(document).on('page:restore', function(event) {
		$(".load").hide();
	});

	$(".delete-post").on("ajax:complete", function(event){   
		$(event.currentTarget).parent().slideUp(2000) 
	});

	console.log("Ready")

});



	


