<%@ Page Language="C#" AutoEventWireup="true" CodeFile="18foodfestival.aspx.cs" Inherits="_18foodfestival" MasterPageFile="~/mobile/mobile.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .pnamem {
            margin: 5px 5px;
            height: 40px;
            overflow: hidden;
            font-size: medium;
            line-height: 20px;
            color: #535252;
        }

        .deletepricem {
            line-height: 28px;
            color: dimgrey;
            font-size: smaller;
            margin-bottom: -20px;
        }

        .discountpricem {
            margin: 5px 5px 0 5px;
            font-size: small;
            color: red;
        }

        .box {
            width: calc(50% - 10px);
            background: white;
            padding: 3%;
            margin: 5px;
            height: calc(100% - 20px);
        }

        .slogan {
            margin: 5px 5px;
            height: 20px;
            overflow: hidden;
            font-size: small;
            line-height: 20px;
            color: #ff0060;
            text-align: center;
        }
    </style>

    <script>
        function check(pick, giftName, PickID) {
            var bool = '<%=Session["Login"] %>';
            var order = '<%=HFOrder.Value%>'
            if (bool == 'true') {
                if (order > 0) {
                    if (pick == 'False') {
                        var msg = "確認兌換 \'" + giftName + "\' ? 確定以後不能更改咯～"
                        if (confirm(msg) == true) {
                            $.ajax({
                                type: 'post',
                                url: '18foodfestival.aspx/SelectGift',
                                data: '{PickID:"' + PickID + '"}',
                                datatype: "json",
                                contentType: "application/json; charset=utf-8",
                                success: function (response) {
                                    confirm(response.d);
                                    window.location.href = "https://www.hawooo.com/mobile/18foodfestival.aspx";
                                },
                                error:
                                function (response) {
                                    alert("Oh No,系統好像出現了問題,若多次無法使用請麻煩與客服聯繫");
                                }
                            })
                        }
                    }
                    else {
                        alert("一人只能领一次喔，赶快去选其他赠品吧");
                    }

                }
                else {
                    alert("哎呀，还差一点就符合订单金额门槛，快找姐妹凑一凑，很容易到的啦");
                }
            }
            else {
                window.location = "login.aspx?rurl=18foodfestival.aspx";
            }
        }



    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:HiddenField ID="HF129" runat="server" />
    <asp:HiddenField ID="HF299" runat="server" />
    <asp:HiddenField ID="HF429" runat="server" />
    <asp:HiddenField ID="HFOrder" runat="server" />

    <!--四大類別小選單開始-->
    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999; padding: 0;">
        <ul class="am-avg-sm-3 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">

                <a href="javascript:void(0)" onclick="GoID('gosale1')">
                    <img src="https://www.hawooo.com/images/ftp/20180412/sidebarM_01.png" style="width: 100%;" alt="好食在"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale2')">
                    <img src="https://www.hawooo.com/images/ftp/20180412/sidebarM_02.png" style="width: 100%;" alt="家家必備好物"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale3')">
                    <img src="https://www.hawooo.com/images/ftp/20180412/sidebarM_03.png" style="width: 100%;" alt="梳妝台一定要有"></a></li>
        </ul>
    </div>
    <!--四大類別小選單再見-->


    <!--edm開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
        <img id="gotop" alt="好食在" src="https://www.hawooo.com/images/ftp/20180412/edmm_01.png" style="float: left; display: block; width: 100%;" />

        <img src="https://www.hawooo.com/images/ftp/20180412/edmm_02.png" alt="129登記送" style="width: 100%;" onclick="check('<%=HF129.Value%>','張君雅丸子麵','129')" />

        <img src="https://www.hawooo.com/images/ftp/20180412/edmm_03.png" alt="299登記送" style="width: 100%; float: left;" onclick="check('<%=HF299.Value%>','台酒麻油雞3入','299')" />

        <img src="https://www.hawooo.com/images/ftp/20180412/edmm_04.png" alt="429登記送" style="width: 100%; float: left;" onclick="check('<%=HF429.Value%>','台酒花雕雞麵6入','429')" />

        <img id="gosale1" src="https://www.hawooo.com/images/ftp/20180412/edmm_05.png" alt="居家必備好物" style="width: 100%; float: left;">
    </div>

    <!--第一塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #05CAD1">
        <div style="position: relative; max-width: 650px; margin: 0 auto;">
            <div id="div1" style="position: relative; max-width: 650px; margin: 0 auto;">
                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                    <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <h4 class="slogan">
                                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
                                <a href="product.aspx?id=<%# Eval(" WP01") %>">
                                    <img src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    <h4 class="pnamem">
                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                    <p class="discountpricem">
                                        RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deletepricem"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                    </p>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
    </div>

    <!--第二塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #FC4A4A">
        <img id="gosale2" src="https://www.hawooo.com/images/ftp/20180412/edmm_07.png" alt="UNT水指彩" style="width: 100%;">
        <div style="position: relative; max-width: 650px; margin: 0 auto;">
            <div id="div2" style="position: relative; max-width: 650px; margin: 0 auto;">
                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0">
                    <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <h4 class="slogan">
                                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
                                <a href="product.aspx?id=<%# Eval(" WP01") %>">
                                    <img src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    <h4 class="pnamem">
                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                    <p class="discountpricem">
                                        RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deletepricem"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                    </p>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>

    </div>

    <!--第三塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #05CAD1">

        <a href="https://www.hawooo.com/mobile/search.aspx?stxt=%E6%B6%BC%E6%84%9F%E6%8E%A8%E6%8E%A8" target="_blank">
            <img id="gosale3" src="https://www.hawooo.com/images/ftp/20180412/edmm_09.png" alt="涼感推推" style="width: 100%;"></a>

        <div style="position: relative; max-width: 650px; margin: 0 auto;">
            <div style="position: relative; max-width: 650px; margin: 0 auto;">
                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                    <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <h4 class="slogan">
                                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
                                <a href="product.aspx?id=<%# Eval(" WP01") %>">
                                    <img src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    <h4 class="pnamem">
                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                    <p class="discountpricem">
                                        RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deletepricem"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                    </p>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
    </div>

    <!--品牌館活動新增-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
        <a href="http://www.hawooo.com/mobile/brand_1.aspx?bid=117" target="_blank">
            <img alt="nature tree" src="https://www.hawooo.com/images/ftp/20180406/pcM_01.png" style="float: left; display: block; width: 100%;" /></a>

        <a href="http://www.hawooo.com/mobile/brand_1.aspx?bid=196" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180406/pcM_02.png" alt="嗜 香氛" style="width: 100%;"></a>

        <a href="http://www.hawooo.com/mobile/brand_1.aspx?bid=170" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180406/pcM_03.png" alt="KGcheck" style="width: 100%; float: left;"></a>

        <a href="http://www.hawooo.com/mobile/brand_1.aspx?bid=147" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180406/pcM_04.png" alt="heme" style="width: 100%; float: left;"></a>

        <a href="http://www.hawooo.com/mobile/brand_1.aspx?bid=180" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180406/pcM_05.png" alt="sofei" style="width: 100%; float: left;"></a>

        <a href="http://www.hawooo.com/mobile/brand_1.aspx?bid=190" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180406/pcM_06.png" alt="阿舍食堂" style="width: 100%; float: left;"></a>

    </div>


    <!--公告開始喔-->


    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #F9201F;">
        <!--公告上面那塊-->

        <div>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td width="5%" bgcolor="#000000" style="padding-top: 0px; max-height: 55px;"></td>

                        <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: small; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px; max-height: 55px;">好物推薦 好食在 滿額登記送贈品：<br>
                            <span style="color: white;">• 會員需於6/4(FRI.)-16/4(MON.)內完成訂購，單筆訂單金額符合以下門檻且於<span style="color: yellow">消費隔天內完成付款並登記</span>⽅可獲得贈品。未於活動期間內完成付款/退換貨或/未於活動期間內完成登錄並選擇贈品者均視同放棄，不得逾期要求補登。<br>
                                • <span style="color: yellow">單筆滿RM129</span>｜登記送張君雅丸子麵(市值RM10)限量500份。<br />
                                • <span style="color: yellow">單筆滿RM299</span>｜登記送台酒花雕雞麵3入(市值RM40)限量150份。<br />
                                • <span style="color: yellow">單筆滿RM429</span>｜登記送台酒花雕雞麵3入+麻油雞麵3入(市值RM80)限量100份。<br />
                                • 確認符合以上所有資格者，好物飛行將於該筆訂單出貨時一併寄送贈品。<br />
                                <br />
                                品牌專屬活動 6/4 ~16/4<br />
                                • 買【Nature Tree】滿RM69｜送焦糖玫瑰精油嫩白皂<br />
                                • 買【Is Lounge嗜‧香氛】單品買2件｜送Is Lounge 嗜香氛時尚運動毛巾<br />
                                • 買【KGCHECK】滿RM299｜送新KG美窈飲(抹茶穀物飲) 5包/盒<br />
                                • 買【HEME】滿RM29｜送heme 潤。明潭紅面膜-單片<br />
                                • 買【舒妃SOFEI 】滿RM99｜送櫻花嚴損救急菁露25ml<br />
                                • 買【阿舍食堂】滿RM99｜送外省乾麵-鬼椒麻辣袋(5包入) 限量150組<br />
                            </span>
                            <br>
                            其他：<span style="color: white;"><br>
                                • 參加本活動者即同意受本活動辦法及注意事項之規範，如有違反本活動辦法及注意事項者，本公司得取消其參加或兌換資格，並對於任何破壞本活動之⾏為保留法律追訴權。其他明顯違反活動公平性之⽅式，意圖混淆或影響活動結果者，⼀經本公司發現或經第三⼈檢舉經查證屬實，本公司有權⽴即取消其得獎資格，除追回獎品外，並對於任何破壞本活動之⾏為保留法律追訴權。<br>
                                • 本公司保留活動與贈品變更以及擁有修改及取消此活動的權利，無需事前通知，同時有對此活動之所有事宜有最終解釋與裁決權。</span>
                        </td>

                        <td width="5%" bgcolor="#000000" style="max-height: 55px;"></td>

                    </tr>
                </tbody>
            </table>
        </div>

        <img alt="footer" src=" https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" />

    </div>

    <script src="assets/js/jquery.url.js"></script>

    <script type="text/javascript">
        $(function () {
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 80 }, 500);
        }
    </script>


</asp:Content>
