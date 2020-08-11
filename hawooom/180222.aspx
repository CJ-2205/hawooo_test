<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180222.aspx.cs" Inherits="_180222" MasterPageFile="~/mobile/mobile.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        $(document).ready(function () {
            if (document.body.clientWidth < 530) {
                $(".am-img-responsive").height = "50%";
            }


        });
    </script>
    <style type="text/css">
        /*心跳跳*/
        .heartbeat-play2 {
            -webkit-animation-duration: 1s;
            animation-duration: 1s;
            -webkit-animation-name: heartbeat-play2;
            animation-name: heartbeat-play2;
            -webkit-animation-iteration-count: infinite;
            animation-iteration-count: infinite; /* -webkit-animation-direction: alternate;animation-direction: alternate;*/
        }

        @-webkit-keyframes heartbeat-play2 {
            0% {
                -webkit-transform: scale(1);
                transform: scale(1);
                filter: brightness(100%);
            }

            40% {
                -webkit-transform: scale(0.99);
                transform: scale(0.99);
                filter: brightness(100%);
            }

            60% {
                -webkit-transform: scale(1);
                transform: scale(1);
                filter: brightness(120%);
            }

            80% {
                -webkit-transform: scale(0.99);
                transform: scale(0.99);
                filter: brightness(100%);
            }

            100% {
                -webkit-transform: scale(1);
                transform: scale(1);
                filter: brightness(100%);
            }
        }

        @keyframes heartbeat-play2 {
            0% {
                -webkit-transform: scale(1);
                transform: scale(1);
                filter: brightness(100%);
            }

            40% {
                -webkit-transform: scale(0.99);
                transform: scale(0.99);
                filter: brightness(100%);
            }

            60% {
                -webkit-transform: scale(1);
                transform: scale(1);
                filter: brightness(120%);
            }

            80% {
                -webkit-transform: scale(0.99);
                transform: scale(0.99);
                filter: brightness(100%);
            }

            100% {
                -webkit-transform: scale(1);
                transform: scale(1);
                filter: brightness(100%);
            }
        }


        .gift1 {
            background-color: #b5cbff;
            background-size: 100%;
            height: auto;
            margin: 0px auto;
            padding: 0px;
        }

        .gift2 {
            background-color: #ffee9f;
            background-size: 100%;
            height: auto;
            margin: 0px auto;
            padding: 0px;
        }

        .get-all-coupon {
            position: absolute;
            top: 36%;
            right: 0;
            left: -3%;
            margin: auto;
            width: 100%;
        }

        .coupon-check {
            position: absolute;
            top: 36%;
            right: -151%;
            left: 0;
            margin: auto;
            width: 48%;
        }

        .btn-image {
            float: left;
            display: block;
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--五大類別小選單開始-->
    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999; max-height: 122px; padding: 0;">
        <ul class="am-avg-sm-5 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">

                <a href="javascript:void(0)" onclick="GoID('gosale1')">
                    <img src="https://www.hawooo.com/images/ftp/20180222/sidebarM_01.png" style="width: 100%" alt="美體保養"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale2')">
                    <img src="https://www.hawooo.com/images/ftp/20180222/sidebarM_02.png" style="width: 100%;" alt="時尚彩妝"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale3')">
                    <img src="https://www.hawooo.com/images/ftp/20180222/sidebarM_03.png" style="width: 100%;" alt="保健食品"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale4')">
                    <img src="https://www.hawooo.com/images/ftp/20180222/sidebarM_04.png" style="width: 100%" alt="服裝內衣"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale5')">
                    <img src="https://www.hawooo.com/images/ftp/20180222/sidebarM_05.png" style="width: 100%" alt="生活類品"></a></li>



        </ul>
    </div>
    <!--五大類別小選單再見-->


    <div style="width: 100%; position: relative; max-width: 650px; z-index: 1; margin: 0 auto">
        <img src="https://www.hawooo.com/images/ftp/20180222/edmm_011.png" alt="背景" style="width: 100%">



        <div style="display: inline; position: absolute; z-index: 2; width: 66%; top: 0; bottom: 0; left: 0; right: 30%; margin: auto;">


            <div class="heartbeat-play2">
                <img src="https://www.hawooo.com/images/ftp/20180222/cflogo.png" alt="coupons fever" style="position: absolute; top: 1%; margin: auto; width: 100%;" />
            </div>

            <%--        <a href="#">
                <img src="https://www.hawooo.com/images/ftp/20180222/edm_044.png" alt="一鍵全領" style="position: absolute; top: 36%; right: 0; left: -3%; margin: auto; width: 100%;" />
            </a>

            <a href="#">
                <img src="https://www.hawooo.com/images/ftp/20180222/edm_055.png" alt="我的折扣券" style="position: absolute; top: 36%; right: -151%; left: 0; margin: auto; width: 48%;" />
            </a>--%>

            <asp:UpdatePanel ID="up_header" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <div class="coupon-main-pic">
                        <%--     <img src="images/20171030/1024_一件神領bN手機長_01.gif" />
                            <asp:LinkButton ID="lnk_get_all" runat="server" OnClick="lnk_get_all_Click">
                                  <img src="images/20171030/1024_一件神領bN手機長_02.gif">
                            </asp:LinkButton>
                            <img src="images/20171030/1024_一件神領bN手機長_03.gif">--%>

                        <asp:ImageButton ID="lnk_get_all" runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20180222/edm_044.png" CssClass="get-all-coupon input-auto-image" OnClick="lnk_get_all_Click" />

                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20180222/edm_055.png" CssClass="coupon-check input-auto-image" OnClick="ImageButton1_Click" />

                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>


        </div>


        <img src="https://www.hawooo.com/images/ftp/20180222/edmm_02.png" alt="背景" style="width: 100%">
        <img src="https://www.hawooo.com/images/ftp/20180222/edmm_03.png" alt="背景" style="width: 100%">
    </div>

    <asp:UpdatePanel ID="up_product_coupon" runat="server">
        <ContentTemplate>
            <!--第一塊開始-->
            <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #5e020d;">
                <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                    <li><a id="gosale1">
                        <asp:ImageButton ID="imgBtn1" runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20180222/edmm_04.png" CssClass="btn-image" OnClick="imgBtn1_Click" />
                        <%--   <img alt="保養20% off" src="https://www.hawooo.com/images/ftp/20180222/edmm_04.png" style="float: left; display: block; width: 100%;" />--%>

                    </a>

                    </li>
                    <li>
                        <%--      <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">
                            <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; height: auto;">--%>
                        <div class="am-cf" style="width: 92.3%; margin: 0 auto; display: block; background-color: #b5cbff;">
                            <div id="div1" style="position: relative; top: 0; bottom: 0; left: 0; right: 0; margin: auto; height: auto;">

                                <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
                                    <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                                        <ItemTemplate>
                                            <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
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
                                                </a></li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                            <%--   </div>--%>
                        </div>
                    </li>
                </ul>
            </div>

            <!--第二塊開始-->
            <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #5e020d;">
                <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
                    <li><a id="gosale2">
                        <asp:ImageButton ID="imgBtn2" runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20180222/edmm_05.png" CssClass="btn-image" OnClick="imgBtn2_Click" />
                        <%--     <img alt="彩妝15% off" src="https://www.hawooo.com/images/ftp/20180222/edmm_05.png" style="float: left; display: block; width: 100%;" />--%></a></li>
                    <li>
                        <%--   <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">
                            <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; background-color: green; height: auto;">--%>
                        <div class="am-cf" style="width: 92.3%; margin: 0 auto; display: block; background-color: #ffee9f;">
                            <div id="div2" style="position: relative; top: 0; bottom: 0; left: 0; right: 0; margin: auto; height: auto;">

                                <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
                                    <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                                        <ItemTemplate>
                                            <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                                    <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" /></a>
                                                <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a href="product.aspx?id=<%# Eval("WP01") %>">
                                                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                                </a></h4>
                                                <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                                                    RM<span style="font-size: medium; letter-spacing: -2px;">
                                                        <asp:Literal ID="Literal2" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;">
                                                            <asp:Literal ID="Literal3" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                                                </p>
                                                </a></li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                            <%-- </div>--%>
                        </div>
                    </li>
                </ul>
            </div>

            <!--第三塊開始-->
            <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #5e020d;">
                <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                    <li><a id="gosale3">
                        <asp:ImageButton ID="imgBtn3" runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20180222/edmm_06.png" CssClass="btn-image" OnClick="imgBtn3_Click" />
                        <%-- <img alt="內衣12% off" src="https://www.hawooo.com/images/ftp/20180222/edmm_06.png" style="float: left; display: block; width: 100%;" />--%></a></li>
                    <li>
                        <%--   <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">
                            <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; background-color: green; height: auto;">--%>
                        <div class="am-cf" style="width: 92.3%; margin: 0 auto; display: block; background-color: #b5cbff;">
                            <div id="div3" style="position: relative; top: 0; bottom: 0; left: 0; right: 0; margin: auto; height: auto;">

                                <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
                                    <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                                        <ItemTemplate>
                                            <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                                    <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" /></a>
                                                <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a href="product.aspx?id=<%# Eval("WP01") %>">
                                                    <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                                </a></h4>
                                                <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                                                    RM<span style="font-size: medium; letter-spacing: -2px;">
                                                        <asp:Literal ID="Literal5" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;">
                                                            <asp:Literal ID="Literal6" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                                                </p>
                                                </a></li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                            <%--    </div>--%>
                        </div>
                    </li>
                </ul>
            </div>

            <!--第四塊開始-->
            <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #5e020d;">
                <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                    <li><a id="gosale4">
                        <asp:ImageButton ID="imgBtn4" runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20180222/edmm_07.png" CssClass="btn-image" OnClick="imgBtn4_Click" />
                        <%-- <img alt="保健10% off" src="https://www.hawooo.com/images/ftp/20180222/edmm_07.png" style="float: left; display: block; width: 100%;" />--%>
                    </a></li>
                    <li>
                        <%--  <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">
                            <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; background-color: green; height: auto;">--%>
                        <div class="am-cf" style="width: 92.3%; margin: 0 auto; display: block; background-color: #ffee9f;">
                            <div id="div4" style="position: relative; top: 0; bottom: 0; left: 0; right: 0; margin: auto; height: auto;">

                                <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
                                    <asp:Repeater ID="rp_product_list_4" runat="server" ViewStateMode="Enabled">
                                        <ItemTemplate>
                                            <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                                    <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" /></a>
                                                <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a href="product.aspx?id=<%# Eval("WP01") %>">
                                                    <asp:Literal ID="Literal7" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                                </a></h4>
                                                <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                                                    RM<span style="font-size: medium; letter-spacing: -2px;">
                                                        <asp:Literal ID="Literal8" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;">
                                                            <asp:Literal ID="Literal9" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                                                </p>
                                                </a></li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                            <%--   </div>--%>
                        </div>
                    </li>
                </ul>
            </div>

            <!--第五塊開始-->
            <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #5e020d;">
                <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                    <li><a id="gosale5">
                        <asp:ImageButton ID="imgBtn5" runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20180222/edmm_08.png" CssClass="btn-image" OnClick="imgBtn5_Click" />
                        <%-- <img alt="現折RM20" src="https://www.hawooo.com/images/ftp/20180222/edmm_08.png" style="float: left; display: block; width: 100%;" />--%></a></li>

                    <li>
                        <%--   <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">
                            <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; background-color: green; height: auto;">--%>
                        <div class="am-cf" style="width: 92.3%; margin: 0 auto; display: block; background-color: #b5cbff;">
                            <div id="div5" style="position: relative; top: 0; bottom: 0; left: 0; right: 0; margin: auto; height: auto;">

                                <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
                                    <asp:Repeater ID="rp_product_list_5" runat="server" ViewStateMode="Enabled">
                                        <ItemTemplate>
                                            <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                                    <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" /></a>
                                                <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a href="product.aspx?id=<%# Eval("WP01") %>">
                                                    <asp:Literal ID="Literal7" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                                </a></h4>
                                                <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                                                    RM<span style="font-size: medium; letter-spacing: -2px;">
                                                        <asp:Literal ID="Literal8" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;">
                                                            <asp:Literal ID="Literal9" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                                                </p>
                                                </a></li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                            <%--   </div>--%>
                        </div>
                    </li>
                </ul>
            </div>

        </ContentTemplate>
    </asp:UpdatePanel>
    <!--公告開始喔-->


    <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px; background-color: #F9201F;">

        <!--公告上面那塊-->

        <div>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td width="5%" bgcolor="#000000" style="padding-top: 0px; max-height: 55px;"></td>

                        <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 14px; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px; max-height: 55px;"><span style="text-decoration: underline;">一鍵狂領  天天享折扣<br>
                        </span>
                            <span style="color: white;">• 活動期間內，會員可至『一鍵狂領活動頁』自行點選所需要的折扣券，折扣商品為活動頁之熱銷商品。折扣券使用完畢好物會員可自行再次點選補充折扣券。<br>
                            </span>
                            <br>



                            <span style="text-decoration: underline;">全站滿額抽  Starbucks台灣限定款<br>
                            </span>
                            <span style="color: white;">• 參加滿額抽會員需於22/2-28/2內完成訂購，單筆訂單金額符合以下門檻且於1/3前完成付款流程⽅符合滿額抽獎資格，預計於20/3抽出10名得獎者，抽獎順序依據以下贈品順序，並於21/3公佈得獎名單，每人限得一次，不可重複獲獎。未於活動期間內完成付款或退換貨者均視同放棄，不得要求參加抽獎。<br>
                                <span style="color: #FFE406">• 單筆滿RM299：</span>
                                狗年不鏽鋼Togo冷水杯(台灣新年限定款保溫杯，市價RM135，共1組)、金狗獻瑞冷水壺(台灣新年限定款保溫杯，市價RM70，共1組)、旺旺來福隨行杯(台灣新年限定款保溫杯，市價RM65，共2組)。<br>
                                <span style="color: #FFE406">• 單筆滿RM399：</span>
                                旺旺來福隨身瓶(台灣新年限定款保溫杯，市價RM200，共4組)、AOHEARTS 雙層馬克杯(全球時尚品牌Alice+Olivia聯名款手繪真金杯口馬克杯，市價RM140，共2組)。<br>
                                •確認中獎人資格後，好物飛行將於於10/4前寄出滿額禮，如遇贈品缺貨時或其他不可抗力之因素，好物飛行有權以購物金遞補，RM299滿額贈贈品將以RM70替代，399滿額贈贈品將以RM140替代，恕不逐一通知。<br>
                            </span>
                            <br>




                            <span style="text-decoration: underline;">滿250現折28  滿350現折38<br>
                            </span>
                            <span style="color: white;">• 活動期間內訂購好物官網商品者，即可享有『滿250現折28  滿350現折38』，是否符合現折資格均以最終訂單金額為準，最終訂單金額為扣除所有Ha幣/折扣券/購物金後的實際付款金額。<br>
                            </span>
                            <br>





                            <span style="text-decoration: underline;">其他<br>
                            </span>
                            <span style="color: white;">•參加本活動者即同意受本活動辦法及注意事項之規範，如有違反本活動辦法及注意事項者，本公司得取消其參加或兌換資格，並對於任何破壞本活動之⾏為保留法律追訴權。其他明顯違反活動公平性之⽅式，意圖混淆或影響活動結果者，⼀經本公司發現或經第三⼈檢舉經查證屬實，本公司有權⽴即取消其得獎資格，除追回獎品外，並對於任何破壞本活動之⾏為保留法律追訴權。<br>
                                • 本公司保留活動與贈品變更以及擁有修改及取消此活動的權利，無需事前通知，同時有對此活動之所有事宜有最終解釋與裁決權。</span>
                        </td>
                        <td width="5%" bgcolor="#000000" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>

                    </tr>
                </tbody>
            </table>
        </div>





    </div>




    <%--    <script src="assets/js/amazeui.min.js"></script>
    <script src="js/jquery.url.js"></script>
    <script src="assets/js/jquery.min.js"></script>--%>


    <%--    <script type="text/javascript">
        $(document).ready(function () {
            for (i = 0; i < 7; i++) {
                duplicate('div1');
                duplicate('div2');
                duplicate('div3');
                duplicate('div4');
                duplicate('div5');
            }
        });


        function duplicate(id) {
            var ul = $('#' + id + ' ul');
            ul.find('li:last').clone(true).appendTo(ul);
        }

    </script>--%>

    <script type="text/javascript">


        //$(function () {
        //    //var tagid = $.url.param("tid");
        //    //if (tagid != '') {
        //    //    GoID(tagid);
        //    //}

        //    var tagid = getUrlParam("tid");
        //    if (tagid != null) {
        //        GoID(tagid);
        //    }

        //});

        $(window).load(function () {
            //var tagid = $.url.param("tid");
            //if (tagid != '') {
            //    GoID(tagid);
            //}

            //var tagid = getUrlParam("tid");
            //if (tagid != null) {
            //    GoID(tagid);
            //}

            var tagid = getUrlParam("tid");
            if (tagid != null) {
                GoID(tagid);
            }


        });

        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 100 }, 500);
        };


        function getUrlParam(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
            var r = window.location.search.substr(1).match(reg);  //匹配目标参数
            if (r != null) return unescape(r[2]); return null; //返回参数值
        };

    </script>
    <style>
        a {
            color: #535252;
        }
    </style>
</asp:Content>
