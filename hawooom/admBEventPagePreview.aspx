<%@ Page Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="admBEventPagePreview.aspx.cs" Inherits="admBEventPagePreview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/flagship_store_events.min.css" rel="stylesheet" />
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:Literal ID="ltContent" runat="server"></asp:Literal>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js"></script>
    <script>
        function Clip(cid) {
            var clipboard = new ClipboardJS('#' + cid);
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

    <script src="assets/js/swiper.min.js"></script>
    <script src="assets/js/flagship_store_events.js"></script>
    <script src="../jquery-plus/jquery-timer/jquery-timer-min.js"></script>
    <script>
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
                        slidesPerView: 2.3,
                        slidesPerGroup: 2,
                        spaceBetween: 5,

                        pagination: {
                            el: '.swiper-pagination',
                            clickable: true,
                        },
                        navigation: {
                            nextEl: ('.' + next_slider),
                            prevEl: ('.' + prev_slider),
                        },

                    });
                });
            };
        };

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
        }

        function PrefixInteger(num, length) {
            return (Array(length).join('0') + num).slice(-length);
        }
   </script>
</asp:Content>


