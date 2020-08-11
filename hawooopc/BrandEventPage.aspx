<%@ Page Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="BrandEventPage.aspx.cs" Inherits="BrandEventPage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/flagship_store_events.min.css" rel="stylesheet" />
    <link href="assets/css/swiper.min.css" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <asp:Literal ID="ltContent" runat="server"></asp:Literal>


    <script src="assets/js/swiper.min.js"></script>
    <script src="assets/js/flagship_store_events.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js"></script>
    <script>
        function copyCoupon(obj) {
            var clipboard = new ClipboardJS("#"+obj.id);
            debugger;
            clipboard.on('success',
                function (e) {
                    console.info('Action:', e.action);
                    console.info('Text:', e.text);
                    console.info('Trigger:', e.trigger);
                    e.clearSelection();
                    alert('Copy completed');
                });
            clipboard.on('error',
                function (e) {
                    console.error('Action:', e.action);
                    console.error('Trigger:', e.trigger);
                });
        }
    </script>
    <script>
        function clickCoupon(eventId) {
            var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
            if (u == null) {
                console.log('null');
                $(this).attr("href", "#!")
                $(this).click(function () {
                    location.href = 'login.aspx?rurl=' + window.location.href;
                });
            } else {
                console.log('not null');
                var val = "{'userId':'" + u + "','eventId':'" + eventId + "'}";
                debugger;
                $.ajax({
                    type: "POST",
                    url: "BrandEventPage.aspx/GetCouponInfo",
                    data: val,
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (msg) {
                        var rmsg = JSON.parse(msg.d)[0].rmsg;
                        var status = JSON.parse(msg.d)[0].status
                        console.log(status);
                        if (status == "True")
                            alert2url(rmsg, window.location.href);
                        else
                            alert(rmsg);

                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert('Ajax ERROR');
                    }
                });

            };
        };
    </script>
    <script src="../jquery-plus/jquery-timer/jquery-timer-min.js"></script>
    <script>
        function setTime(spendtime) {

            $(".countdown-time").everyTime('1s',
                function (i) {
                    spendtime--;
                    var d = Math.floor(spendtime / (24 * 3600));
                    d = PrefixInteger(d, 2);
                    var h = Math.floor((spendtime % (24 * 3600)) / 3600);
                    h = PrefixInteger(h, 2);
                    var m = Math.floor((spendtime % 3600) / (60));
                    m = PrefixInteger(m, 2);
                    var s = Math.floor(spendtime % 60);
                    s = PrefixInteger(s, 2);
                    if (spendtime > 0) {
                        $("#d").text(d);
                        $("#h").text(h);
                        $("#m").text(m);
                        $("#s").text(s);
                    } else { // 避免倒數變成負的
                        $("#d").text(0);
                        $("#h").text(0);
                        $("#m").text(0);
                        $("#s").text(0);
                    }
                });
        };

        function PrefixInteger(num, length) {
            return (Array(length).join('0') + num).slice(-length);
        };
   </script>
</asp:Content>
