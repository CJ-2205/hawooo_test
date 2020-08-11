<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180426lovemom.aspx.cs" Inherits="_180426lovemom" MasterPageFile="~/mobile/mobile.master" %>

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
            font-size: small;
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

        .imgc {
            float: left;
            display: block;
            width: 50%;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--四大類別小選單開始-->
    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999; max-height: 122px; padding: 0;">
        <ul class="am-avg-sm-3 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">
                <a href="https://www.hawooo.com/mobile/180412lovemom.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180426/sidebarMnew_01.png" style="width: 100%; max-height: 90px;" alt="我想變正妹"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gotop')">
                    <img src="https://www.hawooo.com/images/ftp/20180426/sidebarMnew_02.png" style="width: 100%; max-height: 90px;" alt="吃就能保養"></a></li>

            <li class="am-fl">
                <a href="https://www.hawooo.com/mobile/newbrand.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180426/sidebarMnew_03.png" style="width: 100%; max-height: 90px;" alt="穿搭小祕技"></a></li>


        </ul>
    </div>
    <!--四大類別小選單再見-->


    <!--edm開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">

        <img id="gotop" alt="下單就送" src="https://www.hawooo.com/images/ftp/20180426/edmm_01.png" style="float: left; display: block; width: 100%;" />

        <img alt="只有四天" src="https://www.hawooo.com/images/ftp/20180426/edmm_02.gif" style="float: left; display: block; width: 100%;" />

        <asp:Image ID="Image1" runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20180426/0426M.png" CssClass="imgc" />
        <asp:Image ID="Image2" runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20180426/0427M_wait.png" CssClass="imgc" />
        <asp:Image ID="Image3" runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20180426/0428M_wait.png" CssClass="imgc" />
        <asp:Image ID="Image4" runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20180426/0429M_wait.png" CssClass="imgc" />


        <img alt="只有四天" src="https://www.hawooo.com/images/ftp/20180426/edmm_07.png" style="float: left; display: block; width: 100%;" />
    </div>


    <!--第一塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #009ebb">
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



    <!--公告開始喔-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #F9201F;">
        <!--公告上面那塊-->

        <div>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td width="5%" bgcolor="#000000" style="padding-top: 0px;"></td>

                        <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 14px; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px;">【限時4天】免門檻 下單就送：<br>
                            <span style="color: white;">• 會員於26/2(THU.)-30/4(SUN.)期間內不限門檻，下單即可獲得當日贈品。<br>
                                -26/2(THU.) 送防蟎抗菌噴劑 6ml 限量100組<br>
                                -27/2(FRI.）送Popsheel保濕面膜*1片 限量100組<br>
                                -28/2(SAT.）送天堂花園木槿卸妝精華 50ml 限量100組<br>
                                -30/4(SUN.) 送艋舺肥皂20g 限量100組<br>
                                <br>
                                • 限量贈品送完後，好物飛行將以折扣券替補；折扣券效期為5.17-5.31，在15/5 統一歸戶，恕不逐一通知。<br>
                                -防蟎抗菌噴劑 6ml將以 RM15折扣券 替代<br>
                                -Popsheel保濕面膜將以 RM25折扣券 替代<br>
                                -天堂花園木槿卸妝精華將以 RM35折扣券 替代<br>
                                -艋舺肥皂將以 RM25折扣券 替代</span><br>
                            <br>
                            其他<span style="color: white;"><br>
                                •參加本活動者即同意受本活動辦法及注意事項之規範，如有違反本活動辦法及注意事項者，本公司得取消其參加或兌換資格，並對於任何破壞本活動之⾏為保留法律追訴權。其他明顯違反活動公平性​​之⽅式，意圖混淆或影響活動結果者，⼀經本公司發現或經第三⼈檢舉經查證屬實，本公司有權⽴即取消其得獎資格，除追回獎品外，並對於任何破壞本活動之⾏為保留法律追訴權。<br>
                                • 本公司保留活動與贈品變更以及擁有修改及取消此活動的權利，無需事前通知，同時有對此活動之所有事宜有最終解釋與裁決權。</span>
                        </td>

                        <td width="5%" bgcolor="#000000" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>

                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #F9201F;">

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
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
        }


    </script>
</asp:Content>
