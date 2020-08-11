
// 檢查星星是不是0分
function checkStarPoint(e){
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

// submit funtcion
function reviewEnd(){
	// 在preventDefault()之前可以取得form內容
    event.preventDefault();
    window.location.href="http://demo.hawooobs.com/yentest/reviewend.html";
}

// 讓星星可以在手機版上滑動
function starTouch(event){
	$(".rating-label").each(function(){
		// 當手指放下時input變成checked
		$(this).on("touchstart",function(event){
			var thisLabelVal = event.target.control.id;
			$('#'+thisLabelVal).prop("checked",true);
		})
		// 當手指開始滑動時input變成checked
		$(this).on("touchmove",function(event){
			var starX = event.originalEvent.targetTouches[0].clientX;
			var starY = event.originalEvent.targetTouches[0].clientY;
			// 利用滑到的位置找到此物件
			var thisStarLabel = document.elementFromPoint(starX,starY);
			var thisStarLabelVal = thisStarLabel.getAttribute("for");
			var thisStarInput = $("#"+thisStarLabelVal);
			thisStarInput.prop("checked",true);
		})
	})
}
