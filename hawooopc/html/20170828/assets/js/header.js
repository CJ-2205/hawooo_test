// 固定會一直出現的ＪＳ（包含上方固定menu、小購物車、會員登入、側邊粉紅色的箭頭拇指）
// 基本上也相容ＩＥ9
// 在firefox寫let會error，所以let通通改成改成var

$(document).ready(function(){
    openMiniShoppingCart();
    openLanguageBox();
    closeEveryWindow();
    changeSearchColor();
    sideArrowShow();
    sideArrowHide();
    sideGoTop();
    miniSoppingCartTabs();
    miniShoppingClose();
    shoppingCartFull();
    loginFocus();
})

// 顯示和關閉小購物車
function openMiniShoppingCart(){
    $("#shoppingcart").click(function(event){
        event.stopPropagation();
        $(".mini-shopping-cart-wrapper").fadeToggle();
    });
};

// 顯示和關閉選擇語言

function openLanguageBox(){
    $(".header-language").click(function(){
        $(".mini-language-box").fadeToggle();
    });
}

// 點擊content關閉所有彈出視窗
function closeEveryWindow(){
    $("content").click(function(){
        $(".jump-window").hide();
        if(
            $(".sideinfo").hasClass("show")
        ){
            $(".sideinfo").toggleClass("show");
            $(".side-arrow-content").toggleClass("hide");
        }
    })
    // 如果點擊的不是購物車本人,會關閉購物車
    $(document).click(function(event){
        if(
            !$(event.target).parents(".mini-shopping-cart-wrapper").is(".mini-shopping-cart-wrapper")
        ){
        $(".mini-shopping-cart-wrapper").fadeOut();
        }
    })
}


// 改變搜尋bar邊框顏色
function changeSearchColor(){
    $(".search-field").focus(function(){
        $(".search-bar").css({
            "border-color":"#FF7C81",
            "transition":".3s"
        })
    });

    $(".search-field").focusout(function(){
        $(".search-bar").css({
            "border-color":"#d9dad9",
            "transition":".3s"
        })
    }); 
}

//  側邊手指顯示

function sideArrowShow(){
    $(".side-arrow-content").click(function(){
        $(".sideinfo").toggleClass("show");
        $(".side-arrow-content").toggleClass("hide");
    })
}

// 側邊手指顯示關閉

function sideArrowHide(){
    $(".close-arrow").click(function(){
        $(".sideinfo").toggleClass("show");
        $(".side-arrow-content").toggleClass("hide");
    })
}

// 回到頂端

function sideGoTop(){
    $(".sideinfo-gotop").click(function(){
        $("body,html").animate({scrollTop:0},500);
    });
}

// 購物車切歡tab

function miniSoppingCartTabs(){
    var miniSoppingTab =  $(".mini-shopping-cart-tabs").find("li");
    var miniSoppingcontent = $(".mini-shopping-cart-items-wrapper").find(".mini-shopping-cart-content");

    miniSoppingTab.on("click",function(event){
        var thisTabsIndex = $(this).index();
        miniSoppingTab.removeClass("active");
        miniSoppingcontent.removeClass("active");
        $(this).addClass("active");
        miniSoppingcontent.eq(thisTabsIndex).addClass("active");
    });
};

// 購物車裡面找滿的那個show 如果兩個都滿show第一個
function shoppingCartFull(){
    var miniSoppingTab =  $(".mini-shopping-cart-tabs").find("li");
    var miniSoppingcontent = $(".mini-shopping-cart-items-wrapper").find(".mini-shopping-cart-content");
    
    miniSoppingcontent.each(function(){
        var thisShoppingContent = $(this).find("li").length;
        
        if(
            thisShoppingContent>0
        ){
            var thisIndex = $(this).index()-1;
            $(this).addClass("active");
            miniSoppingTab.eq(thisIndex).addClass("active");
        } 
        if(
            $(".hawooo-cart").find("li").length>0 &&
            $(".group-cart").find("li").length>0
        ){
            miniSoppingcontent.removeClass("active");
            miniSoppingTab.removeClass("active");
            miniSoppingTab.eq(0).addClass("active");
            $(".hawooo-cart").addClass("active");
        }
    })
};

// 關閉購物車

function miniShoppingClose(){
    $(".shopping-cart-close").click(function(){
        $(".mini-shopping-cart-wrapper").fadeOut();
    });
}

// input被focus時改變顏色
function loginFocus(){
    $(".input-wrapper input").focus(function(){
        $(this).siblings(".logoin-icon").find("i").css("color","#ff0068");
    })
    $(".input-wrapper input").focusout(function(){
        $(this).siblings(".logoin-icon").find("i").css("color","#d9dad9");
    })
}

// 打開登入光箱

function doLogin(url) {
    $("#poplogin").modal();
    $("#rurl").val(url);
}
