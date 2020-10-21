//$(document).ready(function () {
//    openMiniShoppingCart();
//    openLanguageBox();
//    closeEveryWindow();
//    changeSearchColor();
//    sideArrowShow();
//    sideArrowHide();
//    sideGoTop();
//    miniSoppingCartTabs();
//    miniShoppingClose();
//    shoppingCartFull();
//    loginFocus();
//})

// 顯示和關閉小購物車
function openMiniShoppingCart() {
    $("#shoppingcart").click(function (event) {
        event.stopPropagation();
        $(".mini-shopping-cart-wrapper").fadeToggle();
    });
};

// 顯示和關閉選擇語言

function openLanguageBox() {
    $(".header-language").click(function () {
        $(".mini-language-box").fadeToggle();
    });
}

// 點擊content關閉所有彈出視窗

function closeEveryWindow() {
    $("content").click(function () {
        $(".jump-window").hide();
        if (
            $(".sideinfo").hasClass("show")
        ) {
            $(".sideinfo").toggleClass("show");
            $(".side-arrow-content").toggleClass("hide");
        }
    })

    $(document).click(function (event) {
        if (
            !$(event.target).parents(".mini-shopping-cart-wrapper").is(".mini-shopping-cart-wrapper")
        ) {
            $(".mini-shopping-cart-wrapper").fadeOut();
        }
    })
}


// 改變搜尋bar邊框顏色
function changeSearchColor() {
    $(".search-field").focus(function () {
        $(".search-bar").css({
            "border-color": "#FF7C81",
            "transition": ".3s"
        })
    });

    $(".search-field").focusout(function () {
        $(".search-bar").css({
            "border-color": "#d9dad9",
            "transition": ".3s"
        })
    });
}

//  側邊手指顯示

function sideArrowShow() {
    $(".side-arrow-content").click(function () {
        $(".sideinfo").toggleClass("show");
        $(".side-arrow-content").toggleClass("hide");
    })
}

// 側邊手指顯示關閉

function sideArrowHide() {
    $(".close-arrow").click(function () {
        $(".sideinfo").toggleClass("show");
        $(".side-arrow-content").toggleClass("hide");
    })
}

// 回到頂端

function sideGoTop() {
    $(".sideinfo-gotop").click(function () {
        $("body,html").animate({ scrollTop: 0 }, 500);
    });
}

// 購物車切歡tab

function miniSoppingCartTabs() {
    var miniSoppingTab = $(".mini-shopping-cart-tabs").find("li");
    var miniSoppingcontent = $(".mini-shopping-cart-items-wrapper").find(".mini-shopping-cart-content");

    miniSoppingTab.on("click", function (event) {
        var thisTabsIndex = $(this).index();
        miniSoppingTab.removeClass("active");
        miniSoppingcontent.removeClass("active");
        $(this).addClass("active");
        miniSoppingcontent.eq(thisTabsIndex).addClass("active")
    });
};

// 購物車裡面找滿的那個show 如果兩個都滿show第一個
function shoppingCartFull() {
    var miniSoppingTab = $(".mini-shopping-cart-tabs").find("li");
    var miniSoppingcontent = $(".mini-shopping-cart-items-wrapper").find(".mini-shopping-cart-content");

    miniSoppingcontent.each(function () {
        var thisShoppingContent = $(this).find("li").length;
        if (
            thisShoppingContent > 0
        ) {
            var thisIndex = $(this).index() - 1
            $(this).addClass("active");
            miniSoppingTab.eq(thisIndex).addClass("active");
        }
        if (
            $(".hawooo-cart").find("li").length > 0 &&
            $(".group-cart").find("li").length > 0
        ) {
            miniSoppingcontent.removeClass("active");
            miniSoppingTab.removeClass("active");
            miniSoppingTab.eq(0).addClass("active");
            $(".hawooo-cart").addClass("active");
        }
    })
}

function miniShoppingToggle() {
    $("#min-cart").fadeToggle(600);
}

// 關閉購物車
function miniShoppingClose() {
    $("#min-cart").fadeOut(500);
}
function miniShoppingOpen(type) {
    shoppingCartFull();
    miniSoppingCartTabs();
    //closeEveryWindow();
    $("#min-cart").fadeIn(700);
}
function miniShoppingCartOpenByType(type)
{
    //closeEveryWindow();
    miniSoppingCartTabs();
    $(".mini-shopping-cart-content").removeClass("active");
    $("#min-shop-cart").removeClass("active");
    $("#min-group-cart").removeClass("active");
    if(type == 1)
    {
        $("#min-shop-cart").addClass("active");
        $("#min-cart-1").addClass("active");
    }
    else if(type == 3)
    {
        $("#min-group-cart").addClass("active");
        $("#min-cart-3").addClass("active");
    }
    
   
    $("#min-cart").fadeIn(700);
}

// 打開搜尋相關內容
// open search related results

function openSearchRelated() {
    // 如果結果大於0才顯示
    if ($(".search-related li").length > 0) {
        $(".search-related").fadeIn();
    }
}

// 關閉搜尋相關內容
// close search related results

function closeSearchRelated() {
    $(".search-related").fadeOut();
}



// input被focus時改變顏色
function loginFocus() {
    $(".input-wrapper input").focus(function () {
        $(this).siblings(".logoin-icon").find("i").css("color", "#ff0068")
    })
    $(".input-wrapper input").focusout(function () {
        $(this).siblings(".logoin-icon").find("i").css("color", "#737373")
    })
}

// 打開登入光箱
//function doLogin(url) {
//    $("#poplogin").modal();
//    $("#rurl").val(url);
//}

// 公告ＮＥＷＳ=========================

// 打開最近活動 open events
function openEvents(e) {
    $(e).css("right", 0)
}

function closeEvents(e) {
    var eventWidth = parseFloat($(".events-wrapper").css("width")) - 40;
    $(".events-wrapper").css("right", - eventWidth)
};

//監測如果側邊手指有打開就隱藏events 
// if click pink sidebar then hide events
$(function eventsAndSide(e) {
    $(document).on("click", function () {
        if ($(".sideinfo").hasClass("show")) {
            $(".events-wrapper").hide();
        } else {
            $(".events-wrapper").show();
        }
    })
})

// 計算news裡面的img是否讀取完成
// detect imgs in the news have already loaded or not
// 這個function是給今日不是第一次進入網站
function newsImgOnload() {
    var i = 0;
    var newsImg = $(".events-content").find('img');
    var newsImgLength = $(".events-content").find('img').length;
    newsImg.one("load", function () {
        closeEvents()
    }).each(function () {
        if (this.complete) $(this).load();
    });
};

// 這個function是給今日第一次進入網站
function firstTimeNews() {
    $(".events-wrapper").css("right", 0)
    setTimeout(function () {
        closeEvents()
    }, 7000)
};



