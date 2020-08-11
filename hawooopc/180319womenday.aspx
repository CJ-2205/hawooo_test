<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180319womenday.aspx.cs" Inherits="_180319womenday" MasterPageFile="~/user/user.master" %>

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
            width: 1000px;
            background-color: #4c160d;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }

        .slogan {
            margin: 10px 5px;
            height: 20px;
            overflow: hidden;
            font-size: 14px;
            line-height: 20px;
            color: #F61C68;
            text-align: center;
        }

        .sale2 {
            width: 1000px;
            background-color: #84a7c8;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }

        .sale3 {
            width: 1000px;
            background-color: #fe76a4;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }

        .sale4 {
            width: 1000px;
            background-color: #7e5599;
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
            top: 20%;
            right: 6%;
            width: 100px;
            height: 1530px;
        }

        .coupon-btn {
            width: 50%;
            float: left;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="up_product_coupon" runat="server">
        <ContentTemplate>
            <div style="width: 1000px; margin: 0 auto;">

                <img id="gotop" src="https://www.hawooo.com/images/ftp/20180322/edm_01.png" alt="寵愛女人節第二波" style="width: 100%;">

                <img src="https://www.hawooo.com/images/ftp/20180322/edm_02.png" alt="全站滿額贈" style="width: 100%;">

                <asp:ImageButton ID="imgBtn1" runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20180322/edm_03.png" CssClass="coupon-btn" OnClick="imgBtn1_Click" />

                <%--    <a href="#">
                    <img src="https://www.hawooo.com/images/ftp/20180322/edm_03.png" alt="領折價券" style="width: 50%; float: left;">
                </a>--%>


                <a href="javascript:void(0)" onclick="GoID('gosale1')">
                    <img src="https://www.hawooo.com/images/ftp/20180322/edm_04.png" alt="229滿額贈" style="width: 50%; float: left;">
                </a>

                <a href="https://www.hawooo.com/user/180305Lottery.aspx" target="_blank">
                    <img src="https://www.hawooo.com/images/ftp/20180322/edm_05.png" alt="樂透再贏1000" style="width: 50%; float: left;">
                </a>

                <a href="https://www.hawooo.com/user/brands.aspx?bid=12" target="_blank">
                    <img src="https://www.hawooo.com/images/ftp/20180322/edm_06.png" alt="250滿額贈" style="width: 50%; float: left;">
                </a>

                <a href="https://www.hawooo.com/user/search.aspx?stxt=SUPERCUT" target="_blank">
                    <img id="gosale1" src="https://www.hawooo.com/images/ftp/20180322/edm_07.png" alt="SUPERCUT塑魔纖" style="width: 100%;"></a>

            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

    <!--開始帶商品-->
    <div class="am-cf sale1">
        <div id="div1" style="padding: 0 0px; float: left; width: 100%; z-index: 3;">
            <ul class="am-avg-sm-4">
                <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl" style="width: 21%; background: white; padding: 15px; margin: 1% 2%">
                            <h4 class="slogan">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
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
    <!--商品結束-->


    <!--sale 2區塊開始-->

    <!--開始帶商品-->
    <div style="width: 1000px; margin: 0 auto;">
        <a href="https://www.hawooo.com/user/search.aspx?stxt=%E6%B0%B4%E6%8C%87%E5%BD%A9" target="_blank">
            <img id="gosale2" src="https://www.hawooo.com/images/ftp/20180322/edm_09.png" alt="UNT水指彩" style="width: 100%;"></a>
    </div>

    <div class="am-cf sale2">
        <div id="div2" style="padding: 0 0px; float: left; width: 100%; z-index: 3;">
            <ul class="am-avg-sm-4">
                <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl" style="width: 21%; background: white; padding: 15px; margin: 1% 2%">
                            <h4 class="slogan">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
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
    <!--商品結束-->

    <!--sale 3區塊開始-->

    <!--開始帶商品-->
    <div style="width: 1000px; margin: 0 auto;">
        <a href="https://www.hawooo.com/user/search.aspx?stxt=%E6%B6%BC%E6%84%9F%E6%8E%A8%E6%8E%A8" target="_blank">
            <img id="gosale3" src="https://www.hawooo.com/images/ftp/20180322/edm_11.png" alt="涼感推推" style="width: 100%;"></a>
    </div>

    <div class="am-cf sale3">
        <div id="div3" style="padding: 0 0px; float: left; width: 100%; z-index: 3;">
            <ul class="am-avg-sm-4">
                <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl" style="width: 21%; background: white; padding: 15px; margin: 1% 2%">
                            <h4 class="slogan">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
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
    <!--商品結束-->



    <!--sale 4區塊開始-->

    <!--開始帶商品-->
    <div style="width: 1000px; margin: 0 auto;">
        <a href="https://www.hawooo.com/user/search.aspx?stxt=566%E9%99%B3%E5%BA%AD%E5%A6%AE%E6%8E%A8%E8%96%A6" target="_blank">
            <img id="gosale4" src="https://www.hawooo.com/images/ftp/20180322/edm_13.png" alt="涼感推推" style="width: 100%;"></a>
    </div>

    <div class="am-cf sale4">
        <div style="padding: 0 0px; float: left; width: 100%; z-index: 3;">
            <ul class="am-avg-sm-4">
                <asp:Repeater ID="rp_product_list_4" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl" style="width: 21%; background: white; padding: 15px; margin: 1% 2%">
                            <h4 class="slogan">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
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

    <!--商品結束-->


    <!--footer-->
    <!--下面帶活動說明-->
    <div style="width: 100%; margin: 0 auto; display: block; width: 1000px;">

        <img alt="Hawooo.com" src="https://www.hawooo.com/images/ftp/20171212/lottery_2.png" style="float: left; display: block; width: 100%;" />

        <div>
            <table width="1000" border="0" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td width="5%" bgcolor="#000000" style="padding-top: 0px; max-height: 55px;"></td>

                        <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 14px; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px; max-height: 55px;">姐妹呵護禮  完整活動辦法：<br>
                            <span style="color: white;">• 會員需於22/3(THU.)-30/3(FRI.)內完成訂購，且最終單筆訂單金額滿RM229且於31/3前完成付款即可免費獲得【台灣茶人】禦鑽金粹黑糖144g(口味隨機贈送)一包，限量200份送完為止。未於活動期間內完成付款/退換貨均視同放棄，不得逾期要求補送。<br>
                                • 確認符合資格者，好物飛行將於該筆訂單出貨時一併寄送贈品，如遇贈品缺貨時或其他不可抗力之因素，好物飛行有權以1000HA幣替補，統一歸戶時間為11/4，恕不逐一通知。<br>
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

    </div>
    <div style="width: 100%; position: relative; width: 1000px; z-index: 5; margin: 0 auto">

        <img class="twoyearbottom"  src="https://www.hawooo.com/images/ftp/20180312/footer.png" alt="hawooo.com" style="width: 100%;">
    </div>



    <!-- 一個看不見的div 高度0-->
    <div class="invisible" style="z-index: 13;">
        <!-- box是固定的nav-->
        <div class="box">
            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180322/sidebar_01.png" style="width: 150px; margin-bottom: -1px" alt="menu"></a>


            <a href="javascript:void(0)" onclick="GoID('gosale1')">
                <img src="https://www.hawooo.com/images/ftp/20180322/sidebar_02.png" style="width: 150px; margin-bottom: -1px" alt="保健"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale2')">
                <img src="https://www.hawooo.com/images/ftp/20180322/sidebar_03.png" style="width: 150px; margin-bottom: -1px" alt="內衣"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale3')">
                <img src="https://www.hawooo.com/images/ftp/20180322/sidebar_04.png" style="width: 150px; margin-bottom: -1px" alt="保養"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale4')">
                <img src="https://www.hawooo.com/images/ftp/20180322/sidebar_05.png" style="width: 150px; margin-bottom: -1px" alt="美妝"></a>

            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180322/sidebar_06.png" style="width: 150px; margin-bottom: -1px" alt="TOP"></a>


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
