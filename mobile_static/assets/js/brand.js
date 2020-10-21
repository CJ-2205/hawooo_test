// Slider script

var brandSlider = {
    sliderContainer: document.getElementById("sliderContainer"),
    totPagesNum: document.getElementsByClassName("pages").length,
    pagesStripe: document.getElementById("pagesStripe"),
    respStripe: function() {
        this.pagesStripe.style.width = this.totPagesNum * 100 + "%";
    },
    index: 0,
    pageWidth: function() {
        return this.sliderWidth / this.totPagesNum;
    },
    goNext: function() {
        if (this.index < this.totPagesNum - 1) {
            this.index += 1;
            this.transPage();
        }
    },
    goPrev: function() {
        if (this.index > 0) {
            this.index -= 1;
            this.transPage();
        }
    },
    transPage: function() {
        this.pagesStripe.style.transform = "translate(" + ((-100) * this.index) / this.totPagesNum + "%)";
    }
};


var handlers = {
    pagesStripePan: new Hammer(brandSlider.pagesStripe),
    goNextBtn: document.getElementById("goNextBtn"),
    goPrevBtn: document.getElementById("goPrevBtn"),
    goNextBtnTap: new Hammer(this.goNextBtn),
    goPrevBtnTap: new Hammer(this.goPrevBtn),
    moveRight: null,
    moveRightStart: function() {
        this.moveRight = setInterval(function() {
            brandSlider.goNext();
            if (brandSlider.index === brandSlider.totPagesNum - 1) {
                handlers.moveRightStop();
                handlers.moveLeftStart();
            }
        }, 5000);
    },
    moveRightStop: function() {
        clearInterval(handlers.moveRight);
    },
    moveLeft: null,
    moveLeftStart: function() {
        this.moveLeft = setInterval(function() {
            brandSlider.goPrev();
            if (brandSlider.index === 0) {
                handlers.moveLeftStop();
                handlers.moveRightStart();
            }
        }, 5000);
    },
    moveLeftStop: function() {
        clearInterval(handlers.moveLeft);
    },
};



brandSlider.respStripe();
// brandSlider.autoGoNext();
handlers.moveRightStart();

handlers.pagesStripePan.on("swiperight", function(){
    handlers.moveLeftStop();
    handlers.moveRightStop();
    brandSlider.goPrev();
    handlers.moveLeftStart();
});
handlers.pagesStripePan.on("swipeleft", function(){
    handlers.moveLeftStop();
    handlers.moveRightStop();
    brandSlider.goNext();
    handlers.moveRightStart();
});

handlers.goPrevBtnTap.on("tap", function(){
    handlers.moveLeftStop();
    handlers.moveRightStop();
    brandSlider.goPrev();
    handlers.moveLeftStart();
});

handlers.goNextBtnTap.on("tap", function(){
    handlers.moveLeftStop();
    handlers.moveRightStop();
    brandSlider.goNext();
    handlers.moveRightStart();
});
