$(window).load(function () {
    setThem();
});

function setThem() {
    var i;
    var cnt = 11; //swiper個數
    for (i = 1; i <= cnt; i++) {
        //這邊先產生 class name +數字 的字串後面方便使用
        var str1 = '.swiper-container'; //字串2(+. for jquery selecter)
        $('.swiper-container').each(function (index, value) {
            var classCall = str1 + i;
            var next_slider = 'next-btn' + i;
            var prev_slider = 'prev-btn' + i;
            new Swiper(
                classCall, {
                  slidesPerView: 3,
                  slidesPerGroup: 3,
                    spaceBetween: 10,

                pagination: {
                    el: '.swiper-pagination',
                    clickable: true,
                    },

                navigation: {
                    nextEl: ('.' + next_slider),
                    prevEl: ('.' + prev_slider),
                },
                    breakpoints: {
                        640: {
                            slidesPerView: 2.3,
                            slidesPerGroup: 2,
                            spaceBetween: 5
                        }
                    }
            });
        });
    };
};


var swiper = new Swiper('.single-swiper', {   
    slidesPerView: 1,
    navigation: {
        nextEl: '.next-btn',
        prevEl: '.prev-btn',
    },
});