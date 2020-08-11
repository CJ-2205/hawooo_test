function alert(msg) {
    $("#alert-msg").html(msg);
    $("#my-alert").css("z-index", 9999);
    $("#my-alert").modal('open');
};

function alert2url(msg, url) {
    $("#alert-msg").html(msg);
    $("#my-alert").css("z-index", 9999);
    $("#my-alert").modal({
        relatedTarget: this,
        closeViaDimmer: false,
        onConfirm: function (options) {
            location.href = url;
        }
    });
};

function confirm2url(msg, url) {
    $("#confirm-msg").html(msg);
    $("#my-confirm").css("z-index", 9999);
    $('#my-confirm').modal({
        relatedTarget: this,
        closeViaDimmer: false,
        onConfirm: function (options) {
            location.href = url;
        },
        onCancel: function () {
            $("#my-confirm").modal('close');
        }
    });
};

function rotateTimeOut() {
    $('#rotate').rotate({
        angle: 0,
        animateTo: 2160,
        duration: 8000,

        callback: function () {
            alert('网络超时，请检查您的网络设置！');
        }
    });
};



