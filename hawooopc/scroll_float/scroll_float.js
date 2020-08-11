// 當網頁載入完

$(window).resize(function () {
    left();
    right();
});

$(window).load(function () {
    left();
    right();
});
function left() {
    var allwidth = document.body.clientWidth; //整個螢幕的寬度
    var lrwidth = (allwidth - 1180) / 2; //左右剩餘的寬度

    var $win = $(window),
        $ad = $('#scroll_float_ad_left').css('opacity', 0).show(),	// 讓廣告區塊變透明且顯示出來
        _width = $ad.width(),
        _height = $ad.height(),
        _diffY = 120, _diffX = lrwidth - _width - 20,	// 距離左及下方邊距
        _moveSpeed = 500;	// 移動的速度

    // 先把 #abgne_float_ad 移動到定點
    $ad.css({
        top: _diffY,	// 往上
        left: _diffX,
        opacity: 1
    });

    // 幫網頁加上 scroll 及 resize 事件
    $win.bind('scroll resize', function () {
        var $this = $(this);

        // 控制 #abgne_float_ad 的移動
        $ad.stop().animate({
            top: $this.scrollTop() + _diffY,	// 往上
            left: $this.scrollLeft() + _diffX
        }, _moveSpeed);
    }).scroll();	// 觸發一次 scroll()
}
function right() {
    var allwidth = document.body.clientWidth; //整個螢幕的寬度
    var lrwidth = (allwidth - 1180) / 2; //左右剩餘的寬度
    var $win = $(window),
        $ad = $('#scroll_float_ad_right').css('opacity', 0).show(),	// 讓廣告區塊變透明且顯示出來
        _width = $ad.width(),
        _height = $ad.height(),
        _diffY = 120, _diffX = lrwidth + 1200,	// 距離右及下方邊距
        _moveSpeed = 500;	// 移動的速度

    // 先把 #abgne_float_ad 移動到定點
    $ad.css({
        top: _diffY,	// 往上
        left: _diffX,
        opacity: 1
    });

    // 幫網頁加上 scroll 及 resize 事件
    $win.bind('scroll resize', function () {
        var $this = $(this);

        // 控制 #abgne_float_ad 的移動
        $ad.stop().animate({
            top: $this.scrollTop() + _diffY,	// 往上
            left: $this.scrollLeft() + _diffX
        }, _moveSpeed);
    }).scroll();	// 觸發一次 scroll()
}