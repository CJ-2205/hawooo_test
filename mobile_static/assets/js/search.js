// 關鍵字slider tab filter bar 長度 
detectLength($(".search-tab li"),10)

// 點擊篩選nav會改變顏色
// click filter tab chacnge color
function searchNavColor(e){
	$(".filter-bar").find("li").removeClass("active");
	$(e).addClass("active");
}

// 點擊篩選tab 把關鍵字傳上去同時submit
// click filter tab and submit the input with keyword
function searchTabWord(e){
	var searchInput = $(".search-input").val();
	var searchTabVal = $(e).find("a").html();
	$(".search-input").val(searchTabVal);
	setTimeout(submitSearch,100);
}

// 執行submit
// submit the search input
function submitSearch(){
	$(".search-input").submit()
}

// 點擊檢視方式交換顏色＆執行排列
// click style to change color
function changeViewStyle(e){
	$(".view-style").find("i").removeClass("active");
	$(e).addClass("active");
	lineUp(e)
}

// 點到選擇直向排列或是橫向排列來切換
// click style to change view style （row, or column）
function lineUp(e){
	if($(e).hasClass("am-icon-th-list")){
		$(".hot-sale").addClass("line-up")
	}else{
		$(".hot-sale").removeClass("line-up")
	}
}

// defined sort variable
$(function(){
	sortPrice = 0;
});

// 當價格篩選被點擊 變換icon
// when click sort by price tab, change the icon 
function sortSearch(e){
	if(sortPrice == 0){
		$(e).find("i").removeClass("am-icon-sort");
		$(e).find("i").addClass("am-icon-caret-up");
		sortPrice = 1
	}else if( sortPrice == 1 ){
		$(e).find("i").removeClass("am-icon-caret-up");
		$(e).find("i").addClass("am-icon-caret-down");
		sortPrice = 0
	}
}


