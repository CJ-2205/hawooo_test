<%@ Page Language="C#" AutoEventWireup="true" CodeFile="18foodfestival.aspx.cs" Inherits="_18foodfestival" MasterPageFile="~/user/user.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        body {
            position: relative;
            height: auto;
        }


        .pname {
            margin: 10px 5px;
            height: 40px;
            overflow: hidden;
            font-size: 14px;
            line-height: 20px;
            color: #535252;
        }

        .discountprice {
            margin: 5px 5px 0 5px;
            font-size: 10px;
            color: red;
        }

        .deleteprice {
            line-height: 37px;
            color: dimgrey;
            font-size: small;
            margin-bottom: -20px;
        }

        .sale1 {
            width: 800px;
            background-color: #05CAD1;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }

        .sale2 {
            width: 800px;
            background-color: #FC4A4A;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }


        .invisible {
            position: fixed;
            bottom: 5px;
            left: 0;
            right: 0;
            margin: 0 auto;
            width: 1080px;
            height: 2px;
            z-index: 3;
        }

        .box {
            position: fixed;
            top: 17%;
            right: 6%;
            width: 100px;
            height: 1530px;
        }
        /*滑過去變小一點*/
        .go_bt {
            -webkit-transition: all 0.3s ease;
            -moz-transition: all 0.3s ease;
            -ms-transition: all 0.3s ease;
            -o-transition: all 0.3s ease;
            transition: all 0.3s ease;
        }

            .go_bt:hover {
                -webkit-transform: scale(0.95);
                -moz-transform: scale(0.95);
                -ms-transform: scale(0.95);
                -o-transform: scale(0.95);
                transform: scale(0.95);
            }

        /*商品跳起來吧*/
        .hvr-float {
            display: inline-block;
            vertical-align: middle;
            -webkit-transform: perspective(1px) translateZ(0);
            transform: perspective(1px) translateZ(0);
            box-shadow: 0 0 1px transparent;
            -webkit-transition-duration: .3s;
            transition-duration: .3s;
            -webkit-transition-property: transform;
            transition-property: transform;
            -webkit-transition-timing-function: ease-out;
            transition-timing-function: ease-out;
        }

            .hvr-float:active, .hvr-float:focus, .hvr-float:hover {
                -webkit-transform: translateY(-8px);
                transform: translateY(-8px);
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
                                    window.location.href = "https://www.hawooo.com/user/18foodfestival.aspx";
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
                doLogin('18foodfestival.aspx')
            }
        }



    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <asp:HiddenField ID="HF129" runat="server" />
        <asp:HiddenField ID="HF299" runat="server" />
        <asp:HiddenField ID="HF429" runat="server" />
        <asp:HiddenField ID="HFOrder" runat="server" />
    </div>

    <!--神奇圖層區開始-->
    <div style="width: 100%; position: relative; width: 900px; z-index: 1; margin: 0 auto">
        <img id="gotop" src="https://www.hawooo.com/images/ftp/20180412/edm_01.png" alt="一鍵全領底圖" style="width: 100%">
    </div>
    <!--神奇圖層區掰掰-->

    <!--超神奇圖層區開始-->
    <div style="width: 100%; position: relative; width: 900px; z-index: 1; margin: 0 auto; background-color: yellow;">
        <img src="https://www.hawooo.com/images/ftp/20180412/edm_02.png" alt="緞帶底圖" style="width: 100%" />
        <div style="display: inline; position: absolute; z-index: 2; width: 100%; top: -5%; bottom: 0; left: 0; right: 0; width: 95%; margin: 0 auto;">
            <ul class="am-avg-sm-3">
                <li class="go_bt" style="padding: 7px 4px; float: left">
                    <img src="https://www.hawooo.com/images/ftp/20180412/129.png" alt="129登記送" style="margin: auto; width: 100%;" onclick="check('<%=HF129.Value%>','張君雅丸子麵','129')" />
                </li>

                <li class="go_bt" style="padding: 7px 4px; float: left">
                    <img src="https://www.hawooo.com/images/ftp/20180412/299.png" alt="299登記送" style="margin: auto; width: 100%;" onclick="check('<%=HF299.Value%>','台酒麻油雞3入','299')" />
                </li>

                <li class="go_bt" style="padding: 7px 4px; float: left">
                    <img src="https://www.hawooo.com/images/ftp/20180412/429.png" alt="429登記送" style="margin: auto; width: 100%;" onclick="check('<%=HF429.Value%>','台酒花雕雞麵6入','429')" />
                </li>

            </ul>
        </div>

    </div>
    <!--神奇圖層區掰掰-->

    <div style="width: 900px; margin: 0 auto; background-color: #FAD704;">
        <img id="gosale1" src="https://www.hawooo.com/images/ftp/20180412/edm_03.png" alt="限時免運" style="width: 100%;">


        <!--帶商品吧-->
        <div class="am-cf sale1">
            <ul class="am-avg-sm-4">
                <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl hvr-float" style="width: 23%; background: white; padding: 10px; margin: 1%;">
                            <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pname">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                <p class="discountprice">
                                    RM<span style="font-size: 20px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deleteprice"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>

    </div>
    <!--第二塊-->
    <div style="width: 900px; margin: 0 auto; background-color: #FAD704;">
        <img id="gosale2" src="https://www.hawooo.com/images/ftp/20180412/edm_05.png" alt="新品熱銷" style="width: 100%;">

        <!--帶商品吧-->
        <div class="am-cf sale2">
            <ul class="am-avg-sm-4">
                <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl hvr-float" style="width: 23%; background: white; padding: 10px; margin: 1%;">
                            <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pname">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                <p class="discountprice">
                                    RM<span style="font-size: 20px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deleteprice"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>

    <!--第三塊-->
    <div style="width: 900px; margin: 0 auto; background-color: #FAD704;">
        <img id="gosale3" src="https://www.hawooo.com/images/ftp/20180412/edm_07.png" alt="家家必備好物" style="width: 100%;">
        <!--帶商品吧-->
        <div class="am-cf sale1">
            <ul class="am-avg-sm-4">
                <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl hvr-float" style="width: 23%; background: white; padding: 10px; margin: 1%;">
                            <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pname">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                <p class="discountprice">
                                    RM<span style="font-size: 20px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deleteprice"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>

    <!--品牌館1活動開始-->
    <div style="width: 100%; position: relative; width: 900px; z-index: 1; margin: 0 auto">
        <img src="https://www.hawooo.com/images/ftp/20180406/edm_08.png" alt="底圖" style="width: 100%">



        <div style="display: inline; position: absolute; z-index: 2; width: 100%; top: 7%; bottom: 0; left: 0; right: 0; width: 95%; margin: 0 auto;">
            <ul class="am-avg-sm-2">

                <li class="go_bt" style="padding: 7px 4px; float: left"><a href="https://www.hawooo.com/user/brands.aspx?bid=117" target="_blank">
                    <img src="https://www.hawooo.com/images/ftp/20180406/pc_01.png" alt="nature tree" style="margin: auto; width: 100%;"></a>
                </li>

                <li class="go_bt" style="padding: 7px 4px; float: left"><a href="https://www.hawooo.com/user/brands.aspx?bid=196" target="_blank">
                    <img src="https://www.hawooo.com/images/ftp/20180406/pc_02.png" alt="嗜 香氛" style="margin: auto; width: 100%;"></a>
                </li>

            </ul>
        </div>
    </div>

    <!--品牌館2活動開始-->
    <div style="width: 100%; position: relative; width: 900px; z-index: 1; margin: 0 auto">
        <img src="https://www.hawooo.com/images/ftp/20180406/edm_09.png" alt="底圖" style="width: 100%">



        <div style="display: inline; position: absolute; z-index: 2; width: 100%; top: 7%; bottom: 0; left: 0; right: 0; width: 95%; margin: 0 auto;">
            <ul class="am-avg-sm-2">

                <li class="go_bt" style="padding: 7px 4px; float: left"><a href="https://www.hawooo.com/user/brands.aspx?bid=170" target="_blank">
                    <img src="https://www.hawooo.com/images/ftp/20180406/pc_03.png" alt="KGcheck" style="margin: auto; width: 100%;"></a>
                </li>

                <li class="go_bt" style="padding: 7px 4px; float: left"><a href="https://www.hawooo.com/user/brands.aspx?bid=147" target="_blank">
                    <img src="https://www.hawooo.com/images/ftp/20180406/pc_04.png" alt="heme" style="margin: auto; width: 100%;"></a>
                </li>

            </ul>
        </div>
    </div>
    <!--品牌館3活動開始-->
    <div style="width: 100%; position: relative; width: 900px; z-index: 1; margin: 0 auto">
        <img src="https://www.hawooo.com/images/ftp/20180406/edm_10.png" alt="底圖" style="width: 100%">



        <div style="display: inline; position: absolute; z-index: 2; width: 100%; top: 7%; bottom: 0; left: 0; right: 0; width: 95%; margin: 0 auto;">
            <ul class="am-avg-sm-2">

                <li class="go_bt" style="padding: 7px 4px; float: left"><a href="https://www.hawooo.com/user/brands.aspx?bid=180" target="_blank">
                    <img src="https://www.hawooo.com/images/ftp/20180406/pc_05.png" alt="sofei" style="margin: auto; width: 100%;"></a>
                </li>

                <li class="go_bt" style="padding: 7px 4px; float: left"><a href="https://www.hawooo.com/user/brands.aspx?bid=190" target="_blank">
                    <img src="https://www.hawooo.com/images/ftp/20180406/pc_06.png" alt="阿舍食堂" style="margin: auto; width: 100%;"></a>
                </li>

            </ul>
        </div>
    </div>
    <!--footer-->
    <!--下面帶活動說明-->
    <div style="width: 100%; position: relative; width: 900px; z-index: 5; margin: 0 auto">
        <table width="900" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="5%" bgcolor="#000000" style="padding-top: 0px; max-height: 55px;"></td>

                    <td width="90%" bgcolor="#000000" style="text-align: left; font-family: 微軟正黑體,Microsoft JhengHei,Helvetica; font-size: 14px; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px; max-height: 55px;">好物推薦 好食在 滿額登記送贈品：<br>
                        <span style="color: white;">• 會員需於6/4(FRI.)-16/4(MON.)內完成訂購，單筆訂單金額符合以下門檻且於 <span style="color: yellow">消費隔天內完成付款並登記</span>⽅可獲得贈品。未於活動期間內完成付款/退換貨或/未於活動期間內完成登錄並選擇贈品者均視同放棄，不得逾期要求補登。<br>
                            • <span style="color: yellow">單筆滿RM129</span>｜登記送張君雅丸子麵（市值RM10） 限量500份<br>
                            • <span style="color: yellow">單筆滿RM299</span>｜登記送台酒麻油雞麵3入（市值RM40）限量150份<br>
                            • <span style="color: yellow">單筆滿RM429</span>｜登記送台酒花雕雞麵6入（市值RM80）限量100份<br>
                            • 確認符合以上所有資格者，好物飛行將於該筆訂單出貨時一併寄送贈品。<br>
                            <br>
                            品牌專屬活動 6/4 ~16/4
                                    <br>
                            • 買【Nature Tree】滿RM69｜送焦糖玫瑰精油嫩白皂
                                    <br>
                            • 買【Is Lounge嗜‧香氛】單品買2件｜送Is Lounge 嗜香氛時尚運動毛巾
                                    <br>
                            • 買【KGCHECK】滿RM299｜送新KG美窈飲(抹茶穀物飲) 5包/盒
                                    <br>
                            • 買【HEME】滿RM29｜送heme 潤。明潭紅面膜-單片
                                    <br>
                            • 買【舒妃SOFEI 】滿RM99｜送櫻花嚴損救急菁露25ml
                                    <br>
                            • 買【阿舍食堂】滿RM99｜送外省乾麵-鬼椒麻辣袋(5包入) 限量150組
                        </span>
                        <br />
                        <br />
                        其他：<span style="color: white;"><br>
                            • 參加本活動者即同意受本活動辦法及注意事項之規範，如有違反本活動辦法及注意事項者，本公司得取消其參加或兌換資格，並對於任何破壞本活動之⾏為保留法律追訴權。其他明顯違反活動公平性之⽅式，意圖混淆或影響活動結果者，⼀經本公司發現或經第三⼈檢舉經查證屬實，本公司有權⽴即取消其得獎資格，除追回獎品外，並對於任何破壞本活動之⾏為保留法律追訴權。<br>
                            • 本公司保留活動與贈品變更以及擁有修改及取消此活動的權利，無需事前通知，同時有對此活動之所有事宜有最終解釋與裁決權。</span>
                    </td>

                    <td width="5%" bgcolor="#000000" style="max-height: 55px;"></td>

                </tr>
            </tbody>
        </table>
    </div>


    <div style="width: 100%; position: relative; width: 900px; z-index: 5; margin: 0 auto">
        <img class="twoyearbottom" src="https://www.hawooo.com/images/ftp/20180312/footer.png" alt="hawooo.com" style="width: 100%;" />
    </div>

    <!-- 一個看不見的div 高度0-->
    <div class="invisible" style="z-index: 13;">
        <!-- box是固定的nav-->
        <div class="box">
            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180412/sidebar_01.png" style="width: 150px; margin-bottom: -1px" alt="menu"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale1')">
                <img src="https://www.hawooo.com/images/ftp/20180412/sidebar_02.png" style="width: 150px; margin-bottom: -1px" alt="家家必備好物"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale2')">
                <img src="https://www.hawooo.com/images/ftp/20180412/sidebar_03.png" style="width: 150px; margin-bottom: -1px" alt="梳妝台一定要有"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale3')">
                <img src="https://www.hawooo.com/images/ftp/20180412/sidebar_04.png" style="width: 150px; margin-bottom: -1px" alt="我是時尚教主"></a>

            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180412/sidebar_05.png" style="width: 150px; margin-bottom: -1px" alt="top"></a>
        </div>
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
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
        }
        function twoYearsSideHide(e) {
            var sidebottom = $(".invisible").offset().top - 100;
            var yearbodybot = $(".twoyearbottom").offset().top + $(".twoyearbottom").height();
            if (sidebottom > yearbodybot) {
                $(".box").fadeOut();
            } else {
                $(".box").fadeIn();
            }
        }
        $(document).ready(function () {
            $(window).scroll(function () {
                twoYearsSideHide();
            })
        })
    </script>
</asp:Content>

