<%@ Control Language="C#" AutoEventWireup="true" CodeFile="productdetail.ascx.cs"
    Inherits="user_control_productdetail" %>
<%@ Register Src="~/user/control/recommend_product.ascx" TagPrefix="uc1" TagName="recommend_product" %>
<div class="am-g" style="padding-top: 10px; max-width: 1160px">
    <script>
        function sendProductDetail(pID, pType, pTitle, imgUrl, pUrl, pPrice, pSalePrice) {

            var appierRtItemId = pID;
            var appierDCAvail = pType;
            var appierDCItemTitle = pTitle;
            var appierDCItemPicUrl = imgUrl;
            var appierDCItemUrl = pUrl;
            var appierDCRetailPrice = pPrice;
            var appierDCCurrentPrice = pSalePrice;
            var appierDCCurrency = 'MYR';
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
            window.APPIER_RETARGET.send({ 't': 'type_product', 'content': appierRtItemId });
            window.appier_tag_params = {
                "ProductID": appierRtItemId,
                "Title": appierDCItemTitle,
                "Image": appierDCItemPicUrl,
                "URL": appierDCItemUrl,
                "RetailPrice": appierDCRetailPrice,
                "CurrentPrice": appierDCCurrentPrice,
                "Currency": appierDCCurrency,
                "Availability": appierDCAvail
            };
        }
    </script>
    <script src="//d17m68fovwmgxj.cloudfront.net/js/appier-track-v1.7.js"></script>
    <script>
        function appierAddToCart(pID) {
            var appierRtCartList = pID;
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
            window.APPIER_RETARGET.send({ 't': 'type_addcart', 'content': appierRtCartList });
        };
    </script>

    <!--類別列表開始-->
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    <!--類別列表結束-->
    <div style="padding-bottom: 20px; background-color: #ffffff; padding: 5px;" id="pdetail"
        runat="server">
        <div class="am-g">
            <div id="class_title" class="am-panel product_list_title boxshadow">
                <div class="am-u-md-9">
                    <ol class="am-breadcrumb">
                        <asp:Literal ID="lit_class" runat="server"></asp:Literal>
                    </ol>
                </div>
            </div>
            <div class="am-u-md-6">
                <div class="am-u-md-12">
                    <asp:HiddenField ID="hf_WP08_1" runat="server" EnableViewState="false" />
                    <asp:Image ID="mimg" runat="server" CssClass="am-img-responsive" Width="400" ClientIDMode="Static" />
                </div>
                <div class="am-u-md-12">
                    <ul id="img_list" class="am-avg-md-5 am-avg-sm-5 am-gallery-bordered product">
                        <asp:Literal ID="lit_img_group" runat="server"></asp:Literal>
                    </ul>
                </div>
                <!--圖片切換-->
                <script>
                    $(function () {
                        $("#img_list li").each(function () {
                            $(this).click(function () {
                                $("#mimg").attr("src", $(this).find('img').attr("src"));
                            })
                        });
                    })
                </script>
                <div class="am-u-md-12">
                    <asp:Repeater ID="rp_gift_event" runat="server">
                        <HeaderTemplate>
                            <div class="premiumsTitle">
                                <p>
                                    <span style="font-size: 16px; font-weight: bold;">滿額贈品</span>
                                </p>
                            </div>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <div class="premiumsBox" style="height: auto;">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:HiddenField ID="hf_GE01" runat="server" Value='<%# Eval("GE01") %>' EnableViewState="false" />
                                            <img src='<%# "../images/giftimgs/" + Eval("GP10") %>' style="height: 80px; width: 80px;">
                                        </td>
                                        <td>
                                            <p style="padding-top: 10px;">
                                                活動名稱：<asp:Literal ID="lit_GE10" runat="server" Text='<%# Eval("GE10") %>'></asp:Literal>
                                            </p>
                                            <p>
                                                贈品：<asp:Literal ID="lit_GP02" runat="server" Text='<%# Eval("GP02") %>'></asp:Literal>
                                            </p>
                                            <p>
                                                滿額：<span style="color: #ff0000">RM<asp:Literal ID="lit_GE02" runat="server" Text='<%# Eval("GE02") %>'></asp:Literal></span>
                                                <asp:Literal ID="lit_non_price" runat="server"></asp:Literal>
                                            </p>
                                            <p style="line-height: 20px; color: #5F5F5F; padding-bottom: 20px">
                                                活動說明：<asp:Literal ID="lit_GE11" runat="server" Text='<%# Eval("GE11") %>'></asp:Literal>
                                            </p>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <div class="am-u-md-6" style="padding: 0px 5px 15px 5px">
                <asp:HiddenField ID="hf_WP01" runat="server" EnableViewState="false" />
                <asp:HiddenField ID="hf_WP06" runat="server" EnableViewState="false" />
                <asp:HiddenField ID="hf_WP28" runat="server" EnableViewState="false" />
                <asp:HiddenField ID="hf_WP29" runat="server" EnableViewState="false" />
                <asp:HiddenField ID="hf_WP31" runat="server" EnableViewState="false" />
                <asp:HiddenField ID="hf_WP32" runat="server" EnableViewState="false" />
                <asp:Panel ID="panel_brand" runat="server">
                    <div style="padding-left: 10px; padding-bottom: 5px; font-size: 14px">
                        品牌：<asp:Literal ID="lit_B01" runat="server"></asp:Literal>
                    </div>
                </asp:Panel>
                <div class="detail_title" style="color: #636363; padding-left: 10px; font-size: 20px; font-weight: 800">
                    <asp:Literal ID="lit_WP02" runat="server"></asp:Literal>
                    <asp:Literal ID="lit_shipment_tag" runat="server"></asp:Literal>
                </div>
                <div style="padding: 10px">
                    <asp:Literal ID="lit_WP21" runat="server"></asp:Literal>
                    <asp:Literal ID="lit_WP33_WP34" runat="server"></asp:Literal>
                </div>
                <hr data-am-widget="divider" style="" class="am-divider am-divider-default" />
                <asp:UpdatePanel ID="up_type" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="detail_from_info">
                            <table style="color: #7c7c7c; font-size: 18px; color: #737373">
                                <tr>
                                    <td>
                                        <span class="txtRsc" data-id="pd004">選擇</span>：
                                    </td>
                                    <td>
                                        <asp:HiddenField ID="hf_WPA04" runat="server" />
                                        <asp:DropDownList ID="ddl_WPA02" runat="server" Width="220px" Height="30px" AutoPostBack="true"
                                            OnSelectedIndexChanged="ddl_WPA02_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </td>
                                    <td style="padding-left: 15px">
                                        <span class="txtRsc" data-id="pd005">數量</span>：
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddl_D10" runat="server" Width="70px" Height="30px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="detail_from_info" style="font-size: 14px; color: #ff0000">
                            <asp:Literal ID="lit_booking_info" runat="server"></asp:Literal>
                        </div>
                        <hr data-am-widget="divider" class="am-divider am-divider-default" />
                        <div class="detail_price" style="height: 30px">
                            <span class="am-u-sm-12">
                                <span class="txtRsc" data-id="pd009">售價</span>：
                                <span style="font-size: 28px">RM
                                <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal></span> <span style="text-decoration: line-through; color: #808080">
                                    <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal></span> <span><a href="http://www.facebook.com/sharer.php?u=<%= Page.Request.Url.OriginalString.ToString() %>"
                                        onclick="window.open(this.href, 'windowName', 'width=550, height=600, left=24, top=24, scrollbars, resizable'); return false;"
                                        rel="nofollow" target="_blank">
                                        <img src="icon/fb-icon.png" style="width: 28px" />
                                    </a>
                                        <asp:LinkButton ID="LinkButton1" runat="server" Style="font-size: 16px;" OnClick="lnk_add_track_Click">&nbsp;<img src="icon/s-icon.png"  style="width:28px" /></asp:LinkButton>
                                    </span>
                            </span>
                        </div>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="ddl_WPA02" EventName="SelectedIndexChanged" />
                    </Triggers>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpOperating" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="detail_button" style="margin-top: 10px; margin-bottom: 20px">
                            <hr data-am-widget="divider" class="am-divider am-divider-default" />
                            <br />
                            <asp:LinkButton ID="lnk_buy_now" runat="server" CssClass="btn btn-red" Style="font-size: 18px; font-weight: 600; width: 180px"
                                OnClick="lnk_buy_now_Click"><i class="am-icon-bolt"></i>&nbsp;BUY NOW</asp:LinkButton>
                            <asp:LinkButton ID="lnk_add_cart" runat="server" CssClass="btn" Style="font-size: 18px; font-weight: 600; width: 180px"
                                OnClick="lnk_add_cart_Click"><i class="am-icon-cart-plus"></i>&nbsp;ADD TO CART</asp:LinkButton>
                        </div>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="lnk_buy_now" EventName="Click" />
                        <asp:AsyncPostBackTrigger ControlID="lnk_add_cart" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
                <%-- <div class="am-u-sm-12">
                    <div class="am-u-sm-12" style="padding: 0px">
                        <ul class="shareBox">
                            <li class="facebook_share"><a href="http://www.facebook.com/sharer.php?u=<%= Page.Request.Url.OriginalString.ToString() %>"
                                onclick="window.open(this.href, 'windowName', 'width=550, height=600, left=24, top=24, scrollbars, resizable'); return false;"
                                rel="nofollow" target="_blank"><i class="fa fa-facebook"></i><span>Facebook</span>
                            </a></li>
                            <li class="twitter_share"><a class="twitter_share" href="http://twitter.com/share?url=<%= Page.Request.Url.OriginalString.ToString() %>"
                                onclick="window.open(this.href, 'windowName', 'width=550, height=600, left=24, top=24, scrollbars, resizable'); return false;"
                                rel="nofollow" target="_blank"><i class="fa fa-twitter"></i><span>Twitter</span>
                            </a></li>
                            <li class="google_share"><a class="google_share" href="https://plus.google.com/share?url=<%= Page.Request.Url.OriginalString.ToString() %>"
                                onclick="window.open(this.href, 'windowName', 'width=550, height=600, left=24, top=24, scrollbars, resizable'); return false;"
                                rel="nofollow" target="_blank"><i class="fa fa-google-plus"></i><span>Google+</span></a>
                            </li>
                            <li>
                                <asp:UpdatePanel ID="up_track" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <asp:LinkButton ID="lnk_add_track" runat="server" Style="font-size: 16px;" OnClick="lnk_add_track_Click">&nbsp;<i class="am-icon-heart"></i>追蹤</asp:LinkButton>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="lnk_add_track" EventName="Click" />
                                        
                                    </Triggers>
                                </asp:UpdatePanel>
                            </li>
                        </ul>
                    </div>
                </div>--%>
                <%-- <span style="color: #808080">|</span>&nbsp;
                                <asp:LinkButton ID="lnk_bulletin" runat="server" Style="font-size: 14px;"><i class="am-icon-envelope-o"></i> 買貴通報</asp:LinkButton>--%>
                <%-- <script type="text/javascript">
                    var sUrl = window.location;
                    document.getElementById('fb').setAttribute('href', sUrl);
                </script>--%>
                <%--<div class="detail_event" style="background-color: #29ABB3; margin-top: 10px; padding-left: 20px; color: #FFF; font-size: 16px;">
                        消費三千元免運費
                    </div>--%>
            </div>
            <div class="am-u-md-12" style="padding: 0px; margin-top: 10px;">
                <div data-am-widget="tabs" class="am-tabs am-tabs-default">
                    <ul class="am-tabs-nav am-nav am-nav-tabs">
                        <li class="am-active"><a href="[data-tab-panel-0]">商品資訊(Product Info)</a> </li>
                        <li class=""><a href="[data-tab-panel-1]">運送/保固/退換貨(After sales)</a> </li>
                        <%-- <li class="">
                                <a href="[data-tab-panel-2]">評價(Evaluation)</a>
                            </li>--%>
                    </ul>
                    <style>
                        #relatedInfo {
                            width: 800px;
                            padding-bottom: 50px;
                        }

                            #relatedInfo .line {
                                line-height: 30px;
                                clear: both;
                            }

                                #relatedInfo .line .left {
                                    float: left;
                                    margin: 4px 4px 4px 0px;
                                    width: 205px;
                                    background-color: #AD969C;
                                    color: #FFF;
                                    text-align: center;
                                }
                    </style>
                    <div class="am-tabs-bd" data-am-tabs="{noSwipe: 1}">
                        <div data-tab-panel-0 class="am-tab-panel am-active" style="text-align: center">
                            <asp:Literal ID="lit_product_detail" runat="server"></asp:Literal>
                        </div>
                        <div data-tab-panel-1 class="am-tab-panel">
                            <div style="margin-left: 50px">
                                <table class="after-sals am-u-sm-9 am-u-sm-centered" style="line-height: 50px" id="zhnote" runat="server">
                                    <tr>
                                        <td class="am-u-sm-2 p-0">送貨範圍：</td>
                                        <td class="am-u-sm-10 p-0">HaWooo.com 商品配送區域限馬來西亞。</td>
                                    </tr>
                                    <tr>
                                        <td class="am-u-sm-2 p-0">到貨天數：</td>
                                        <td class="am-u-sm-10 p-0">好物市集：商品訂單成立後約 3-10 個工作天送達。
                                        <br>
                                            限時團購：商品訂單成立後約 5-15個工作天送達。
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="am-u-sm-2 p-0">換貨說明：</td>
                                        <td class="am-u-sm-10 p-0">若您收到的商品有瑕疵、破損等問題，請於收到貨後7天內，至「會員中心 > 訂單管理 > 退換貨申請」填寫表單，或們會盡快幫您處理。換貨標準請參照 <a href="#">退貨條款</a>。</td>
                                    </tr>
                                    <tr>
                                        <td class="am-u-sm-2 p-0">退貨說明：</td>
                                        <td class="am-u-sm-10 p-0">至「會員中心 > 訂單管理 > 退換貨申請」填寫表單，退貨標準請參照 <a href="#">退貨條款</a>。當我們收到您退回的商品時，退款將存入您HaWooo.com的帳戶(如運費需買方負責，將直接於退款扣除)，您可於下次消費使用。</td>
                                    </tr>
                                </table>
                                <table class="after-sals am-u-sm-9 am-u-sm-centered" style="line-height: 50px" id="ennote" runat="server">
                                    <tr>
                                        <td class="am-u-sm-2 p-0">Delivery Area：</td>
                                        <td class="am-u-sm-10 p-0">HaWooo.com Malaysia goods distribution area.</td>
                                    </tr>
                                    <tr>
                                        <td class="am-u-sm-2 p-0">Arrival Time ：</td>
                                        <td class="am-u-sm-10 p-0">Hawooo Market：Estimate 3 to 10 working days delivery after order confirmation.
                                     
                                        <br>
                                            Time-limited Group buying：Estimate 5 to 15 working days delivery after order confirmation.
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="am-u-sm-2 p-0">Good exchange policy：</td>
                                        <td class="am-u-sm-10 p-0">If you receive defective, damaged goods, please in within 7 days after receipt of the goods.Please Log in, go into「Order manage > fill out for “Exchang and Return application form」. We will help you with it as soon as possible.Please refer replacement standard.<a href="#">Return Policy</a>。</td>
                                    </tr>
                                    <tr>
                                        <td class="am-u-sm-2 p-0">Good return instructions：</td>
                                        <td class="am-u-sm-10 p-0">Go into「Order manage > fill out for “Exchang and Return application form」Please refer replacement standard<a href="#"> Return Policy</a>。When we received your return of goods, a refund will be deposited into your HaWooo.com account (such as responsible for freight need to buyer, will be deducted directly from a refund), you can be used in next time consumption.</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <script>
                $(function () {
                    $("#navMenu > li").eq(0).addClass('selected');

                });

                function BlockMsg() {
                    $.blockUI({
                        css: {
                            border: 'none',
                            padding: '15px',
                            backgroundColor: '#000',
                            '-webkit-border-radius': '10px',
                            '-moz-border-radius': '10px',
                            opacity: .5,
                            color: '#fff'
                        },
                        message: '<p> <img src="../images/cartimgs/ok.png" /><h2>加入成功</h2></p>'
                    });
                    setTimeout($.unblockUI, 1000);
                }

                function AddOK() {
                    $.blockUI({
                        message: $('div.growlUI'),
                        fadeIn: 700,
                        fadeOut: 700,
                        timeout: 2000,
                        showOverlay: false,
                        centerY: false,
                        css: {
                            width: '350px',
                            top: '10px',
                            left: '',
                            right: '10px',
                            border: 'none',
                            padding: '5px',
                            backgroundColor: '#000',
                            '-webkit-border-radius': '10px',
                            '-moz-border-radius': '10px',
                            opacity: .6,
                            color: '#fff'
                        }
                    });
                }
            </script>
            <uc1:recommend_product runat="server" ID="recommend_product" />
        </div>
    </div>
</div>
