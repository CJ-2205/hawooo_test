$(document).ready(function(){
	//clickSpec();
	mouseOnMorePic();
	morePicWidth();
	morePicControlShow();
	grabMainPic();
	changePic();
	//qtyTotal();
	qtyClick();
	additionalInput();
	additionalCheck();
	checkAdditionalQty();
	loveClick();
	openComment();
});


// 點擊商品中的規格
//function clickSpec(){
//	$(".product-spec-item").click(function(){
//		    thisIndex = $(this).index(),
//			thisText = $(this).html();
//		// 如果沒有sold out就變色
//		if(
//			$(this).hasClass("sold-out")
//		){
//			return false;
//		}else{
//			$(".product-spec-item").removeClass("add")
//			$(this).addClass("add")
//		}
//	})
//}

// 自動計算商品更多照片的外框長度
function morePicWidth(){
	var	morePicCount = $(".more-products-pic-slider").find("li").length;

	$(".more-products-pic-slider ul").css({
		"width" : (morePicCount*70) + (morePicCount-1)*5
	});
}

// 是否顯示更多照片的箭頭

function morePicControlShow(){
	var morePicSlide = $(".more-products-pic-slider ul"),
		morePicControl = $(".more-products-pic-control");

		// 如果morePicSlide長度超過可顯示長度就 顯示箭頭
	if(
		morePicSlide.css("width") > "323px"
	){
		morePicControl.show();
	}	
}

// 更多照片往左右滑
function mouseOnMorePic(){
	var morePicSlide = $(".more-products-pic-slider ul"),
		morePicControl = $(".more-products-pic-control"),
		sliderWidth = $(".more-products-pic-slider").width(),
		currentleft = 0,
		PscrollRight ,
		PscrollLeft ;

	morePicControl.mouseover(function(){
		if(
			$(this).hasClass("more-products-pic-right")
		){
			PscrollRight = setInterval(function(){
				if(
					parseInt(morePicSlide.css("left")) > (parseInt(morePicSlide.css("width"))*(-1)) + sliderWidth
				){
					morePicSlide.css({
						left : currentleft--
					})
				}
			},10)
		}else if(
			$(this).hasClass("more-products-pic-left")
		){
			PscrollLeft = setInterval(function(){
				if(
					parseInt(morePicSlide.css("left")) < 0
				){
					morePicSlide.css({
						left : currentleft++
					})
				}
			},10)
		}
	});

	// 滑鼠移開清除所有計時器
	morePicControl.mouseout(function(){
		clearInterval(PscrollRight);
		clearInterval(PscrollLeft);
	});

}

// 大圖就是第一張小圖

function grabMainPic(){
	var PMainPicDiv = $(".product-pic");
		PFirstSmallPic = $(".more-products-pic-slider img").eq(0).attr("src");
	PMainPicDiv.append('<img src="'+PFirstSmallPic+'">');
}


// 點小照片傳遞上去大圖

function changePic(){
	var PMainPic = $(".product-pic").find("img"),
		PSmallPic = $(".more-products-pic-slider").find("img"),
	    PSmallPicdata ;

	PSmallPic.on("click",function(){
		PSmallPicdata = $(this).attr("src");
		PMainPic.attr("src",PSmallPicdata)
	});
}

// 點擊你可能會喜歡愛心
function loveClick(){
	$(".love-button").click(function(){
		$(this).find(".pink-o").toggleClass("show");
	})
}

// 控制商品數量加減

function qtyTotal(){
	var qtyTotle,
		currentqty;
	$(".qty-control").click(function(){
		qtyTotle = parseInt($(this).siblings(".qty-total").html());
		if(
			$(this).hasClass("qty-minus")&&
			qtyTotle>0
		){
			currentqty = qtyTotle-1;
			$(this).siblings(".qty-total").html(currentqty);
		}else if(
			$(this).hasClass("qty-plus")&&
			qtyTotle>=0
		){
			currentqty = qtyTotle+1;
			$(this).siblings(".qty-total").html(currentqty);
		}
	});
}

// 商品數量點擊效果

function qtyClick(){
	$(".qty-control").mousedown(function(){
		$(this).css({
			background : '#CCC'
		})
	})
	$(".qty-control").mouseup(function(){
		$(this).css({
			background : 'white'
		})
	})
}

// 點擊label改變checkbox

function additionalInput(){
	$(".additional-checkbox-wrapper label").click(function(){
		if(
			!$(this).hasClass("active")
		){
			$(this).addClass("active");
			$(this).siblings("input").prop("checked",true)
		}else{
			$(this).removeClass("active");
			$(this).siblings("input").prop("checked",false)
		}
	})
}

// 檢查加購checkbox是否checked

function additionalCheck(){
	$(".additional-checkbox-wrapper input").each(function(){
		if(
			$(this).is(":checked")
		){
			$(this).siblings("label").addClass();
		}		
	})
}

// 額外購買數量如果大於0自己打勾勾

function checkAdditionalQty(){
	$(".qty-control").click(function(){
		$(".additional-price").each(function(){
			var thisTotle = $(this).find(".qty-total").html();
			var thisInput = $(this).siblings(".additional-checkbox-wrapper").children("input");
			thisLable = $(this).siblings(".additional-checkbox-wrapper").children("label");
			if(
				thisTotle>0
			){
				thisLable.addClass("active");
				thisInput.prop("checked",true);
			}else{
				thisLable.removeClass("active");
				thisInput.prop("checked",false);
			}
		})
	});
}

// 點擊評論打開評論頁

function openComment(){
	// 找所有tab
	var navtabs = $(".am-tabs-nav").find(".nav-tabs");
	var commetTabTop = $("#body-description-tab2").offset().top;
	$(".p-stars").find("p").click(function(){
		navtabs.removeClass("am-active")
		navtabs.eq(1).addClass("am-active")
		$(".am-tab-panel").removeClass("am-active am-in");
		$("#body-description-tab2").addClass("am-active am-in");
		// 網頁滾到評論頁位置
		$("html,body").scrollTop(commetTabTop-170);
	});
}

