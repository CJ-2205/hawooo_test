//var imported = document.createElement('script');
//imported.src = 'http://d17m68fovwmgxj.cloudfront.net/js/appier-track-v1.7.js';
//document.head.appendChild(imported);
$(function () {
    $.getScript('http://d17m68fovwmgxj.cloudfront.net/js/appier-track-v1.7.js');
})
//購物車資訊送出
function sendApplierOrder(pList, oID, oPrice) {
    var appierRtIDList = pList;
    var appierRtorderId = oID;
    var appierRtPrice = oPrice;
    var appierDCCurrency = "MYR";
    //========= PLEASE DO NOT CHANGE BELOW =========
    if (typeof (window.APPIER_RETARGET) == 'undefined') {
        (function (w, d, s, m) {
            var f = d.getElementsByTagName('script')[0],
                j = d.createElement('script'),
                ns = 'APPIER_RETARGET';
            w._appierSendQueue = w._appierSendQueue || [];
            w['appierRetargetJson'] = { id: s, site: m };
            j.async = true;
            j.src = '//jscdn.appier.net/aa.js?id=' + m;
            f.parentNode.insertBefore(j, f);
            !w[ns] && (w[ns] = {});
            (!w[ns].send) && (w[ns].send = function (j) {
                w._appierSendQueue.push(j);
            });
        })(window, document, "ZFfm", "hawooo.com");
    }
    Appier.appierTrack("x4CbI0DLH67C4H3", { uu: appierRtorderId, total_revenue: appierRtPrice, currency: appierDCCurrency }, "GffCpKQ1ffGKhI4");
    window.APPIER_RETARGET.send({ "t": "type_purchase", "content": appierRtIDList, "totalvalue": appierRtPrice });
};