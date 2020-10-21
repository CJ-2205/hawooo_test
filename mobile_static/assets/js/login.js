$(document).ready(function(){

inputFocus();
});


// input被focus時改變顏色

function inputFocus(){
	$(".input-wrapper input").focus(function(){
		$(this).siblings(".logoin-icon").find("i").css("color","#DB006D")
	})
	$(".input-wrapper input").focusout(function(){
		$(this).siblings(".logoin-icon").find("i").css("color","#737373")
	})
}