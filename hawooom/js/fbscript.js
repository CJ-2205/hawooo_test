
var url = "index.aspx";
function statusChangeCallback(response) {
    console.log('statusChangeCallback');
    console.log(response);

    if (response.status === 'connected') {
        infoAPI();
    } else if (response.status === 'not_authorized') {

        document.getElementById('status').innerHTML = 'Please log ' +
          'into this app.';
    } else {

        document.getElementById('status').innerHTML = 'Please log ' +
          'into Facebook.';
    }
}


function checkLoginState() {
    FB.getLoginStatus(function (response) {
        statusChangeCallback(response);
    });
}
//appId: '1468567733438462', //正式   appId: '874224565966537', //測試
window.fbAsyncInit = function () {
    FB.init({
        appId: '1468567733438462',
        xfbml: true,
        version: 'v2.6',
        cookie: true
    });
};

function fbLogin() {
    FB.login(function (response) {
        statusChangeCallback(response);
    }, { scope: 'email' })
}

// Load the SDK asynchronously
(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

function infoAPI() {
    console.log('Welcome!  Fetching your information.... ');
    FB.api('/me', { fields: 'id,name,email,picture,gender' }, function (response) {

        var data = {
            "FBID": response.id,
            "FBPIC": response.picture.data.url,
            "FBEMAIL": response.email,
            "FBNAME": response.name,
            "FBGENDER": response.gender,
            "RCID": $("#hf_RCID").val()
        }

        $.ajax({
            type: "post",
            url: "../user/fbjoin.ashx",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (msg) {
                if (msg.LOGIN.length > 0) {
                    //alert("Welcome to HaWooo，Enjoy shopping");
                    var rurl = $("#rurl").val();
                    if (rurl != "") {
                        location.href = rurl;
                    }
                    else {
                        location.href = "memberok.aspx";
                    }

                }
                else {
                    alert(msg.Error);
                }
            },
            error: function (emsg) {
                alert("伺服器錯誤,請重新送出訊息!");
            }
        })
    });
}
