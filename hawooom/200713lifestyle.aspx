<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200713lifestyle.aspx.cs" Inherits="mobile_static_200713lifestyle" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%-- <link href="assets/css/200713lifestyle.min.css" rel="stylesheet" />--%>
    <link rel="stylesheet" href="assets/css/events_style.min.css">
    <link rel="stylesheet" href="assets/css/swiper.min.css">
    <style>
        .countdown-txt {
            position: absolute;
            left: 0;
            right: 4%;
            bottom: 54%;
            color: #fff;
            margin: 0;
        }

        @media screen and (min-width: 650px) {
            .countdown-txt {
                font-size: 25px;
            }
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain mb-contain" style="background-color: #0E4A46">
        <%-- <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200713/bn_01m.png" + "?cacheVersion=" + cacheVersion %>' style="width: 100%" />--%>
        <%--  <span class="clock clock-m">
                        <span>01</span>:
                        <span>23</span>:
                        <span>45</span>:
                        <span>67</span>
                    </span>--%>
        <%-- </div>--%>


        <section class="am-margin-bottom-0 am-text-center" style="position: relative;" id="clock1">
            <a>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200713/bn_01m.png" + "?cacheVersion=" + cacheVersion %>' alt="bn_03m" style="width: 100%" />
                <h4 class="countdown-txt"><span></span><%--Sale starts in --%>
                    <%--<%= sale %>--%>
                    <span class="countdown">
                        <span id='d'>0</span>:
                            <span id='h'>0</span>:
                            <span id='m'>0</span>:
                            <span id='s'>0</span>
                    </span>
                </h4>
            </a>
        </section>




        <%--<div class="banner-box am-padding-vertical-sm" style="margin: 0 15%">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200713/bn_02m.png" + "?cacheVersion=" + cacheVersion %>' alt="主banner" style="width: 100%;" />
        </div>--%>
        <%--        <section class="new-arrival-wrapper new-arrival-wrappe1 am-padding-bottom">

            <asp:UpdatePanel runat="server" UpdateMode="conditional">
                <ContentTemplate>
                    <asp:HiddenField ID="hf_pc01" runat="server" ClientIDMode="Static" />
                    <asp:Button ID="btn_get_one_coupon" runat="server" Text="Button" Style="display: none" ClientIDMode="Static" OnClick="btn_get_one_coupon_OnClick" />
                </ContentTemplate>
            </asp:UpdatePanel>
       
            <div class="mb-shop-block" id="logo">
                <ul class="product-item-box am-padding-left-0  am-avg-md-3 am-avg-sm-2">
                    <asp:Repeater ID="rp_plist" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <div class="product-item ">
                                    <a class="product-img" href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>" target="_blank">
                                        <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' />
                                        <div class="already-sold-p">
                                            <%# Eval("SPD07").ToString() %>
                                            <span class="hot-p am-text-center">sold</span>
                                        </div>
                                    </a>
                                    <div class="product-text-box">
                                        <div class="product-item-block">
                                            <h3 class="product-name"><%# Eval("WP02").ToString() %></h3>
                                        </div>
                                        <div class="product-item-block">
                                            <div class="product-price-block am-fl">
                                                <h4 class="product-price am-margin-0"><span>RM <%# Eval("WPA06").ToString() %></span></h4>
                                                <p class="original-price  ">RM <%# Eval("WPA10").ToString() %></p>
                                            </div>
                                            <div class="sele-off am-fr"><span><%# Eval("PERSENT").ToString() %></span></div>
                                        </div>

                                        <div class="product-item-block">
                                            <div class="product-coupon-box am-text-center ">
                                                <div class="product-coupon am-fl" onclick="GetOneCoupon('<%# Eval("PC01") %>');">
                                                    <div class="am-cf coupon-box">
                                                        <div class="am-fl coupon">
                                                            <span>coupon</span>
                                                        </div>
                                                        <div class="am-fl discount">
                                                            <span><%# Eval("COUPON") %></span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-buy-btn am-fr am-u-sm-5">
                                                    <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>" target="_blank" class="buy-btn ">BUY</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
             
            </div>
        </section>--%>
        <%--         <section class="am-margin-bottom" id="s4">
            <div class="am-margin-bottom-sm">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200713/bn_02m.png" %>' alt="bn_09m" />
            </div>
            <div class="am-padding-vertical-sm" style="background: #362E2B;">
                <div class="mb-shop-block" id="logo">
                    <ul class="am-avg-sm-2 am-avg-md-3">
                        <uc1:products runat="server" id="products4" />
                    </ul>
                </div>
            </div>
        </section>--%>
        <%--START--%>
        <div class="am-margin-bottom-sm">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200713/bn_02m.png" %>' alt="bn_09m" />
        </div>
        <section class="am-margin-bottom am-padding-xs" id="s1">

            <div class="mb-shop-block" id="logo">
                <ul class="am-avg-sm-2  am-avg-md-3">
                    <asp:Repeater ID="hb_rp" runat="server" OnItemDataBound="hb_ItemDataBound">
                        <ItemTemplate>
                            <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />

                            <li class="am-fl goods goods-flashsale">
                                <a href='<%# "product.aspx?id="+Eval("WP01")%>'>
                                    <%-- <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>--%>
                                    <div class="goods-top">
                                        <div class="goods-img">
                                            <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                            <div class="goods-discount goods-discount3">
                                                <span class="ribbon">
                                                    <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="goods-bottom">
                                        <%-- <div class="goods-block fire-progress">
                                                <div class="fire-img">
                                                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"/ftp/hw_event/fire.svg"%>' alt="fire" style="width: 20px" />
                                                </div>
                                                <div class="fire-sold">
                                                    sold<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>
                                                </div>
                                                <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                            </div>--%>
                                        <div class="goods-block">
                                            <p class="goods-name"><%# Eval("WP02").ToString() %></p>
                                        </div>
                                        <div class="goods-block">
                                            <h1 class="goods-price">
                                                <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal></h1>
                                            <s class="goods-original-price">
                                                <span>RM
                                                        <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal></span>
                                            </s>
                                        </div>
                                        <div class="goods-block">
                                            <p>
                                                SAVE<span> RM
                                                        <asp:Literal ID="lit_save" runat="server"></asp:Literal></span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>
        <%-- END--%>
        <section class="new-arrival-wrapper new-arrival-wrappe2 am-padding-bottom">
            <div class="banner-box am-padding-vertical-sm" style="margin: 0 15%">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200713/bn_03m.png" + "?cacheVersion=" + cacheVersion %>' alt="主banner" style="width: 100%;" />
            </div>
            <%--<div>
                <ul class="product-item-box am-padding-left-0  am-avg-md-3 am-avg-sm-2">
                    <uc1:products runat="server" id="products1" />
                </ul>
            </div>--%>
            <div class="am-margin-bottom-lg" id="comming-event-beauty">
                <a href="" target="_blank">
                    <img src="" alt="comming-event-beauty" />
                </a>
            </div>
            <div class="am-margin-bottom-lg" id="comming-event-supplement">
                <a href="" target="_blank">
                    <img src="" alt="comming-event-supplement" />
                </a>
            </div>
        </section>
        <%--terms and conditions--%>
        <div class="am-padding activity-method" style="background: black;" id="s5">
            <div class="am-container">
                <p>
                    Terms & Conditions<br>
                   1. Promotion Date : 13th July 2020 12:00 - 15th July 2020 23:59
                </p>
                
                <p class="am-margin-top-0">
                   2. Promotion:
                </p>
                <p class="am-margin-top-0 am-padding-left">
                     - Extra 12% OFF with min.spend RM66 for selected brands & items
                </p>
                 <p class="am-margin-top-0">
                   3. Promotion are applicable on selected brands, including 1838 Eurocares (lifestyle items), 
                     Sofei, Saholea, Beaulace, Check2Check  (lifestyle items), Enjoy the life, Hibis  (lifestyle items), 
                     Arin  (lifestyle items), Anriea  (lifestyle items), Chef Clean, Chitico, sNug, SHCJ, Realwoman (lifestyle items), 
                     Hinoki Life, Dawoko, MCG, Yas, iFresh, KuaiChe, Lomoji, Laomanoodle, OkTea
                </p>
                <p class="am-margin-top-0">
                    4. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Lifestyle & Food Festival terms from time to time, and in such manner as Hawooo deems appropriate.
                </p>

            </div>
        </div>
        <%--terms and conditions--%>
    </div>


    <script src="assets/js/swiper.min.js"> </script>
    <script src="assets/js/events.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".swiper-container li").addClass("am-fl swiper-slide");
            // load �����@�ε��c
            let totalLoad = $('.include').length;
            let loadIndex = 0;
            if (totalLoad == 0) {
                initScript();
            }
            $('.include').each(function () {
                $(this).load($(this).data('file'), function () {
                    $(this).children().first().unwrap(); // remove the ha-include div
                    loadIndex++;
                    if (loadIndex == totalLoad) {
                        //�@�ε��c���J���A�}�l���歶���ۤv����l��
                        initScript();
                    }
                });
            });
        });


        function initScript() {
            // for (i = 0; i < 11; i++) {
            //   duplicate('logo');
            // }
            set1Img1Brand('20200713', [334, 180, 457, 301, 312, 407, 328, 440, 115, 64, 271, 32, 156, 54, 116, 11, 410, 331, 27, 359, 360, 62, 29, 131], 0, '1');
            hiddenFooterMenu();
            displaycommingEvents();

            //function duplicate(id) {
            //    var ul = $("#" + id + " ul");
            //    ul.find("li:last")
            //        .clone(true)
            //        .appendTo(ul);
            //}
        }
        // Example usage: putBrandImg('20200618', [307, 287, 180, 235, 334, 432, 203, 72, 297, 407, 283, 316])

        function set1Img1Brand(eventName = '', brandNo = [], indexShift = 0, cacheVersion = 1) {
            // For testing purpose only:
            //let  brandNo = [307, 287, 180, 235, 334, 432, 203, 72, 297, 407, 283, 316];
            // Don't use "https://www.hawooo.com/user/brands.aspx?bid=" anymore, use "https://www.hawooo.com/user/brandeventpage.aspx?bid=" instead:
            let brandLinkPfx = "https://www.hawooo.com/user/brandeventpage.aspx?bid=";
            let cdnImgPfx = '<%= ConfigurationManager.AppSettings["imgUrl"] %>' || 'errorCdnImgPfx';

            for (i = 0; i < brandNo.length; i++) {
                let prependDOMStr = `<a class="brand-logo-wrapping-anchor" href="${brandLinkPfx}${brandNo[i]}" target="_blank">
      <div class="brand-logo">
        <img data-sizes="auto" src="${cdnImgPfx}ftp/${eventName}/logo_${paddingLeft("" + (i + 1 + indexShift) + "", 2)}.png?cacheVersion=${cacheVersion}">
      </div>
    </a>`;
                // So img src will be something like "https://p8r7m4d5.stackpathcdn.com/images/ftp/20200618/logo_02.png":

                $('#logo li').eq(i).prepend(prependDOMStr);
                $('#logo li a:not(.brand-logo-wrapping-anchor)').eq(i).attr({
                    "href": `${brandLinkPfx}${brandNo[i]}`,
                    "target": "_blank"
                });
            }
        }
        /* Used by putBrandImg() */
        function paddingLeft(str, lenght) {
            debugger;
            if (str.length >= lenght)
                return str;
            else
                return paddingLeft("0" + str, lenght);
        };



        function GetOneCoupon(pc01) {
            $("#hf_pc01").val(pc01);
            $("#btn_get_one_coupon").click();
        }

        // Dislay events only when current date (time) is within the event's valid date rage.
        function displaycommingEvents(cacheVersion = 1) {
            let cdnImgPfx = '<%= ConfigurationManager.AppSettings["imgUrl"] %>';
            let events = [
                {
                    id: "#comming-event-beauty",
                    href: "https://www.hawooo.com/mobile/200709beauty_sale.aspx",
                    // Wrong date (should be "20200710"), but let's keep it wrong.
                    eventName: "20200710",
                    imgUrl: "beauty_01m.png",
                    dateStart: '2020-07-09T12:00:00',
                    dateEnd: '2020-12-31T23:59:59',
                },
                {
                    id: "#comming-event-supplement",
                    href: "https://www.hawooo.com/mobile/200710supplement.aspx",
                    eventName: "20200710",
                    imgUrl: "supplement_01m.png",
                    dateStart: '2020-07-10T12:00:00',
                    dateEnd: '2020-12-31T23:59:59',
                },
                //{
                //    id: "#comming-event-lifestyle",
                //    href: "https://www.hawooo.com/user/200713lifestyle.aspx",
                //    imgUrl: "lifestyle_01.png",
                //    eventName: "20200713",
                //    dateStart: '2020-07-13T12:00:00',
                //    dateEnd: '2020-12-31T23:59:59',
                //},
            ];

            events.forEach((item, idx) => {
                let dateStart = new Date(item.dateStart);
                let dateEnd = new Date(item.dateEnd)
                var dateNow = new Date();
                if (dateNow > dateStart && dateNow < dateEnd) {
                    $(item.id).eq(0).css("display", "block");
                    $(item.id + " img").eq(0).attr("src", `${cdnImgPfx}ftp/${item.eventName}/${item.imgUrl}?cacheVersion=${cacheVersion}`);
                    $(item.id + " img").eq(0).css("display", "inline-block");
                    $(item.id + " a").eq(0).attr("href", item.href);
                } else {
                    $(item.id).eq(0).css("display", "none");
                }
            });
        }
    </script>
    <%--clock--%>
    <script src="../jquery-plus/jquery-timer/jquery-timer-min.js"></script>

    <script>
                    function setTime(spendtime) {

                        $(".countdown").everyTime('1s',
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

                    function GetQty(selectItem) {

                        var itemID = selectItem.value;
                        var qty = itemID.split("#")[1];
                        var ddlQty = selectItem.parentNode.parentNode.children[1].children[0];
                        $(ddlQty).empty();
                        for (var i = 1; i <= qty; i++) {
                            var o = new Option(i, i);
                            $(ddlQty).append(o);
                        }
                    };

                    function PrefixInteger(num, length) {
                        return (Array(length).join('0') + num).slice(-length);
                    }
    </script>
</asp:Content>

