

// 自動計算上方menu的長度
$(function checkMoblieMenu(){
  var MenuLength = $(".header-menuitem").length;
  $(".header-menuitem").parents("ul").css("width",MenuLength*120);
});

// 當手指離開上方menu時，整個body解除滑動綁定
function unlockTouch(){
    $('body').unbind('touchmove')
}

// 打開子層
function opensideS(e){
  $(e).parents("li").siblings().children(".sidebar-nav-s").slideUp();
  $(e).siblings(".sidebar-nav-s").slideToggle();
}

// 打開孫子層 並且控制箭頭的方向
function openSideGS(e){
  $(e).parents(".sidebar-nav-s-tab").siblings().children("ul").slideUp();
  $(e).siblings(".sidebar-nav-gs").slideToggle();
  $(e).parents(".sidebar-nav-s-tab").siblings().find("i").removeClass("down");
  $(e).children("i").toggleClass("down");

}


// 哈幣免運活動光箱
// 如果"未驗證"=true 就執行
$(function habiAnnocement(){
	var habiVerification = false;
	if(habiVerification == true){
		triggerHabiFreeShipping();
		// 彈出視窗
		$("#habiFreeShipping").modal();
	}
})

// 已寄送驗證信的光箱 append在網頁中
function triggerHabiFreeShipping(){
	$("body").append(
		'<div class="am-modal am-modal-no-btn phone-alert" tabindex="-1" id="habiFreeShipping">'+
		  '<div class="am-modal-dialog">'+
		    '<a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>'+
		    '<div class="am-modal-hd">驗證信已寄到你的信箱</div>'+
		    '<div class="am-modal-bd">'+
		      '<h5>完成驗證立刻享有Hawooo國際免運1次</h5>'+
		      '<p>你挑台灣好物，我出國際運費<br>我不對你好，誰來對你好呢<br>放到過期絕對可惜唷!</p>'+
		      '<div class="am-btn-wrapper am-cf">'+
		        '<button class="am-btn am-fl grey-btn">重新發送</button><button class="am-btn am-fr header-pink-btn">了解Ha幣</button>'+
		      '</div>'+
		    '</div>'+
		  '</div>'+
		'</div>'
		)
}