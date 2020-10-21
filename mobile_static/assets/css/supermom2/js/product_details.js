$(document).ready(function () {
    for (i = 0; i < 5; i++) {
        duplicate('product-make');
    }
    for (i = 0; i < 3; i++) {
        duplicate('product-make2');
    }
    for (i = 0; i < 155; i++) {
        duplicate("slider-bar");
    }
    $(function () {
        //console.log('begain');
        detectLength($('#slider1 li'), 0);
        detectLength($('#slider2 li'), 0);
        detectLength($('#slider3 li'), 0);
        //console.log('end');
    });
});

function duplicate(id) {
    var ul = $("#" + id + " ul");
    ul.find("li:last")
        .clone(true)
        .appendTo(ul);
}

//--------------------算出商品slider總長-----------------//
function detectLength(thisli, i) {
    var licount = $(thisli).length;   /*li元件個數*/
    var liWidth = $(thisli).outerWidth() + i;       /*單個li物件+間距的寬度*/
    var litotalWidth = licount * liWidth;            /*總長*/
    console.log('litotalWidth: ' + litotalWidth);
    $(thisli).parent("ul").css("width", litotalWidth);
};