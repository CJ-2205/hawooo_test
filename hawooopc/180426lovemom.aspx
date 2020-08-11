<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180426lovemom.aspx.cs" Inherits="_180426lovemom" MasterPageFile="~/user/user.master" %>

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
            width: 900px;
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
            top: 15%;
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

        .buy1 {
            background: url(https://www.hawooo.com/images/ftp/20180426/edm_05.png)no-repeat;
            background-size: 100%;
            height: 1850px;
            margin: 0px auto;
            padding: 0px;
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

        #ContentPlaceHolder1_Image1 {
            position: absolute;
            top: 0;
            margin: auto;
            width: 35%;
            left: 10%;
        }

        #ContentPlaceHolder1_Image2 {
            position: absolute;
            top: 0;
            margin: auto;
            width: 35%;
            left: 47%;
        }

        #ContentPlaceHolder1_Image3 {
            position: absolute;
            top: 0;
            margin: auto;
            width: 35%;
            left: 84%;
        }

        #ContentPlaceHolder1_Image4 {
            position: absolute;
            top: 0;
            margin: auto;
            width: 35%;
            left: 121%;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 1000px; margin: 0 auto;">
        <img id="gotop" src="https://www.hawooo.com/images/ftp/20180426/edm_01.png" alt="下單就送" style="width: 100%;">
        <img src="https://www.hawooo.com/images/ftp/20180426/edm_02.gif" alt="只有四天送" style="width: 100%;">
    </div>

    <!--神奇圖層區開始-->
    <div style="width: 100%; position: relative; width: 1000px; z-index: 1; margin: 0 auto">
        <img src="https://www.hawooo.com/images/ftp/20180426/edm_03.png" style="width: 100%">
        <div style="display: inline; position: absolute; z-index: 2; width: 60%; top: 0; bottom: 0; left: 0; right: 0;">
            <asp:Image ID="Image1" runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20180426/0426.png" CssClass="go_bt" />
            <asp:Image ID="Image2" runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20180426/0427_wait.png" CssClass="go_bt" />
            <asp:Image ID="Image3" runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20180426/0428_wait.png" CssClass="go_bt" />
            <asp:Image ID="Image4" runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20180426/0429_wait.png" CssClass="go_bt" />
        </div>
    </div>
    <!--神奇圖層區掰掰-->


    <!--第一塊-->
    <div class="buy1" style="width: 1000px; margin: 0 auto;">
        <img id="gosale1" src="https://www.hawooo.com/images/ftp/20180426/edm_04.png" alt="母親節熱銷排行榜" style="width: 100%;">


        <div class="am-cf sale1">
            <div id="div1" style="padding: 0px; float: left; width: 100%; z-index: 3; margin-top: -35px;">
                <ul class="am-avg-sm-4">
                    <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl hvr-float" style="width: 23%; background: white; padding: 2%; margin: 1% 1%;">
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

    </div>


    <!--footer-->
    <!--活動辦法-->
    <div style="width: 100%; margin: 0 auto; display: block; width: 1000px;">
        <table width="1000" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="5%" bgcolor="#000000" style="padding-top: 0px; max-height: 55px;"></td>

                    <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 14px; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px; max-height: 55px;">【限時4天】免門檻 下單就送：<br>
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
    <div style="width: 100%; position: relative; width: 1000px; z-index: 5; margin: 0 auto">

        <img class="twoyearbottom" src="https://www.hawooo.com/images/ftp/20180312/footer.png" alt="hawooo.com" style="width: 100%;">
    </div>



    <!-- 一個看不見的div 高度0-->
    <div class="invisible" style="z-index: 50;">
        <!-- box是固定的nav-->
        <div class="box">
            <a href="https://www.hawooo.com/user/180412lovemom.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180416/sidebar_01.png" style="width: 150px; margin-bottom: -1px" alt="menu"></a>

            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180416/sidebar_08.png" style="width: 150px; margin-bottom: -1px" alt="加碼送"></a>

            <a href="https://www.hawooo.com/user/newbrand.aspx" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180416/sidebar_06.png" style="width: 150px; margin-bottom: -1px" alt="台灣品牌大賞"></a>

            <a href="https://www.hawooo.com/user/180412lovemom.aspx?tid=gosale1">
                <img src="https://www.hawooo.com/images/ftp/20180416/sidebar_02.png" style="width: 150px; margin-bottom: -1px" alt="我想變正妹"></a>

            <a href="https://www.hawooo.com/user/180412lovemom.aspx?tid=gosale2">
                <img src="https://www.hawooo.com/images/ftp/20180416/sidebar_03.png" style="width: 150px; margin-bottom: -1px" alt="吃就能保養"></a>

            <a href="https://www.hawooo.com/user/180412lovemom.aspx?tid=gosale3">
                <img src="https://www.hawooo.com/images/ftp/20180416/sidebar_04.png" style="width: 150px; margin-bottom: -1px" alt="穿搭小祕技"></a>

            <a href="https://www.hawooo.com/user/180412lovemom.aspx?tid=gosale4">
                <img src="https://www.hawooo.com/images/ftp/20180416/sidebar_05.png" style="width: 150px; margin-bottom: -1px" alt="生活智慧王"></a>

            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180416/sidebar_07.png" style="width: 150px; margin-bottom: -1px" alt="top"></a>



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
