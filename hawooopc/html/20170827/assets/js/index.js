$(document).ready(function(){
	changeTabs();
	sideNavigator();
	moreVideoWidth();
	videoSlider();
	guessClick();
	hoverNavColor();

	$(window).on("scroll",function(){
		sideNavActive();
	})

});

// 自動計算影片播放slider的外框長度
function moreVideoWidth(){
	var	moreVideoCount = $(".video-slider").find("li").length;

	$(".video-slider ul").css({
		"width" : (moreVideoCount*100) + (moreVideoCount-1)*5
	});
}

// 首頁上面影片播放slider

function videoSlider(){
	var moreVideoSlide = $(".video-slider ul"),
		moreVideoControl = $(".video-control"),
		sliderWidth = $(".video-slider").width(),
		currentleft = 0,
		VscrollRight ,
		VscrollLeft ;

	moreVideoControl.mouseover(function(){
		if(
			$(this).hasClass("more-video-right")
		){
			VscrollRight = setInterval(function(){
				if(
					// true
					parseInt(moreVideoSlide.css("left"))+1 > (parseInt(moreVideoSlide.css("width"))*(-1)) + sliderWidth
				){
					moreVideoSlide.css({
						left : currentleft--
					})
				}
			},10)
		}else if(
			$(this).hasClass("more-video-left")
		){
			VscrollLeft = setInterval(function(){
				if(
					parseInt(moreVideoSlide.css("left")) < 0
				){
					moreVideoSlide.css({
						left : currentleft++
					})
				}
			},10)
		}
	});

	// 滑鼠移開清除所有計時器
	moreVideoControl.mouseout(function(){
		clearInterval(VscrollRight);
		clearInterval(VscrollLeft);
	});


}

// 首頁下方標籤頁(紅人推薦)的切換
function changeTabs(){
    var recommendTabs =  $(".recommend-tabs-bar").find("li");
    recommendTabs.on("click",function(){
        var thisTabsIndex = $(this).index(),
            thisTabsContent = $(".recommend-tabs-ul .tabs-content");

        // 上方標籤切換active顏色
        recommendTabs.removeClass("tabs-active");
        $(this).addClass("tabs-active");

        // 顯示＆消失內容
        thisTabsContent.removeClass("tabs-content-active");
        thisTabsContent.eq(thisTabsIndex).addClass("tabs-content-active");
    });
};

// 點擊sidenav 移動到相對section

function sideNavigator(){
	$(".side-nav-wrapper li").click(function(){
		if(
			$(this).hasClass("gotop")
		){
			$("body,html").animate({scrollTop:0},500)
		}else{
			var getTab = $(this).index() ;
			var getSection = $(".section-1").eq(getTab).offset().top
			$("body,html").animate({scrollTop:getSection - 120},500)
		}
	})
}

// 偵測相對的sidenav 有顏色變化
function sideNavActive(){
	$(".section-1").each(function(){
		var scrollPos = $(window).scrollTop() + ($(window).height()/2),
			thisHeight = $(this).offset().top,
			thisColor = $(this).find($(".index-more-products-list-colorline")).attr("style"),
			colortext = thisColor.split(":"),
			background = colortext[1],
			colortail = background.split(";"),
			colorbody = colortail[0];
		if(
			scrollPos > thisHeight 
			&& scrollPos < thisHeight + 340
		){
			$(".side-nav-wrapper li").css({
				background: "#f0f0f0",
				color:"#595959"
			})
			var navIndex = $(this).index() -4
			$(".side-nav-wrapper li").eq(navIndex).css({
				background: colorbody,
				color:"white"
			})
		}else if(
			scrollPos<$(".fashion-makeup").offset().top
		){
			$(".side-nav-wrapper li").css({
				background: "#f0f0f0",
				color:"#595959"
			})
		}else if(
			scrollPos>$(".mom-baby").offset().top
		){
			$(".side-nav-wrapper li").css({
				background: "#f0f0f0",
				color:"#595959"
			})
		}
	});

}


// hover側邊ＮＡＶ

function hoverNavColor(){
	$(".side-nav-wrapper li").hover(function(){
		var sideNavIndex = $(this).index() ;
		var opColor = $(".section-1").eq(sideNavIndex).find(".index-more-products-list-colorline").attr("style");
		var opColorSplit = opColor.split(":")
		var opColorTail = opColorSplit[1].split(";")
		var opColorCode = opColorTail[0]

		$(this).css({
			background : opColorCode,
			color:"white"
		})
	},function(){
		$(this).css({
			background : "#f0f0f0",
			color:"#595959"
		})
	})
}


// 點擊你可能會喜歡愛心
function guessClick(){
	$(".guess-you-like-button").click(function(){
		$(this).find(".pink-o").toggleClass("show");
	})
}
