


// 點擊你可能會喜歡愛心
function guessClick(e){
	$(e).find(".pink-o").toggleClass("show")
}

// 回到頂端

function sideGoTop(){
    $("body,html").animate({scrollTop:0},500);
}

// 打開小購物車

function openShoppingCart(){
	$(".s-shopping-cart").toggle(300);
}

// 滑動關閉所有擋住視窗的東西

function hideOnTouchMove(){
	// 滑動時關閉小購物車
	$(".s-shopping-cart").fadeOut();
	// 滑動時關閉搜尋bar
	$(".hide-search").slideUp();
}