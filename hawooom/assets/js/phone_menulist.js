// 自動計算上方menu的長度
$(function () {
    //var MenuLength = $(".header-menuitem").length;
    //$(".header-menuitem").parents("ul").css("width", MenuLength * 94);
    setHeaderMenuWith();
});

function setHeaderMenuWith() {
    var menuLength = $(".header-menuitem").length;
    $("#class1").css("width", menuLength * 94);
}

// 當手指離開上方menu時，整個body解除滑動綁定
function unlockTouch() {
    $('body').unbind('touchmove');
}

// 打開子層
function opensideS(e) {
    $(e).parents("li").siblings().children(".sidebar-nav-s").slideUp();
    $(e).siblings(".sidebar-nav-s").slideToggle();
}

// 打開孫子層 並且控制箭頭的方向
function openSideGS(e) {
    $(e).parents(".sidebar-nav-s-tab").siblings().children("ul").slideUp();
    $(e).siblings(".sidebar-nav-gs").slideToggle();
    $(e).parents(".sidebar-nav-s-tab").siblings().find("i").removeClass("down");
    $(e).children("i").toggleClass("down");

}

// 自動偵測長度 only use in ul and li
// thisli = li's length. i > margin or something
function detectLength(thisli, i) {
    var licount = $(thisli).length;
    var liWidth = $(thisli).outerWidth() + i;
    var litotalWidth = licount * liWidth;
    $(thisli).parent("ul").css("width", litotalWidth);
};

