<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true"
    CodeFile="20171111part2page4.aspx.cs" Inherits="mobile_20171111part2page4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style type="text/css">
        .beauty {
            background: url(https://www.hawooo.com/images/ftp/20171012/edmm_07.png)no-repeat;
            background-size: 100%;
            margin: 0px auto;
            padding: 0px;
        }

        .supplement {
            background: url(https://www.hawooo.com/images/ftp/20171012/edmm_10.png)no-repeat;
            background-size: 100%;
            height: 768px;
            margin: 0px auto;
            padding: 0px;
        }

        .life {
            background: url(https://www.hawooo.com/images/ftp/20171012/edmm_13.png)no-repeat;
            background-size: 100%;
            height: 760px;
            margin: 0px auto;
            padding: 0px;
        }

        .fashion {
            background: url(https://www.hawooo.com/images/ftp/20171012/edmm_16.png)no-repeat;
            background-size: 100%;
            height: 760px;
            margin: 0px auto;
            padding: 0px;
        }

        .mom {
            background: url(https://www.hawooo.com/images/ftp/20171012/edmm_19.png)no-repeat;
            background-size: 100%;
            height: 758px;
            margin: 0px auto;
            padding: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../2017motherday/assets/css/newyearmom.css" rel="stylesheet" />
    <script>
        $(function () {
            $("#body").removeClass("am-container");
        })
    </script>

    <div>

        <!--四大類別小選單開始-->
        <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999;">
            <ul class="am-avg-sm-4 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
                <li class="am-fl">
                    <a href="20171111part2page1.aspx" style="display: inline">
                        <img src="https://www.hawooo.com/images/ftp/20171031/secM_01.png" style="width: 100%;" alt="買一送一"></a></li>

                <li class="am-fl">
                    <a href="20171111part2page2.aspx" style="display: inline">
                        <img src="https://www.hawooo.com/images/ftp/20171031/secM_02.png" style="width: 100%;" alt="現折Rm110"></a></li>

                <li class="am-fl">
                    <a href="20171111part2page3.aspx" style="display: inline">
                        <img src="https://www.hawooo.com/images/ftp/20171031/secM_03.png" style="width: 100%;" alt="30% OFF"></a></li>

                <li class="am-fl">
                    <a href="20171111part2page5.aspx" style="display: inline">
                        <img src="https://www.hawooo.com/images/ftp/20171031/secM_05.png" style="width: 100%;" alt="暢銷熱品"></a></li>


            </ul>
        </div>
        <!--四大類別小選單再見-->

        <!--edm開始-->
        <div class="am-show-sm">
            <div class="fullBanner">
                <img src="https://www.hawooo.com/images/ftp/20171110/edmm_18.png" alt="20% off"></div>
        </div>

        <!--系統開始帶商品-->
        <!--下方商品-->
        <div class="pageBox">
            <div class="am-container">
                <asp:Repeater ID="rp_product_list" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <div class="am-u-md-3 am-u-sm-6-self " style="margin-top: 20px; float: left">
                            <div class="am-panel am-panel-default pitem">
                                <div class="imgContain">
                                    <a href="product.aspx?id=<%# Eval("WP01") %>">
                                        <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" />
                                    </a>
                                </div>
                                <div class="am-panel-bd" style="background: #f7f8f8; padding: 5px;">
                                    <div class="gallery-title" style="padding: 2px; line-height: 1.3">
                                        <a href="product.aspx?id=<%# Eval("WP01") %>">
                                            <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                        </a>
                                    </div>
                                    <%-- &nbsp;--%>
                                    <div class="gallery-detail" style="padding: 5px;">
                                        <span class="money_txt_style" style="font-size: 11.5px">RM
                                            <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span>
                                        <span class="money_txt_style_marketS">
                                            <asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></span>
                                        <span class="moneybtn"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>


        <footer class="fullBanner am-show-sm">
            <img src="https://www.hawooo.com/images/ftp/20171012/07m.png" alt="HaWooo.com">
        </footer>

    </div>


    <!--[if (gte IE 9)|!(IE)]><!-->
    <script src="assets/js/jquery.min.js"></script>
    <!--<![endif]-->
    <script src="assets/js/amazeui.min.js"></script>
    <script>
        function success(result, context, method) {
            if (method == 'GetCP') {
                alert(result);
                if (result == "請先登入會員") {
                    doLogin(window.location.href);
                }
            }
        }
        function GetCoupone(stime, etime, gb01) {
            PageMethods.GetCP(stime, etime, gb01, success, null);
        }
    </script>

    <style>
        .am-u-sm-6-self {
            width: 49%;
        }

        .money_txt_style {
            color: #f54954;
            font-size: 11px;
            font-weight: bold;
        }

        .gallery-title {
            font-size: 14px;
            margin-left: 5px;
            height: 40px;
            overflow: hidden;
        }

            .gallery-title a {
                color: #6F6957;
                font-size: 10px;
                line-height: 12px;
            }

        .gallery-detail {
            /*padding-top: 4px;*/
            height: 34px;
            border-top: 1px solid #E9E9E9;
        }

        .money_txt_style_marketS {
            color: #a1a1a1;
            font-size: 8px;
            text-decoration: line-through;
            line-height: 25px;
            text-align: center;
        }

        .pitem {
            margin: 0px;
            padding: 2px;
            border-color: #FFF;
            /* border-color: rgb(212,212,212); */
            -webkit-transform: translateZ(0);
        }

            .pitem:hover {
                padding: 0px;
                border: 5px solid #cbcbcb;
                transition: border 0.2s linear 0s, color 0.2s linear 0s, background-color 0.2s linear 0s;
                -webkit-transform: translateZ(0);
            }
    </style>

</asp:Content>
