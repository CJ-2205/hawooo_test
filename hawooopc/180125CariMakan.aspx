<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180125CariMakan.aspx.cs" Inherits="_180125CariMakan" MasterPageFile="~/user/user.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta charset="UTF-8">
    <script>

        $(function () {

            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    window.location.href = "https://www.hawooo.com/mobile/180125CariMakan.aspx";
                }
            }
        }
         )
    </script>

    <style type="text/css">
        body {
            position: relative;
            height: auto;
        }

        .pic {
            position: absolute;
            left: 0;
            right: 0;
            margin: 0 auto;
            width: 1000px;
            height: 100vh;
            background: #aaa;
        }

            .pic img {
                position: absolute;
                right: 0;
                width: 1000px;
            }

        .gift1 {
            background-color: #FBEA1F;
            background-size: 100%;
            height: auto;
            margin: 0px auto;
            padding: 0px;
        }
    </style>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--神奇圖層區開始-->
    <div style="width: 100%; position: relative; width: 1000px; z-index: 1; margin: 0 auto">
        <img src="https://www.hawooo.com/images/ftp/20180126/edmbg_01.png" alt="台灣美食地圖" style="width: 100%">



        <div style="display: inline; position: absolute; z-index: 2; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">


            <a href="https://www.hawooo.com/user/productdetail.aspx?id=9935" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180126/edm_03.png" alt="台灣茶人" style="position: absolute; top: 30%; margin: auto; width: 52%; left: 19%;" />
            </a>

            <a href="https://www.hawooo.com/user/productdetail.aspx?id=9675" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180126/edm_04.png" alt="快車肉乾" style="position: absolute; top: 15%; left: 91%; margin: auto; width: 58%;" />
            </a>

            <a href="https://www.hawooo.com/user/productdetail.aspx?id=10774" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180126/edm_06.png" alt="愛D菇" style="position: absolute; top: 62%; right: 0; left: 87%; margin: auto; width: 53%;" />
            </a>

            <a href="https://www.hawooo.com/user/productdetail.aspx?id=7694" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180126/edm_08.png" alt="蘭山麵" style="position: absolute; top: 44%; margin: auto; width: 56%; left: 98%;" />
            </a>

            <a href="https://www.hawooo.com/user/productdetail.aspx?id=11596" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180126/edm_10.png" alt="京盛宇" style="position: absolute; top: 42%; left: 3%; margin: auto; width: 58%;" />
            </a>

            <a href="https://www.hawooo.com/user/productdetail.aspx?id=9886" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180126/edm_13.png" alt="頂級乾燥" style="position: absolute; top: 64%; right: 48%; margin: auto; width: 51%;" />
            </a>

            <a href="https://www.hawooo.com/user/productdetail.aspx?id=11295" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180126/edm_14.png" alt="櫻桃爺爺" style="position: absolute; top: 77%; left: 73%; margin: auto; width: 58%;" />
            </a>

            <a href="https://www.hawooo.com/user/productdetail.aspx?id=12368" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180126/edm_16.png" alt="阿舍食堂" style="position: absolute; top: 83%; right: 19%; margin: auto; width: 58%;" />
            </a>
        </div>
    </div>
    <!--神奇圖層區掰掰-->


    <div style="width: 100%; margin: 0 auto; display: block; width: 1000px;">


        <img alt="買就送 最高省210" src="https://www.hawooo.com/images/ftp/20180126/edmbg_02.png" style="float: left; display: block; width: 100%; margin-bottom: -30px;" />
    </div>


    <div style="width: 100%; margin: 0 auto; display: block; width: 1000px;">

        <div class="gift1 am-cf" style="width: 1000px; float: left;">
            <div id="div1" style="padding: 0 50px 0 50px;">
                <ul class="am-avg-sm-4">
                    <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                                <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                    <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 16px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                    </p>
                                </a>
                            </li>

                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
    </div>
    <!--商品結束-->



    <!--footer-->
    <div style="width: 100%; margin: 0 auto; float: center; display: block; width: 1000px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;">
                <img alt="Hawooo.com" src="https://www.hawooo.com/images/ftp/20171219/bhk/footerpc.png" style="float: left; display: block; width: 100%;" /></li>

        </ul>
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

