<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180202.aspx.cs" Inherits="_180202"  MasterPageFile="~/mobile/mobile.master" %>


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
    <!--四大類別小選單開始-->
    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999; padding: 0;">
        <ul class="am-avg-sm-5 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">

                <a href="180201cny.aspx" style="display: inline">
                    <img src="https://www.hawooo.com/images/ftp/20180201/sidebarm_01.png" style="width: 100%" alt="新年紅包 回主頁"></a></li>

            <li class="am-fl">
                <a href="180201cny.aspx?tid=gosale1" style="display: inline">
                    <img src="https://www.hawooo.com/images/ftp/20180201/sidebarm_02.png" style="width: 100%;" alt="年貨免出門"></a></li>

            <li class="am-fl">
                <a href="180201cny.aspx?tid=gosale2" style="display: inline">
                    <img src="https://www.hawooo.com/images/ftp/20180201/sidebarm_03.png" style="width: 100%;" alt="內衣紅不讓"></a></li>

            <li class="am-fl">
                <a href="180201cny.aspx?tid=gosale3" style="display: inline">
                    <img src="https://www.hawooo.com/images/ftp/20180201/sidebarm_04.png" style="width: 100%" alt="新年更逆齡"></a></li>

            <li class="am-fl">
                <a href="180201cny.aspx?tid=gosale4" style="display: inline">
                    <img src="https://www.hawooo.com/images/ftp/20180201/sidebarm_05.png" style="width: 100%" alt="享瘦才是福"></a></li>

        </ul>
    </div>


    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #eb3a27">
        <img alt="台灣年貨大街" src="https://www.hawooo.com/images/ftp/20180202/edmm_01.png" style="float: left; display: block; width: 100%;" />

        <!--系統開始帶商品-->
        <!--下方商品-->
        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">
            <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; height: auto;">
                     <ul style="height: 50%;list-style-type:none;margin:0px 6%;padding: 0;background-color: #eb3a27">

                <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                    
                        
              	<li class="am-fl" style="width:calc(50% - 10px);background: white;padding: 5px;margin: 5px;height: calc(100% - 20px);">
                                <a href="product.aspx?id=<%# Eval(" WP01") %>">
                                        <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" />
               	<h4 style="margin: 5px 5px;height: 40px;overflow: hidden;font-size:medium;line-height: 20px;color:#535252"><asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
               	<p style="margin: 5px 5px 0 5px;font-size:small;color:red">RM<span style="font-size:medium;letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span>
</span><del class="am-fr" style="line-height: 28px;color:dimgrey;font-size:smaller;margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></span>
</del></p></a></li>



                    </ItemTemplate>
                </asp:Repeater>
                         </ul>
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
