function checkStarPoint(event){
	var notRating = $("#rating00");
	if(
		$("#rating00").is(":checked")
	){
		event.preventDefault();
		if(
			$("#rating-wrapper").find("#star-alert").length<1 ){
			$("#rating-wrapper").append('<div id="star-alert">'+'評分不可為0'+'</div>')
		}
	}
}

 function resetStars(){
 	alert($(".star-input:checked").val())
 	$("#commentStar").modal();
 	$("#wr-form").trigger("reset");
 	$("#star-alert").remove();
 }