<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180222.aspx.cs" Inherits="_180222" MasterPageFile="~/user/user.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%--<title>一鍵狂領</title>--%>
    <script>

        $(function () {

            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    window.location.href = "https://www.hawooo.com/mobile/180222.aspx";
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

        .pic {
            position: absolute;
            left: 0;
            right: 0;
            margin: 0 auto;
            width: 900px;
            height: 100vh;
            background: #aaa;
        }

            .pic img {
                position: absolute;
                right: 0;
                width: 900px;
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

        /*心跳跳*/
        .heartbeat-play2 {
            -webkit-animation-duration: 1s;
            animation-duration: 1s;
            -webkit-animation-name: heartbeat-play2;
            animation-name: heartbeat-play2;
            -webkit-animation-iteration-count: infinite;
            animation-iteration-count: infinite;
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


        .get-all-coupon {
            position: absolute;
            top: 74%;
            margin: auto;
            width: 54%;
            right: 18%;
        }

        .coupon-check {
            position: absolute;
            top: 74%;
            margin: auto;
            width: 27%;
            right: -9%;
        }

        .coupon.btn {
            width: 90%;
            float: left;
        }

        /*a {
            margin: 10px 5px;
            height: 40px;
            overflow: hidden;
            font-size: 14px;
            line-height: 20px;
            color: #535252;
        }*/
    </style>

</asp:Content>





<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <!--神奇圖層區開始-->
    <div style="width: 100%; position: relative; width: 900px; z-index: 1; margin: 0 auto">
        <img src="https://www.hawooo.com/images/ftp/20180222/edm_011.png" alt="一鍵全領底圖" style="width: 100%">
        <a id="gotop"></a>


        <div style="display: inline; position: absolute; z-index: 2; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">

            <div class="heartbeat-play2">
                <img src="https://www.hawooo.com/images/ftp/20180222/cflogo.png" alt="coupons fever" style="position: absolute; margin: auto; width: 72%; right: 1%;" />
            </div>
            <asp:UpdatePanel ID="up_header" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:ImageButton ID="lnk_get_all" runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20180222/edm_04.png" CssClass="get-all-coupon" OnClick="lnk_get_all_Click" />

                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20180222/edm_05.png" CssClass="coupon-check" OnClick="ImageButton1_Click" />
                </ContentTemplate>
            </asp:UpdatePanel>
            <%--            <img src="https://www.hawooo.com/images/ftp/20180222/edm_04.png" alt="一鍵全領" style="position: absolute; top: 74%; margin: auto; width: 54%; right: 18%;" />

            <a href="https://www.hawooo.com/user/20180110.aspx" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180222/edm_05.png" alt="我的折扣券" style="position: absolute; top: 74%; margin: auto; width: 27%; right: -9%;" />
            </a>--%>
        </div>

    </div>
    <!--神奇圖層區掰掰-->

    <div style="width: 100%; position: relative; width: 900px; z-index: 5; margin: 0 auto">

        <img src="https://www.hawooo.com/images/ftp/20180222/edm_02.png" alt="買就抽隨行杯" style="width: 55%; float: left">
        <img src="https://www.hawooo.com/images/ftp/20180222/edm_03.png" alt="全站消費折扣" style="width: 45%; float: left">
    </div>


    <asp:UpdatePanel ID="up_product_coupon" runat="server">
        <ContentTemplate>
            <!--sale 1區塊開始-->
            <div style="width: 100%; position: relative; width: 900px; z-index: 1; margin: 0 auto">
                <a id="gosale1"></a>
            </div>


            <!--帶商品吧-->
            <div style="width: 100%; margin: 0 auto; display: block; max-width: 900px; position: relative; z-index: 2; background-color: #5e020d; height: 780px; list-style-type: none;">


                <div class="gift1 am-cf" style="width: 850px;">
                    <div style="float: left; width: 20%; margin: 40px 0 0 0">

                        <asp:ImageButton ID="imgBtn1" runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20180222/pc01.png" CssClass="coupon-btn" OnClick="imgBtn1_Click" />

                        <%--<img src="https://www.hawooo.com/images/ftp/20180222/pc01.png" alt="20% off" style="width: 90%; float: left;">--%>
                    </div>

                    <div id="div1" style="padding: 0 10px; float: left; width: 80%;">
                        <ul class="am-avg-sm-4">
                            <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>

                                    <li class="am-fl" style="width: 24%; background: white; padding: 10px; margin: 10px 3px; z-index: 10;">
                                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                            <img width="100%" data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>

                                            <p style="margin: 5px 5px 0 5px; font-size: 10px; color: red">
                                                RM<span style="font-size: 20px; letter-spacing: -2px;">
                                                    <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><%--<del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>--%>
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


            <!--sale 2區塊開始-->
            <div style="width: 100%; position: relative; width: 900px; z-index: 1; margin: 0 auto">
                <a id="gosale2"></a>
            </div>

            <!--帶商品吧-->
            <div style="width: 100%; margin: 0 auto; display: block; max-width: 900px; position: relative; z-index: 2; background-color: #5e020d; height: 570px; list-style-type: none;">

                <div class="gift2 am-cf" style="width: 850px;">
                    <div style="float: left; width: 20%; margin: 40px 0 0 0">
                        <asp:ImageButton ID="imgBtn2" runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20180222/pc02.png" CssClass="coupon-btn" OnClick="imgBtn2_Click" />
                        <%--  <img src="https://www.hawooo.com/images/ftp/20180222/pc02.png" alt="15%off 彩妝" style="width: 90%; float: left;">--%>
                    </div>

                    <div id="div2" style="padding: 0 10px; float: left; width: 80%;">
                        <ul class="am-avg-sm-4">
                            <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: 24%; background: white; padding: 10px; margin: 10px 3px; z-index: 10;">
                                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                            <img width="100%" data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 5px 5px 0 5px; font-size: 10px; color: red">
                                                RM<span style="font-size: 20px; letter-spacing: -2px;">
                                                    <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><%--<del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>--%>
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


            <!--sale 3區塊開始-->
            <div style="width: 100%; position: relative; width: 900px; z-index: 1; margin: 0 auto">
                <a id="gosale3"></a>
            </div>

            <!--帶商品吧-->
            <div style="width: 100%; margin: 0 auto; display: block; max-width: 900px; position: relative; z-index: 2; background-color: #5e020d; height: 570px; list-style-type: none;">

                <div class="gift1 am-cf" style="width: 850px;">
                    <div style="float: left; width: 20%; margin: 40px 0 0 0">
                        <asp:ImageButton ID="imgBtn3" runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20180222/pc03.png" CssClass="coupon-btn" OnClick="imgBtn3_Click" />
                        <%-- <img src="https://www.hawooo.com/images/ftp/20180222/pc03.png" alt="12% off 內衣" style="width: 90%; float: left;">--%>
                    </div>

                    <div id="div3" style="padding: 0 10px; float: left; width: 80%;">
                        <ul class="am-avg-sm-4">
                            <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: 24%; background: white; padding: 10px; margin: 10px 3px; z-index: 10;">
                                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                            <img width="100%" data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 5px 5px 0 5px; font-size: 10px; color: red">
                                                RM<span style="font-size: 20px; letter-spacing: -2px;">
                                                    <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><%--<del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>--%>
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


            <!--sale 4區塊開始-->
            <div style="width: 100%; position: relative; width: 900px; z-index: 1; margin: 0 auto">
                <a id="gosale4"></a>

            </div>

            <!--帶商品吧-->
            <div style="width: 100%; margin: 0 auto; display: block; max-width: 900px; position: relative; z-index: 2; background-color: #5e020d; height: 570px; list-style-type: none;">


                <div class="gift2 am-cf" style="width: 850px;">
                    <div style="float: left; width: 20%; margin: 40px 0 0 0">
                        <asp:ImageButton ID="imgBtn4" runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20180222/pc04.png" CssClass="coupon-btn" OnClick="imgBtn4_Click" />
                        <%-- <img src="https://www.hawooo.com/images/ftp/20180222/pc04.png" alt="10% off保健" style="width: 90%; float: left;">--%>
                    </div>

                    <div id="div4" style="padding: 0 10px; float: left; width: 80%;">
                        <ul class="am-avg-sm-4">
                            <asp:Repeater ID="rp_product_list_4" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: 24%; background: white; padding: 10px; margin: 10px 3px; z-index: 10;">
                                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                            <img width="100%" data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 5px 5px 0 5px; font-size: 10px; color: red">
                                                RM<span style="font-size: 20px; letter-spacing: -2px;">
                                                    <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><%--<del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>--%>
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



            <!--sale 5區塊開始-->
            <div style="width: 100%; position: relative; width: 900px; z-index: 1; margin: 0 auto">
                <a id="gosale5"></a>
            </div>

            <!--帶商品吧-->
            <div style="width: 100%; margin: 0 auto; display: block; max-width: 900px; position: relative; z-index: 2; background-color: #5e020d; height: 570px; list-style-type: none;">
                <div class="gift1 am-cf" style="width: 850px;">
                    <div style="float: left; width: 20%; margin: 40px 0 0 0">
                        <asp:ImageButton ID="imgBtn5" runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20180222/pc05.png" CssClass="coupon-btn" OnClick="imgBtn5_Click" />
                        <%-- <img src="https://www.hawooo.com/images/ftp/20180222/pc05.png" alt="現折Rm20" style="width: 90%; float: left;">--%>
                    </div>

                    <div id="div5" style="padding: 0 10px; float: left; width: 80%;">
                        <ul class="am-avg-sm-4">
                            <asp:Repeater ID="rp_product_list_5" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: 24%; background: white; padding: 10px; margin: 10px 3px; z-index: 10;">
                                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                            <img width="100%" data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 5px 5px 0 5px; font-size: 10px; color: red">
                                                RM<span style="font-size: 20px; letter-spacing: -2px;">
                                                    <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><%--<del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>--%>
                                            </p>
                                        </a>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>

            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <!--商品結束-->

    <!--footer-->
    <div style="width: 100%; margin: 0 auto; display: block; max-width: 900px; z-index: 10; line-height: 16px">

        <table width="900" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="5%" bgcolor="#000000" style="padding-top: 0px; max-height: 55px;"></td>

                    <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px; max-height: 55px;">
                        <span style="text-decoration: underline; font-size: 16px;">一鍵狂領  天天享折扣<br>
                        </span>
                        <span style="color: white; line-height: 22px; font-size: 14px">• 活動期間內，會員可至『一鍵狂領活動頁』自行點選所需要的折扣券，折扣商品為活動頁之熱銷商品。折扣券使用完畢好物會員可自行再次點選補充折扣券。<br>
                        </span>
                        <br>



                        <span style="text-decoration: underline; font-size: 16px;">全站滿額抽 STARBUCKS台灣限定款<br>
                        </span>
                        <span style="color: white; line-height: 22px; font-size: 14px">• 參加滿額抽會員需於22/2-28/2內完成訂購，單筆訂單金額符合以下門檻且於1/3前完成付款流程⽅符合滿額抽獎資格，預計於20/3抽出10名得獎者，抽獎順序依據以下贈品順序，並於21/3公佈得獎名單，每人限得一次，不可重複獲獎。未於活動期間內完成付款或退換貨者均視同放棄，不得要求參加抽獎。<br>
                            <span style="color: #FFE406">• 單筆滿RM299：</span>
                            狗年不鏽鋼Togo冷水杯(台灣新年限定款保溫杯，市價RM135，共1組)、金狗獻瑞冷水壺(台灣新年限定款保溫杯，市價RM70，共1組)、旺旺來福隨行杯(台灣新年限定款保溫杯，市價RM65，共2組)。<br>
                            <span style="color: #FFE406">• 單筆滿RM399：</span>
                            旺旺來福隨身瓶(台灣新年限定款保溫杯，市價RM200，共4組)、AOHEARTS 雙層馬克杯(全球時尚品牌Alice+Olivia聯名款手繪真金杯口馬克杯，市價RM140，共2組)。<br>
                            •確認中獎人資格後，好物飛行將於於10/4前寄出滿額禮，如遇贈品缺貨時或其他不可抗力之因素，好物飛行有權以購物金遞補，RM299滿額贈贈品將以RM70替代，399滿額贈贈品將以RM140替代，恕不逐一通知。<br>
                        </span>
                        <br>




                        <span style="text-decoration: underline; font-size: 16px;">滿250現折28  滿350現折38<br>
                        </span>
                        <span style="color: white; line-height: 22px; font-size: 14px">• 活動期間內訂購好物官網商品者，即可享有『滿250現折28  滿350現折38』，是否符合現折資格均以最終訂單金額為準，最終訂單金額為扣除所有Ha幣/折扣券/購物金後的實際付款金額。<br>
                        </span>
                        <br>





                        <span style="text-decoration: underline; font-size: 16px;">其他<br>
                        </span>
                        <span style="color: white; line-height: 22px; font-size: 14px">•參加本活動者即同意受本活動辦法及注意事項之規範，如有違反本活動辦法及注意事項者，本公司得取消其參加或兌換資格，並對於任何破壞本活動之⾏為保留法律追訴權。其他明顯違反活動公平性之⽅式，意圖混淆或影響活動結果者，⼀經本公司發現或經第三⼈檢舉經查證屬實，本公司有權⽴即取消其得獎資格，除追回獎品外，並對於任何破壞本活動之⾏為保留法律追訴權。<br>
                            • 本公司保留活動與贈品變更以及擁有修改及取消此活動的權利，無需事前通知，同時有對此活動之所有事宜有最終解釋與裁決權。</span>
                    </td>

                    <td width="5%" bgcolor="#000000" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>

                </tr>
            </tbody>
        </table>
    </div>



    <!-- 一個看不見的div 高度0-->
    <div class="invisible" style="z-index: 13;">
        <!-- box是固定的nav-->
        <div class="box">
            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180222/sidebar_01.png" style="width: 150px; margin-bottom: -1px" alt="menu"></a>


            <a href="javascript:void(0)" onclick="GoID('gosale1')">
                <img src="https://www.hawooo.com/images/ftp/20180222/sidebar_02.png" style="width: 150px; margin-bottom: -1px" alt="保養"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale2')">
                <img src="https://www.hawooo.com/images/ftp/20180222/sidebar_03.png" style="width: 150px; margin-bottom: -1px" alt="美妝"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale3')">
                <img src="https://www.hawooo.com/images/ftp/20180222/sidebar_04.png" style="width: 150px; margin-bottom: -1px" alt="內衣"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale4')">
                <img src="https://www.hawooo.com/images/ftp/20180222/sidebar_05.png" style="width: 150px; margin-bottom: -1px" alt="媽咪"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale5')">
                <img src="https://www.hawooo.com/images/ftp/20180222/sidebar_06.png" style="width: 150px; margin-bottom: -1px" alt="生活"></a>

            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180222/sidebar_07.png" style="width: 150px; margin-bottom: -1px" alt="TOP"></a>

        </div>
    </div>


  <%--  <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/amazeui.min.js"></script>--%>
    <%--    <script type="text/javascript">
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 200 }, 500);
        }
    </script>--%>

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
        //    var tagid = $.url.param("tid");
        //    if (tagid != '') {
        //        GoID(tagid);
        //    }
        //})
        //function GoID(id) {
        //    $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
        //}


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

