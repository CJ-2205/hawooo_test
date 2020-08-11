// 加入會員用ＪＳ


// 如果沒有在“我同意HaWooo會員條款”打勾
function notAgreeTerms(event){
	if(!$("#nm-agree-checkbox").is(":checked")){
		event.preventDefault();
		if($(".nm-agree-terms").find("p").length<1){
			$(".nm-agree-terms").append(
				'<p>'+
					'<i class="am-icon-exclamation-triangle"></i>'+
				'請同意會員條款</p>'
			)
		}
	}else{
		$(".nm-agree-terms").find("p").remove();
	}
};
