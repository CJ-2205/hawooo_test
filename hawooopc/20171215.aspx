<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/user/user.master" CodeFile="20171215.aspx.cs" Inherits="_17_12_17_1215UrgentEDM_ne_20171215" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <script>

        $(function () {

            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    window.location.href = "https://www.hawooo.com/mobile/20171215.aspx";
                }
            }
        }
         )
    </script>

    <style type="text/css">
        .box {
            position: fixed;
            top: 30%;
            width: 100px;
            height: 1530px;
        }

        .pic {
            position: absolute;
            left: 0;
            right: 0;
            margin: 0 auto;
            width: 1180px;
            height: 100vh;
            background: #aaa;
        }

            .pic img {
                position: absolute;
                right: 0;
                width: 900px;
            }

        .buy1 {
            background: url(https://www.hawooo.com/images/ftp/20171215/edm_bg.png)no-repeat;
            background-size: 100%;
            height: 1800 px;
            margin: 0px auto;
            padding: 0px;
        }
    </style>

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="margin: 0 auto; float: center; display: block; width: 1180px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%; margin-bottom: -2px;">



            <li style="margin: 0;"><a href="http://www.hawooo.com/user/hotsale.aspx" target="_blank">
                <img alt="精選活動" src="https://www.hawooo.com/images/ftp/20171215/edm_01.png" style="float: left; display: block; width: 100%;" /></a></li>

            <li style="margin: 0;">
                <img alt="全站滿額現抵" src="https://www.hawooo.com/images/ftp/20171215/discount.png" style="float: left; display: block; width: 100%;" /></li>


            <!--第一排開始帶商品-->
            <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 1180px;">
                <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px;">
                    <li style="margin: 0;">
                        <div class="buy1 am-cf" style="width: 100%;">
                            <div style="padding: 0 10px 0 0; margin-top: 20px">
                                <ul class="am-avg-sm-5">

                                    <li class="am-fl" style="width: calc(20% - 20px); padding: 0; margin:-20px 20px 0px 0px;">
                                        <a href="http://www.hawooo.com/user/hotsale_detail.aspx?id=320">
                                            <img src="https://www.hawooo.com/images/ftp/20171215/edm_001.png" alt="元氣家"></a>

                                    </li>

                                    <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                                        <ItemTemplate>
                                    <li class="am-fl" style="width:calc(20% - 20px);background: white;padding: 10px;margin: 20px 10px 10px 10px">
                                                <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                    <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                                    <p style="margin: 10px 5px 0 5px; font-size: 13px; color: red">
                                                        RM<span style="font-size: 22px; letter-spacing: -2px;">
                                                            <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                                    </p>
                                                </a>
                                            </li>

                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>

                                <!--第二排開始-->
                                <ul class="am-avg-sm-5">

                                    <li class="am-fl" style="width: calc(20% - 20px); padding: 0; margin: 0px 20px 0px 0px;">
                                        <a href="https://www.hawooo.com/user/shop.aspx?eid=326">
                                            <img src="https://www.hawooo.com/images/ftp/20171215/edm_002.png" alt="Qmomo"></a>

                                    </li>
                                    <!--分水嶺-->
                                    <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                                        <ItemTemplate>
                                    <li class="am-fl" style="width:calc(20% - 20px);background: white;padding: 10px;margin: 20px 10px 10px 10px">
                                                <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                    <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                                    <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                                        RM<span style="font-size: 22px; letter-spacing: -2px;">
                                                            <asp:Literal ID="Literal2" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="Literal3" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                                    </p>
                                                </a>
                                            </li>

                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>

                                <!--第三排開始-->
                                <ul class="am-avg-sm-5">

                                    <li class="am-fl" style="width: calc(20% - 20px); padding: 0; margin:0px 20px 0px 0px;">
                                        <a href="http://www.hawooo.com/user/shop.aspx?eid=310">
                                            <img src="https://www.hawooo.com/images/ftp/20171215/edm_003.png" alt="聖誕書展"></a>

                                    </li>
                                    <!--分水嶺-->
                                    <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                                        <ItemTemplate>
                                    <li class="am-fl" style="width:calc(20% - 20px);background: white;padding: 10px;margin: 20px 10px 10px 10px">
                                                <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                    <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                        <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                                    <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                                        RM<span style="font-size: 22px; letter-spacing: -2px;">
                                                            <asp:Literal ID="Literal5" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="Literal6" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                                    </p>
                                                </a>
                                            </li>

                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>


                                <!--第四排開始-->
                                <ul class="am-avg-sm-5">

                                    <li class="am-fl" style="width: calc(20% - 20px); padding: 0; margin: 0px 20px 0px 0px;">
                                        <a href="http://www.hawooo.com/user/hotsale_detail.aspx?id=322">
                                            <img src="https://www.hawooo.com/images/ftp/20171215/edm_006.png" alt="美型計畫"></a>

                                    </li>
                                    <!--分水嶺-->
                                    <asp:Repeater ID="rp_product_list_4" runat="server" ViewStateMode="Enabled">
                                        <ItemTemplate>
                                    <li class="am-fl" style="width:calc(20% - 20px);background: white;padding: 10px;margin: 20px 10px 10px 10px">
                                                <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                    <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                        <asp:Literal ID="Literal7" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                                    <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                                        RM<span style="font-size: 22px; letter-spacing: -2px;">
                                                            <asp:Literal ID="Literal8" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="Literal9" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                                    </p>
                                                </a>
                                            </li>

                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>

                            </div>
                        </div>


                    </li>
                </ul>
            </div>
            <!--商品結束-->



        </ul>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
</asp:Content>

