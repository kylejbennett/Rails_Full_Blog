$(document).ready(function(){
	$(".load").hide();
});


$(document).on('page:fetch', function(event) {
	$(".load").show();
});

$(document).on('page:load', function(event) {
	$(".load").hide();
});