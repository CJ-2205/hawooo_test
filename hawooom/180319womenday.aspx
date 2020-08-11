<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180319womenday.aspx.cs" Inherits="_180319womenday" MasterPageFile="~/mobile/mobile.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .slogan {
            margin: 5px 5px;
            height: 20px;
            overflow: hidden;
            font-size: small;
            line-height: 20px;
            color: #ff0060;
            text-align: center;
        }

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

        .btn-image {
            width: 100%;
            float: left;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999; max-height: 122px; padding: 0;">
        <ul class="am-avg-sm-4 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">

                <a href="javascript:void(0)" onclick="GoID('gosale1')">
                    <img src="https://www.hawooo.com/images/ftp/20180322/sidebarM_01.png" style="width: 100%; max-height: 90px;" alt="寵愛女人節"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale2')">
                    <img src="https://www.hawooo.com/images/ftp/20180322/sidebarM_02.png" style="width: 100%; max-height: 90px;" alt="內衣"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale3')">
                    <img src="https://www.hawooo.com/images/ftp/20180322/sidebarM_03.png" style="width: 100%; max-height: 90px;" alt="美食"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale4')">
                    <img src="https://www.hawooo.com/images/ftp/20180322/sidebarM_04.png" style="width: 100%; max-height: 90px;" alt="媽咪"></a></li>
        </ul>
    </div>

    <asp:UpdatePanel ID="up_product_coupon" runat="server">
        <ContentTemplate>
            <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
                <img alt="寵愛女人節第二波" src="https://www.hawooo.com/images/ftp/20180322/edmm_01.png" style="float: left; display: block; width: 100%;" />
                <img src="https://www.hawooo.com/images/ftp/20180322/edmm_02.png" alt="全站滿額贈" style="width: 100%;">

                <asp:ImageButton ID="imgBtn1" runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20180322/edmm_03.png" CssClass="btn-image" OnClick="imgBtn1_Click" />

                <a href="javascript:void(0)" onclick="GoID('gosale1')">
                    <img src="https://www.hawooo.com/images/ftp/20180322/edmm_04.png" alt="229滿額贈" style="width: 100%; float: left;">
                </a>

                <a href="https://www.hawooo.com/mobile/180305Lottery.aspx" target="_blank">
                    <img src="https://www.hawooo.com/images/ftp/20180322/edmm_05.png" alt="樂透再贏1000" style="width: 100%; float: left;">
                </a>

                <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=12" target="_blank">
                    <img src="https://www.hawooo.com/images/ftp/20180322/edmm_06.png" alt="250滿額贈" style="width: 100%; float: left;">
                </a>

                <a href="https://www.hawooo.com/mobile/search.aspx?stxt=supercut" target="_blank">
                    <img id="gosale1" src="https://www.hawooo.com/images/ftp/20180322/edmm_07.png" alt="SUPERCUT塑魔纖" style="width: 100%;"></a>

            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

    <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px; background-color: #4c160d">
        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0; background-color: #ffdd4a">
                <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <h4 class="slogan">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
                            <a href="product.aspx?id=<%# Eval(" WP01") %>" style="color: #535252;">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
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

    <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px; background-color: #84a7c8">
        <a href="https://www.hawooo.com/mobile/search.aspx?stxt=UNT%E6%B0%B4%E6%8C%87%E5%BD%A9" target="_blank">
            <img id="gosale2" src="https://www.hawooo.com/images/ftp/20180322/edmm_09.png" alt="UNT水指彩" style="width: 100%;"></a>

        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0; background-color: #ffdd4a">
                <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <h4 class="slogan">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
                            <a href="product.aspx?id=<%# Eval(" WP01") %>" style="color: #535252;">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
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

    <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px; background-color: #fe76a4">
        <a href="https://www.hawooo.com/mobile/search.aspx?stxt=%E6%B6%BC%E6%84%9F%E6%8E%A8%E6%8E%A8" target="_blank">
            <img id="gosale3" src="https://www.hawooo.com/images/ftp/20180322/edmm_11.png" alt="涼感推推" style="width: 100%;"></a>

        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0; background-color: #ffdd4a">
                <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <h4 class="slogan">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
                            <a href="product.aspx?id=<%# Eval(" WP01") %>" style="color: #535252;">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
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

    <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px; background-color: #7e5599">
        <a href="https://www.hawooo.com/mobile/search.aspx?stxt=566%E9%99%B3%E5%BA%AD%E5%A6%AE%E6%8E%A8%E8%96%A6" target="_blank">
            <img id="gosale4" src="https://www.hawooo.com/images/ftp/20180322/edmm_13.png" alt="566香水洗髮" style="width: 100%;"></a>

        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0; background-color: #ffdd4a">
                <asp:Repeater ID="rp_product_list_4" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <h4 class="slogan">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
                            <a href="product.aspx?id=<%# Eval(" WP01") %>" style="color: #535252;">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
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
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #F9201F;">
        <!--公告上面那塊-->
        <div>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td width="5%" bgcolor="#000000" style="padding-top: 0px; max-height: 55px;"></td>
                        <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: small; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px; max-height: 55px;">姐妹呵護禮  完整活動辦法：<br>
                            <span style="color: white;">• 會員需於22/3(THU.)-30/3(FRI.)內完成訂購，且最終單筆訂單金額滿RM229且於31/3前完成付款即可免費獲得【台灣茶人】禦鑽金粹黑糖144g(口味隨機贈送)一包，限量200份送完為止。未於活動期間內完成付款/退換貨均視同放棄，不得逾期要求補送。<br>
                                • 確認符合資格者，好物飛行將於該筆訂單出貨時一併寄送贈品，如遇贈品缺貨或其他不可抗力之因素，好物飛行有權以1000HA幣替補，統一歸戶時間為11/4，恕不逐一通知。<br>
                            </span>
                            <br>
                            其他：<span style="color: white;">
                                <br>
                                • 參加本活動者即同意受本活動辦法及注意事項之規範，如有違反本活動辦法及注意事項者，本公司得取消其參加或兌換資格，並對於任何破壞本活動之⾏為保留法律追訴權。其他明顯違反活動公平性之⽅式，意圖混淆或影響活動結果者，⼀經本公司發現或經第三⼈檢舉經查證屬實，本公司有權⽴即取消其得獎資格，除追回獎品外，並對於任何破壞本活動之⾏為保留法律追訴權。<br>
                                • 本公司保留活動與贈品變更以及擁有修改及取消此活動的權利，無需事前通知，同時有對此活動之所有事宜有最終解釋與裁決權。
                            </span>
                        </td>
                        <td width="5%" bgcolor="#000000" style="max-height: 55px;"></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <img alt="footer" src="https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" />
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
