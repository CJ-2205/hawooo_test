﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true"
    CodeFile="sale1.aspx.cs" Inherits="sale1" %>

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
 <link rel="stylesheet" href="assets/css/newyearmom.css">    <script>
        $(function () {
            $("#body").removeClass("am-container");
        })
    </script>

<%--         <link rel="stylesheet" href="assets/css/amazeui.min.css">
  <link rel="stylesheet" href="assets/css/app.css">
  <link rel="stylesheet" href="assets/css/newyearmom.css">--%>
    <div>


        <!--edm開始-->
   <div class="am-u-sm-centered" style="position: fixed;bottom: 0;left:50%;max-width: 650px;text-align: center;transform: translate(-50%);z-index: 999;">
   <ul class="am-avg-sm-4 am-cf" style="list-style-type:none;padding: 0;margin: 0;">
   <li class="am-fl">
   <a href="20171208M.aspx" style="display: inline"><img src="https://www.hawooo.com/images/ftp/20171207/sec_01.png" style="width:100%;" alt="回活動主頁"></a></li>
   
      <li class="am-fl">
   <a href="sale3.aspx" style="display: inline"><img src="https://www.hawooo.com/images/ftp/20171207/sec_03.png" style="width:100%;" alt="聖誕禮物"></a></li>
   
      <li class="am-fl">
   <a href="sale4.aspx" style="display: inline"><img src="https://www.hawooo.com/images/ftp/20171207/sec_02.png" style="width:100%;" alt="回饋rm1500"></a></li>
   
      <li class="am-fl">
   <a href="sale2.aspx" style="display: inline"><img src="https://www.hawooo.com/images/ftp/20171207/sec_05.png" style="width:100%;" alt="25% off"></a></li>
   
   
   </ul>
   </div>


     <div class="am-show-sm">
  <div class="fullBanner"><img src="https://www.hawooo.com/images/ftp/20171207/edmm_02.png" alt="買就送 最高省120"></div>
</div>

   
  <!--系統開始帶商品-->
        <!--下方商品-->
<div class="pageBoxGreen">            <div class="am-container" style="padding:2px;">
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


        function getThisId(e) {
            var thisHref = $(e).attr("data-id").split("#")[1];
            var thisDivTop = $("body").find("#" + thisHref).offset().top - 100;
            //var thisDivTop = $("body").find("#" + thisHref).offset().top;
            $("body,html").stop(true, false).animate({ scrollTop: thisDivTop }, 500);
        }
    </script>

</asp:Content>
