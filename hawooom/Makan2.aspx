<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Makan2.aspx.cs" Inherits="Makan2" MasterPageFile="~/mobile/mobile.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        $(document).ready(function () {
            if (document.body.clientWidth < 530) {
                $(".am-img-responsive").height = "50%";
            }
        });
    </script>
    <style type="text/css">
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../2017motherday/assets/css/newyearmom.css" rel="stylesheet" />
    <script>
        $(function () {
            $("#body").removeClass("am-container");
        })
    </script>

    <%--         <link rel="stylesheet" href="assets/css/amazeui.min.css">
  <link rel="stylesheet" href="assets/css/app.css">
  <link rel="stylesheet" href="assets/css/newyearmom.css">--%>
    <div>


        <!--四大類別小選單開始-->
        <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999; padding: 0;">
            <ul class="am-avg-sm-4 am-cf" style="list-style-type: none; padding: 0; margin: 0;">

                <li class="am-fl"><a href="180125CariMakan.aspx" style="display: inline">
                    <img src="https://www.hawooo.com/images/ftp/20180126/sec_01.png" style="width: 100%" alt="美食地圖 回主頁"></a></li>

                <li class="am-fl"><a href="makan1.aspx" style="display: inline">
                    <img src="https://www.hawooo.com/images/ftp/20180126/sec_02.png" style="width: 100%;" alt="北台灣"></a></li>

                <li class="am-fl"><a href="makan2.aspx" style="display: inline">
                    <img src="https://www.hawooo.com/images/ftp/20180126/sec_03.png" style="width: 100%;" alt="中台灣"></a></li>

                <li class="am-fl"><a href="makan3.aspx" style="display: inline">
                    <img src="https://www.hawooo.com/images/ftp/20180126/sec_04.png" style="width: 100%" alt="南臺灣"></a></li>

            </ul>
        </div>

        <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color:#25CFC0;">
            <img alt="中台灣" src="https://www.hawooo.com/images/ftp/20180126/edmm_28.png" style="float: left; display: block; width: 100%;" />

            <a href="https://www.hawooo.com/user/productdetail.aspx?id=10774">
                <img alt="愛D菇" src="https://www.hawooo.com/images/ftp/20180126/edmm_29.png" style="float: left; display: block; width: 100%;" /></a>

            <a href="https://www.hawooo.com/user/productdetail.aspx?id=9936">
                <img alt="台灣茶人" src="https://www.hawooo.com/images/ftp/20180126/edmm_30.png" style="float: left; display: block; width: 100%;" /></a>



            <!--系統開始帶商品-->
            <!--下方商品-->
            <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">
                <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; height: auto;">
                    <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <div class="am-u-md-3 am-u-sm-6 " style="margin-top: 20px; float: left">
                                <div class="am-panel am-panel-default pitem">
                                    <div class="imgContain">
                                        <a href="product.aspx?id=<%# Eval("WP01") %>">
                                            <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" />
                                        </a>
                                    </div>
                                    <div class="am-panel-bd" style="background: #f7f8f8; padding: 5px;">
                                        <div class="gallery-title" style="padding: 2px; font-size: 14px; margin-left: 5px; min-height: 40px; height: 45px; overflow: hidden">
                                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                            </a>
                                        </div>
                                        <div class="gallery-detail" style="padding: 5px;">
                                            <span class="money_txt_style" style="font-size: 15px; font-weight: bold; color: #f54954">RM
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
                  <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">

            <img alt="hawooo.com" src="https://www.hawooo.com/images/ftp/20180126/edmm_38.png" style="float: left; display: block; width: 100%;" />
        </div>
        </div>
        <!--footer-->

  

        <script type="text/javascript" src="171027.js"></script>
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


            function getThisId(e) {
                var thisHref = $(e).attr("data-id").split("#")[1];
                var thisDivTop = $("body").find("#" + thisHref).offset().top - 100;
                //var thisDivTop = $("body").find("#" + thisHref).offset().top;
                $("body,html").stop(true, false).animate({ scrollTop: thisDivTop }, 500);
            }
        </script>
</asp:Content>

