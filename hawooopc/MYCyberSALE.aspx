<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="mycybersale.aspx.cs" Inherits="user_static_mycybersale" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/mycybersale.min.css" rel="stylesheet" />
    <link href="assets/css/animate.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-g  main-contain">

        <%--=====================Top Banner Start ==========================--%>
        <div class="banner-box top-banner">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/bn_01.png" %>' alt="主banner" style="width: 100%;" />
        </div>
        <%--=====================Top Banner End==========================--%>
        <%--=====================領取折扣券 Start==========================--%>

        <div class="coupon">
            <ul class="am-avg-sm-3">
                <li>
                    <a id="coupon1" data-clipboard-text="MYCYBER20" onclick="Clip('coupon1');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/coupon_01.png" %>' alt="coupon1" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a id="coupon2" data-clipboard-text="MYCYBER40" onclick="Clip('coupon2');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/coupon_02.png" %>' alt="coupon2" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/reg_03.png" %>' alt="登記" style="width: 100%;" />
                    </a>
                </li>
            </ul>
        </div>

        <%--=====================領取折扣券 End==========================--%>
        <div class="am-container" id="main">
            <%--====================flashsale Start==========================--%>
            <div id="none" class="banner-box  am-text-center am-padding-top-lg am-margin-top-lg wow bounceIn" data-wow-delay="1s">
                <a href="2019cybersalepreorder.aspx" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/bn_02.png" %>' alt="Banner" style="width: 100%;" id="Fsbanner"/>
                </a>
                <div class="clock am-text-center">
                    <span id="content" style="font-size: 22px; font-weight: bold"></span>
                    <span id='h'></span>:
                    <span id='m'></span>:
                    <span id='s'></span>:
                    <span id='ms'></span>
                </div>
            </div>
            <%--====================flashsale End==========================--%>

            <%--=====================shop-block-wrap1===Hot Deal Start================================--%>
            <section class="shop-block-wrap  shop-block-wrap1 am-padding-top-lg am-margin-top-lg wow bounceIn" data-wow-delay="1s">
                <div class="banner-box banner-box1 am-text-center">
                    <a href="hot_deal.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/bn_03.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>

                <div class="shop-block shop-block1 shop-theme  am-padding">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products1" />
                    </ul>
                </div>
                <div class="see-more-btn">
                    <a href="hot_deal.aspx" target="_blank">
                        <div class="banner-box-img ">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/enter_02.png" %>' alt="Banner" style="width: 100%;" />
                        </div>
                    </a>
                </div>
            </section>


            <%--=======================shop-block-wrap1===Hot Deal End============================--%>

            <%--=======================shop-block-wrap2===Supreme Brand Start===============================--%>

            <section class="am-padding-top-lg am-margin-top-lg  shop-block-wrap shop-block-wrap2 wow bounceIn" data-wow-delay="1s">
                <div class="brands-border">
                    <div class="banner-box">
                        <div class="banner-box-img">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/bn_04.png" %>' alt="Selected brands" style="width: 100%;" />
                        </div>
                    </div>

                    <div class="shop-block shop-block2">
                        <ul class="am-padding-0 am-margin-0 am-avg-sm-4">
                            <asp:Repeater ID="rpBrand" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl hvr-float2">
                                        <div class="hot-brand-item">
                                            <a href='<%#Eval("_url") %>' target="_blank">
                                                <div class="brand-pic">
                                                    <img data-sizes="auto" src='<%#Eval("_img") %>'>
                                                </div>
                                                <div class="brand-logo">
                                                    <img class=" am-center" data-sizes="auto" src='<%#Eval("_logo") %>'>
                                                </div>
                                                <div class="brand-info">
                                                    <h5><%#Eval("_name") %></h5>
                                                    <span><%#Eval("_title") %></span>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
            </section>
            <%--============================== shop-block-wrap2=== 品牌Logo   End ===============================--%>


            <%--=========================shop-block-wrap3====beauty_stall  Start ===============================--%>
            <section class="am-padding-top-lg am-margin-top-lg shop-block-wrap  shop-block-wrap3   wow bounceIn" data-wow-delay="1s">
                <div class="banner-box banner-box5 am-text-center">
                    <a href="beauty_stall.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/bn_05.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>

                <div class="shop-block shop-theme  am-padding" id="product-make3">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products2" />
                    </ul>
                </div>
                <div class="see-more-btn">
                    <a href="beauty_stall.aspx" target="_blank">
                        <div class="banner-box-img ">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/enter_02.png" %>' alt="see more btn" style="width: 100%;" />
                        </div>
                    </a>
                </div>
            </section>

            <%--==============================shop-block-wrap3==== Beauty  End ===============================--%>


            <%--==========================shop-block-wrap4===Supplement Start====================================--%>
            <section class=" shop-block-wrap  shop-block-wrap4  am-padding-top-lg am-margin-top-lg wow  bounceIn" data-wow-delay="1s">
                <div class="banner-box banner-box1 am-text-center">
                    <a href="supplement_stall.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/bn_06.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>

                <div class="shop-block shop-theme  am-padding">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products3" />
                    </ul>
                </div>
                <div class="see-more-btn">
                    <a href="supplement_stall.aspx" target="_blank">
                        <div class="banner-box-img ">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/enter_02.png" %>' alt="see more btn" style="width: 100%;" />
                        </div>
                    </a>
                </div>
            </section>
            <%--==========================shop-block-wrap4===Supplement End====================================--%>

            <%--==========================shop-block-wrap5===Life Start====================================--%>
            <section class=" shop-block-wrap  shop-block-wrap5  am-padding-top-lg am-margin-top-lg  wow bounceIn" data-wow-delay="1s">
                <div class="banner-box banner-box1 am-text-center">
                    <a href="lifestyle.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/bn_07.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>

                <div class="shop-block shop-theme  am-padding">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products4" />
                    </ul>
                </div>
                <div class="see-more-btn">
                    <a href="lifestyle.aspx" target="_blank">
                        <div class="banner-box-img ">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/enter_02.png" %>' alt="see more btn" style="width: 100%;" />
                        </div>
                    </a>
                </div>
            </section>
            <%--==========================shop-block-wrap5===Life End====================================--%>

            <%--==========================shop-block-wrap6===Fashion Start====================================--%>
            <section class="shop-block-wrap  shop-block-wrap6  wow  bounceIn  am-padding-vertical-lg am-margin-vertical-lg" data-wow-delay="1s">
                <div class="banner-box banner-box1 am-text-center">
                    <a href="fashion.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/bn_08.png" %>' alt="Banner" style="width: 100%;" />
                    </a>
                </div>

                <div class="shop-block  shop-theme  am-padding" id="product-make5">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products5" />
                    </ul>
                </div>
                <div class="see-more-btn">
                    <a href="fashion.aspx" target="_blank">
                        <div class="banner-box-img ">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/enter_02.png" %>' alt="see more btn" style="width: 100%;" />
                        </div>
                    </a>
                </div>
            </section>
            <%--==========================shop-block-wrap6==Fashion End====================================--%>

            <%--==============================活動辦法 Start =====================================--%>
        </div>

        <footer class="activity-method">
            <p class="activity-method-p am-margin-0 am-container">
                Terms & Conditions  
                <br />
                Hawooo Mycyber Sale<br />
                1. Promotion date : 27th September 2019 - 6th October 2019 
                <br />
                2. Use Code【MYCYBER20】for EXTRA RM20 OFF (min spend 170)；Use Code【MYCYBER40】for EXTRA RM40 OFF (min spend 380)
                <br />
                3. Coupon is NOT APPLICABLE on Flash Sale items.
                <br />
                4. Coupon is APPLICABLE on selected Flagship Stores , including Anriea, LOVING FAMILY, ROOTFOCUS, Newart, Deseno, MOOIMOM, LALER, CHOYER, HSU’S, HH, DV, PARADISO GARDEN, ZEPHYRINE, Naturero, Grandmotherapy, Life8.
                <br />
                5. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Hawooo Mycyber Sale Terms from time to time, and in such manner as Hawooo deems appropriate. 
            </p>
        </footer>
        <%--==============================活動辦法 End=====================================--%>
    </div>
    <%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>--%>
    <script src="assets/js/wow.min.js"></script>
    <script type="text/javascript">


        var wow = new WOW(
            {
                boxClass: 'wow',      // 要套用WOW.js縮需要的動畫class(預設是wow)
                animateClass: 'animated', // 要"動起來"的動畫(預設是animated, 因此如果你有其他動畫library要使用也可以在這裡調整)
                offset: 0,          // 距離顯示多遠開始顯示動畫 (預設是0, 因此捲動到顯示時才出現動畫)
                mobile: true,       // 手機上是否要套用動畫 (預設是true)
                live: true,       // 非同步產生的內容是否也要套用 (預設是true, 非常適合搭配SPA)
                callback: function (box) {
                    // 當每個要開始時, 呼叫這裡面的內容, 參數是要開始進行動畫特效的element DOM
                },
                scrollContainer: null // 可以設定成只套用在某個container中捲動才呈現, 不設定就是整個視窗
            }
        );
        wow.init();


        $(function () {
            $("#main li").attr("class", "am-fl hvr-float2 am-padding-sm");
        });
    </script>
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
    <script src="../jquery-plus/jquery-timer/jquery-timer-min.js"></script>
    <script>
        function setTime(spendtime) {

            $(".clock").everyTime('0.1s',
                function (i) {
                    //spendtime--; //總共秒數


                    spendtime = spendtime - 0.1; //總共秒數

                    //var d = Math.floor(spendtime / (24 * 3600));
                    //d = PrefixInteger(d, 2);
                    var h = Math.floor((spendtime % (24 * 3600 * 3600)) / 3600);
                    h = PrefixInteger(h, 3);
                    var m = Math.floor((spendtime % 3600) / (60));
                    m = PrefixInteger(m, 2);
                    var s = Math.floor(spendtime % 60);
                    s = PrefixInteger(s, 2);
                    var ms = Math.floor((spendtime * 10 % 10));
                    ms = PrefixInteger(ms, 1);


                    if (spendtime > 0) {
                        //$("#d").text(d);
                        $("#h").text(h);
                        $("#m").text(m);
                        $("#s").text(s);
                        $("#ms").text(ms);
                    } else { // 避免倒數變成負的
                        //$("#d").text(0);
                        $("#h").text(0);
                        $("#m").text(0);
                        $("#s").text(0);
                        $("#ms").text(ms);
                    }
                });
        }

        function PrefixInteger(num, length) {
            return (Array(length).join('0') + num).slice(-length);
        }

        $(function () {
            var date1 = new Date("2019-10-02T00:00:00");
            var date2 = new Date("2019-10-04T00:00:00");
            var dateNow = new Date();
            if (dateNow < date1) {
                $('#content').text('pre-order ending：');
                $('#Fsbanner').attr('src', '<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/bn_02.png" %>')

            };
            if ((dateNow < date2 && dateNow > date1)) {
                $('#content').text('ending：');
                $('#Fsbanner').attr('src', '<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190927/bn_02c.png" %>')
                $('.clock').css('top','50%')

            }
        });

        $(function () {
            var date3 = new Date("2019-10-04T00:00:00");
            var dateNow = new Date();
            if (dateNow > date3) {
                $('#none').css("display", "none");
                $('#none .clock').remove();
            };
        });
    </script>

</asp:Content>

