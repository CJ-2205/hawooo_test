<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20171111part2.aspx.cs" Inherits="user_20171111part2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <script>

        $(document).ready(function () {

            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    window.location.href = "https://www.hawooo.com/mobile/20171111part2.aspx";
                }
            }
        }
         )
    </script>

    <%--    <link rel="stylesheet" href="assets/css/amazeui.min.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="stylesheet" href="assets/css/newyearmom.css">--%>

    <style type="text/css">
        body {
            position: relative;
            height: 900vh;
        }

        .invisible {
            position: fixed;
            bottom: 5px;
            left: 0;
            right: 0;
            margin: 0 auto;
            width: 1080px;
            height: 2px;
        }

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
            width: 900px;
            height: 100vh;
            background: #aaa;
        }

            .pic img {
                position: absolute;
                right: 0;
                width: 900px;
            }

        .buy1 {
            background: url(https://www.hawooo.com/images/ftp/20171110/edm_06.png)no-repeat;
            background-size: 100%;
            height: 1490px;
            margin: 0px auto;
            padding: 0px;
        }

        .rm110 {
            background: url(https://www.hawooo.com/images/ftp/20171110/edm_08.png)no-repeat;
            background-size: 100%;
            height: 620px;
            margin: 0px auto;
            padding: 0px;
        }

        .off30 {
            background: url(https://www.hawooo.com/images/ftp/20171110/edm_10.png)no-repeat;
            background-size: 100%;
            height: 1480px;
            margin: 0px auto;
            padding: 0px;
        }

        .off20 {
            background: url(https://www.hawooo.com/images/ftp/20171110/edm_12.png)no-repeat;
            background-size: 100%;
            height: 1480px;
            margin: 0px auto;
            padding: 0px;
        }

        .hotsale {
            background: url(https://www.hawooo.com/images/ftp/20171110/edm_14.png)no-repeat;
            background-size: 100%;
            height: 1480px;
            margin: 0px auto;
            padding: 0px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%; margin-bottom: -2px;">

            <asp:Panel ID="PanelPart1" runat="server" Visible="false">
                <li style="margin: 0;">
                    <img alt="99免運最後一波" src="https://www.hawooo.com/images/ftp/20171110/1110_I03.png" style="float: left; display: block; width: 100%;" /></li>

                <li style="margin: 0;"><a id="gotop"></a>
                    <img alt="單身購物節 超強加碼只有兩天" src="https://www.hawooo.com/images/ftp/20171110/edm_01.gif" style="float: left; display: block; width: 100%;" /></li>

                <li style="margin: 0;"><a href="https://www.hawooo.com/user/20171110iphonerank.aspx" target="_blank">
                    <img alt="iPhoneX累積賽" src="https://www.hawooo.com/images/ftp/20171110/edm_02.png" style="float: left; display: block; width: 300px;" /></a></li>


                <li style="margin: 0;"><a href="https://www.hawooo.com/user/shop.aspx?eid=276" target="_blank">
                    <img alt="滿Rm399送111購物金" src="https://www.hawooo.com/images/ftp/20171110/edm_03.png" style="float: left; display: block; width: 300px;" /></a></li>

                <li style="margin: 0;"><a href="https://www.hawooo.com/user/20171110happysales.aspx" target="_blank">
                    <img alt="整點特賣會" src="https://www.hawooo.com/images/ftp/20171110/edm_04.png" style="float: left; display: block; width: 300px;" /></a></li>
            </asp:Panel>

            <asp:Panel ID="PanelPart2" runat="server" Visible="false">
                <!--Howard看這裡!!!! 更新開始 複製吧-->
                <li style="margin: 0;"><a id="gotop"></a>
                    <img alt="單身購物節 超強加碼只有兩天" src="https://www.hawooo.com/images/ftp/20171110/1112edm_01.gif" style="float: left; display: block; width: 100%;" /></li>

                <li style="margin: 0;">
                    <img alt="滿300送快車肉乾" src="https://www.hawooo.com/images/ftp/20171110/1112edm_02.png" style="float: left; display: block; width: 25%;" /></li>


                <li style="margin: 0;">
                    <img alt="99免運" src="https://www.hawooo.com/images/ftp/20171110/1112edm_03.png" style="float: left; display: block; width: 25%;" /></li>

                <li style="margin: 0;">
                    <img alt="最後一黨買一送一" src="https://www.hawooo.com/images/ftp/20171110/1112edm_04.png" style="float: left; display: block; width: 25%;" /></li>

                <li style="margin: 0;">
                    <img alt="搶110折扣卷" src="https://www.hawooo.com/images/ftp/20171110/1112edm_05.png" style="float: left; display: block; width: 25%;" /></li>

                <!--更新截止 其他的都沒變-->

            </asp:Panel>


            <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
                <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                    <li style="margin: 0;"><a id="gobuy1"></a>
                        <img alt="買一送一" src="https://www.hawooo.com/images/ftp/20171110/edm_05.png" style="float: left; display: block; width: 100%;" /></li>

                </ul>
            </div>

            <!--買一送一開始帶商品-->
            <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
                <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px;">
                    <li style="margin: 0;">
                        <div class="buy1 am-cf" style="width: 900px;">
                            <div style="padding: 0 50px 0 50px;">
                                <ul class="am-avg-sm-4">



                                    <!--複製吧-->

                                    <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                                        <ItemTemplate>
                                            <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                                                <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                    <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                                    <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                                        RM<span style="font-size: 22px; letter-spacing: -2px;">
                                                            <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
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

            <!--Rm110商品開始-->
            <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
                <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                    <li style="margin: 0;"><a id="go110"></a>
                        <img alt="最高現折RM110專區" src="https://www.hawooo.com/images/ftp/20171110/edm_07.png" style="float: left; display: block; width: 100%;" /></li>
                </ul>
            </div>



            <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
                <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
                    <li style="margin: 0;">
                        <div class="rm110 am-cf" style="width: 900px;">
                            <div style="padding: 0 50px 0 50px;">
                                <ul class="am-avg-sm-4">


                                    <!--複製吧-->


                                    <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                                        <ItemTemplate>
                                            <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                                                <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                    <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                                    <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                                        RM<span style="font-size: 22px; letter-spacing: -2px;">
                                                            <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
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


            <!--30% off開始帶商品-->
            <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
                <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                    <li style="margin: 0;"><a id="go30"></a>
                        <img alt="下殺30% off" src="https://www.hawooo.com/images/ftp/20171110/edm_09.png" style="float: left; display: block; width: 100%;" /></li>
                </ul>
            </div>




            <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
                <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
                    <li style="margin: 0;">
                        <div class="off30 am-cf" style="width: 900px;">
                            <div style="padding: 0 50px 0 50px;">
                                <ul class="am-avg-sm-4">


                                    <!--複製吧-->


                                    <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                                        <ItemTemplate>
                                            <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                                                <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                    <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                                    <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                                        RM<span style="font-size: 22px; letter-spacing: -2px;">
                                                            <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
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


            <!--20% off開始帶商品-->
            <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
                <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                    <li style="margin: 0;"><a id="go20"></a>
                        <img alt="fashion 血拼不內疚 新品up to 20%" src="https://www.hawooo.com/images/ftp/20171110/edm_11.png" style="float: left; display: block; width: 100%;" /></li>
                </ul>
            </div>




            <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
                <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
                    <li style="margin: 0;">
                        <div class="off20 am-cf" style="width: 900px;">
                            <div style="padding: 0 50px 0 50px;">
                                <ul class="am-avg-sm-4">


                                    <!--複製吧-->

                                    <asp:Repeater ID="rp_product_list_4" runat="server" ViewStateMode="Enabled">
                                        <ItemTemplate>
                                            <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                                                <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                    <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                                    <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                                        RM<span style="font-size: 22px; letter-spacing: -2px;">
                                                            <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
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


            <!--HotSale開始帶商品-->
            <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
                <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                    <li style="margin: 0;"><a id="gosale"></a>
                        <img alt="Hot Sale 銷售強檔" src="https://www.hawooo.com/images/ftp/20171110/edm_13.png" style="float: left; display: block; width: 100%;" /></li>
                </ul>
            </div>




            <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
                <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
                    <li style="margin: 0;">
                        <div class="hotsale am-cf" style="width: 900px;">
                            <div style="padding: 0 50px 0 50px;">
                                <ul class="am-avg-sm-4">


                                    <!--複製吧-->

                                    <asp:Repeater ID="rp_product_list_5" runat="server" ViewStateMode="Enabled">
                                        <ItemTemplate>
                                            <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                                                <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                    <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                                    <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                                        RM<span style="font-size: 22px; letter-spacing: -2px;">
                                                            <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
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


            <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
                <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                    <li style="margin: 0;"><a href="#" target="_blank">
                        <img alt="hawooo footer活動辦法與內容" src="https://www.hawooo.com/images/ftp/20171110/edm_15.png" style="float: left; display: block; width: 100%;" /></a></li>

                    <!--公告上面那塊-->

                    <div>
                        <table width="900" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                                <tr>
                                    <td width="5%" bgcolor="#000000" style="padding-top: 0px; max-height: 55px;"></td>

                                    <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px; max-height: 55px;">
                                      
                                        满额赠送赠品 (12/11-15/11)<span style="color: white;"><br>
                                            •须符合单笔订单⾦额达到300者⽅可获得快车肉干一份，每笔订单限得一次，恕不累计⾦额重复得奖。限活动期间内完成付款流程者⽅可获得赠品，赠品将随货寄出，若赠品提前送完，会统⼀于30/11前以RM25购物⾦代替赠品，下单即可折抵使⽤。</span>
                                    </td>

                                    <td width="5%" bgcolor="#000000" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>

                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <!--公告下面那塊-->

                    <div>
                        <table width="900" border="0" cellspacing="0" cellpadding="0" class="twoyearbottom">
                            <tbody>
                                <tr>
                                    <td width="5%" bgcolor="#23000b" style="padding-top: 0px; max-height: 55px;"></td>

                                    <td width="90%" bgcolor="#23000b" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px; max-height: 55px;">• 活动期间⻄⾺运费RM 19，满额RM 99免运；东⾺运费RM 29，满额RM 199免运。<br>
                                        •参加本活动即同意受本活动办法及注意事项之规范，如有违反本活动办法及注意事项者，本公司得取消其参加或兑换资格，并对于任何破坏本活动之⾏为保留法律追诉权。本公司保留活动与赠品变更以及拥有修改及取消此活动的权利，无需事前通知，同时有对此活动之所有事宜有最终解释与裁决权。<br>
                                    </td>

                                    <td width="5%" bgcolor="#23000b" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>

                                </tr>
                            </tbody>
                        </table>
                    </div>
                </ul>
            </div>



            <!-- 一個看不見的div 高度0 -->
            <%--<div class="invisible">
                <!-- box是固定的nav -->
                <div class="box">
                    <img src="https://www.hawooo.com/images/ftp/20171110/1007_pc-section_01.png" style="width: 100px; margin-bottom: -1px">


                    <a href="https://www.hawooo.com/user/20171110happysales.aspx">
                        <img src="https://www.hawooo.com/images/ftp/20171110/1007_pc-section_00.png" style="width: 100px; margin-bottom: -1px" alt="限時特殺"></a>

                    <a href="https://www.hawooo.com/user/shop.aspx?eid=276">
                        <img src="https://www.hawooo.com/images/ftp/20171110/1110_pc-section_07.png" style="width: 100px; margin-bottom: -1px;" alt="送111購物金"></a>

                    <a href="https://www.hawooo.com/user/20171110iphonerank.aspx">
                        <img src="https://www.hawooo.com/images/ftp/20171110/1007_pc-section_04.png" style="width: 100px" alt="iPhoneX累積消費賽"></a>

                </div>
            </div>--%>

            <script src="assets/js/jquery.min.js"></script>
            <script src="assets/js/amazeui.min.js"></script>
            <script type="text/javascript" src="171027.js"></script>


            <script src="assets/js/jquery.min.js"></script>
            <script src="assets/js/amazeui.min.js"></script>
            <script type="text/javascript" src="assets/js/171027.js"></script>
            <script type="text/javascript">


                function getThisId(e) {
                    var thisHref = $(e).attr("data-id");
                    var thisDivTop = $("body").find(thisHref).offset().top - 120;
                    $("body,html").stop(true, false).animate({ scrollTop: thisDivTop }, 500);
                }



                function twoYearsSideHide(e) {
                    var sidebottom = $(".invisible").offset().top - 100;
                    var yearbodybot = $(".twoyearbottom").offset().top + $(".twoyearbottom").height();
                    if (sidebottom > yearbodybot) {
                        $(".box").fadeOut();
                    } else {
                        $(".box").fadeIn();
                    }
                }

                $(document).ready(function () {
                    $(window).scroll(function () {
                        twoYearsSideHide();
                    })
                })
            </script>
</asp:Content>
