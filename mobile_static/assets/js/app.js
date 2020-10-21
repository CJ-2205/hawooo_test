(function ($) {
    'use strict';

    $(function () {
        var $fullText = $('.admin-fullText');
        $('#admin-fullscreen').on('click', function () {
            $.AMUI.fullscreen.toggle();
        });

        $(document).on($.AMUI.fullscreen.raw.fullscreenchange, function () {
            $fullText.text($.AMUI.fullscreen.isFullscreen ? '退出全屏' : '开启全屏');
        });
    });
})(jQuery);



//上方選單相關開始//

$(document).ready(function () {
    setInterval(AddStopTime, 1000);
    var t = 0;
    $(window).scroll(function (e) {
        stopTime = 0;
        var h = $(document).height();
        var p = $(this).scrollTop();

        if (p === 0) {
            ShowTopClass();
        }
        //else if (p + t > h) {
        //    ShowTopClass();
        //}
        else if (t < p) {//下滚  
            HiddenTopClass();
        }
        else if (p < t) { //上滾 
            ShowTopClass();
        }
        setTimeout(function () { t = p; }, 0);
        //console.log("h:" + h + ",p:" + p + ",t:" + t);
    });
});

var mStatus = false;
var stopTime = 0;
function AddStopTime() {
    stopTime += 1;
    //console.log(stopTime);
    //console.log(mStatus);
    if (stopTime > 2 && mStatus === false) {
        ShowTopClass();
    }

}

function menuL() {
    var id = '#menu-L';
    var $myOc = $(id);

    $('#top-nav-component-hamburger').on('click', function () {
        $myOc.offCanvas($(this).data('rel'));
    });
}
function menuR() {
    var A01 = '<%= Session["A01"] == null ? "NULL" : Session["A01"].ToString() %>';
    if (A01 === 'NULL') {
        location.href = "login.aspx";
    }
    else {
        var id = '#menu-R';
        var $myOc = $(id);
        $("#top-nav-component-member").on('click',
            function () {
                $myOc.offCanvas($(this).data('rel'));
            });
    }
}

function RemoveTopClass() {
    $("#midmenu").remove();
}
function HiddenTopClass() {
    mStatus = false;
    $("#midmenu").slideUp(500);
}
function ShowTopClass() {
    mStatus = true;
    $("#midmenu").slideDown(500);
}

//上方選單相關結束//

// 點擊你可能會喜歡愛心
function guessClick() {
    $(".guess-you-like-button").click(function () {
        $(this).find(".pink-o").toggleClass("show");
    });
}

// 回到頂端
function sideGoTop() {
    $("body,html").animate({ scrollTop: 0 }, 500);
}

// 打開小購物車
function openShoppingCart() {
    $(".s-shopping-cart").toggle(300);
}

//hidden footer bar

window.onload = function () {
    document.addEventListener('touchstart',
        function (event) {
            if (event.touches.length > 1) {
                event.preventDefault();
            }
        });
    var lastTouchEnd = 0;
    document.addEventListener('touchend',
        function (event) {
            var now = (new Date()).getTime();
            if (now - lastTouchEnd <= 300) {
                event.preventDefault();
            }
            lastTouchEnd = now;
        },
        false);
}


$(function () {
    $("img").error(function () {
        $(this).hide();
    });
});

$('#link-search-box').on('click', function () {
    $('#container-search-box').slideToggle('fast');
});

$('.announcement-icon-wrapper').on('click', function () {
    $('.announcement').slideUp(500, function () {
        $(this).remove();
    });
});


$('#slider-adverts').flexslider({
    // controlNav: false,
    directionNav: false,
    animationSpeed: 1500
});

$('.middle-slider').flexslider({
    // controlNav: false,
    directionNav: false,
    animationSpeed: 1500,
    slideshow: false,
    itemWidth: 229
});