<%@ Page Language="C#" AutoEventWireup="true" CodeFile="angpao1.aspx.cs" Inherits="angpao1" MasterPageFile="~/mobile/mobile.master" %>


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
            <ul class="am-avg-sm-5 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
                <li class="am-fl">

                    <a href="20180116.aspx" style="display: inline">
                        <img src="https://www.hawooo.com/images/ftp/20180116/sidebarm_01.png" style="width: 100%" alt="新年紅包 回主頁"></a></li>

                <li class="am-fl">
                    <a href="angpao1.aspx" style="display: inline">
                        <img src="https://www.hawooo.com/images/ftp/20180116/sidebarm_02.png" style="width: 100%;" alt="年貨大街"></a></li>

                <li class="am-fl">
                    <a href="angpao2.aspx" style="display: inline">
                        <img src="https://www.hawooo.com/images/ftp/20180116/sidebarm_03.png" style="width: 100%;" alt="桃花氣色好"></a></li>

                <li class="am-fl">
                    <a href="angpao3.aspx" style="display: inline">
                        <img src="https://www.hawooo.com/images/ftp/20180116/sidebarm_04.png" style="width: 100%" alt="頭髮運勢好"></a></li>

                <li class="am-fl">
                    <a href="angpao4.aspx" style="display: inline">
                        <img src="https://www.hawooo.com/images/ftp/20180116/sidebarm_05.png" style="width: 100%" alt="春節除舊佈新"></a></li>

            </ul>
        </div>


        <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #eb3a27">
            <a href="angpao1.aspx" target="_blank">
                <img alt="台灣年貨大街" src="https://www.hawooo.com/images/ftp/20180116/edmm_09.gif" style="float: left; display: block; width: 100%;" /></a>

            <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #2b2b2b">
                <iframe max-width="560px" max-height="315px" style="margin: auto; z-index: 2; float: none; display: inherit; background-color: black;" src="https://www.youtube.com/embed/I3AcWcyxqZw" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
            </div>

            <!--系統開始帶商品-->
            <!--下方商品-->
        <div style="position: relative; max-width: 650px;float: center;margin: 0 auto;">
              <div style="top:0;bottom: 0;left:0;right:0;margin: auto;height: auto;">
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
                                    <div class="gallery-title" style="padding: 2px;font-size:14px;margin-left:5px;min-height:40px;height:45px;overflow:hidden">
                                        <a href="product.aspx?id=<%# Eval("WP01") %>">
                                            <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                        </a>
                                    </div>
                                    <%-- &nbsp;--%>
                                    <div class="gallery-detail" style="padding: 5px;">
                                        <span class="money_txt_style" style="font-size: 15px;font-weight:bold;color:#f54954">RM
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
            <!--footer-->

            <footer class="fullBanner am-show-sm">
                <img src="https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" alt="HaWooo.com">
            </footer>

        </div>

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
