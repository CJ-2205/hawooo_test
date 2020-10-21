$(function () {
    changImg();
});
function changImg() {
    $("img").each(function () {
        var src = $(this).attr("src");
        if (src !== 'undefined')
            $(this).attr("src", $(this).attr("src").replace("20180918", "20181001"));
    });
}
