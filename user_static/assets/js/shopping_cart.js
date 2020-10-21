$(document).ready(function () {
    paymentToggle();
    paymentOption();
    onlinebankCheck();
    unchecked();

});

// 選擇線上付款或是線下付款
function paymentToggle() {
    $(".payment-wrapper").on("click", function () {
        var thisPayment = $(this).find(".payment-content");
        var thisInput = $(this).find(".payment-input");
        $(this).siblings().find("input").prop("checked", false);

        if (thisPayment.css("display") == "none") {
            $(".payment-content").slideUp();
            thisPayment.slideToggle();
            thisInput.prop("checked", true);
        }
        //		else{
        //			return false;
        //		}
        unchecked();
    });
};

// 選擇裡面的付款銀行或是便利商店
function paymentOption() {
    $(".payment-option").on("click", function () {
        var optionInput = $(this).find("input.optioninput");

        $(this).siblings().find("input").prop("checked", false);
        $(this).parents(".payment-wrapper").siblings().find("input").prop("checked", false);
        optionInput.prop("checked", true);
        unchecked();
    });
}

// 選擇線上付款的銀行
function onlinebankCheck() {
    var onBank = $(".onlineBankingDiv");

    onBank.on("click", function () {
        var onBankInput = $(this).find("input");

        onBank.removeClass("active")
        onBank.find("i").removeClass("active")
        $(this).addClass("active")
        $(this).find("i").addClass("active")
        onBankInput.prop("checked", true);
        unchecked();
    })

}


// 檢查如果如果線上銀行沒有被點，border和i消失

function unchecked() {
    $(".onlineBankingDiv").each(function () {
        if (!$(this).find("input").is(":checked")) {
            $(this).removeClass("active")
            $(this).find("i").removeClass("active")
        }
    })
}




