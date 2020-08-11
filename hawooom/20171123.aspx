<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true"
    CodeFile="20171123.aspx.cs" Inherits="mobile_20171123" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        $(document).ready(function () {
            if (document.body.clientWidth < 530) {
                $(".am-img-responsive").height = "50%";
            }
        });
    </script>

    <style>
        .money_txt_style {
            color: #f54954;
            font-size: 15px;
            font-weight: bold;
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


    <!-- 页面内容 -->
    <div class="am-show-sm">
        <div class="fullBanner">
            <img src="https://www.hawooo.com/images/ftp/20171123/mianM.png" alt="台灣明星拌麵">
        </div>
    </div>
    <!--系統開始帶商品-->

    <div class="pageBox">
        <div class="am-container" style="padding: 2px; max-width: 1180px;">
            <asp:Repeater ID="rp1" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <%--<li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                        <a href="product.aspx?id=<%# Eval("WP01") %>">
                            <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" /></a>
                        <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a href="product.aspx?id=<%# Eval("WP01") %>">
                            <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                        </a></h4>
                        <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                            RM<span style="font-size: medium; letter-spacing: -2px;">
                                <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;">
                                    <asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                        </p>
                        </a></li>--%>



                    <div class="am-u-md-3 am-u-sm-6 product" style="margin: 20px 0 0 0; max-width: 1180px;">
                        <div class="am-panel am-panel-default pitem">
                            <div class="imgContain">
                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                    <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive lazyautosizes lazyloaded" sizes="185px" /></a>
                            </div>
                            <div class="am-panel-bd" style="background: #f7f8f8; padding: 5px;">
                                <div class="gallery-title" style="padding: 2px; height: 51px; overflow: hidden;">
                                    <a href="product.aspx?id=<%# Eval("WP01") %>">
                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                    </a>
                                </div>
                                <div class="gallery-detail" style="padding: 5px;">
                                    <span class="money_txt_style" style="font-size: 4vw;">RM
                                        <asp:Literal ID="Literal2" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"></span> <span style="font-size: 2vw; color: #595959;"><del>
                                            <asp:Literal ID="Literal3" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del></span>
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
        <img src="http://edm.hawooo.com/20170502/07m.png" alt="HaWooo.com">
    </footer>




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
