
// 點擊append ＡＴＭ資訊
function openATMbox(e){
    var addATMSpan = $(e).parents("#m-invoice-btn").find("td");
    var spanLength = $(e).siblings(".m-atm-info").length;
    if(spanLength<1){
        addATMSpan.append(
            '<div class="m-atm-info  am-cf">'+
                '<div class="am-u-sm-6 m-bank-info">'+
                    '<div class="am-u-sm-4"><img src="icon/Public-Bank-logo-sm.png"></div>'+
                    '<p class="am-u-sm-8">'+
                        'Bank: Public Bank<br>'+
                        'PEOPLES MAP SDN. BHD. <br>'+
                        'Account No: 3201174410 <br> '+
                    '</p>'+
                '</div>'+
                '<div class="am-u-sm-6 m-bank-info">'+
                    '<div class="am-u-sm-4"><img src="icon/cimb-bank-logo-sm.png"></div>'+
                    '<p class="am-u-sm-8">'+
                        'Bank: CIMB BANK<br>'+
                        'PEOPLES MAP SDN. BHD. <br>'+
                        'Account No: 80-0327458-9  <br> '+
                    '</p>'+
                '</div>'+
            '</div>'
        )
    }
}

// 如果評分低於一顆星 提出警告

function checkStarPoint(event){
    var notRating = $("#rating00");
    if(
        $("#rating00").is(":checked")
    ){
        event.preventDefault();
        if(
            $("#rating-wrapper").find("#star-alert").length<1 ){
            $("#rating-wrapper").append('<div id="star-alert">'+'評分不可為0'+'</div>')
        }
    }
}

// 送出評論表單時，整個表單重置

function resetStars(event){
    // 在preventDefault()之前可以取得form內容
    // return false;
    event.preventDefault();
    $("#commentend").modal();
    $("#commentStar").modal();
    $("#wr-form").trigger("reset");
}

// 打開評論的光箱 
function commentStar(){
    $("#commentStar").modal();
}



