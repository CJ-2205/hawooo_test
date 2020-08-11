<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true"
    CodeFile="20171111part2.aspx.cs" Inherits="mobile_20171111part2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        $(document).ready(function () {
            if (document.body.clientWidth < 530) {
                $(".am-img-responsive").height = "50%";
            }
        });
    </script>
    <style type="text/css">
        .buy1 {
            background: url(https://www.hawooo.com/images/ftp/20171110/M/edmm_07.png)no-repeat;
            background-size: 100%;
            margin: 0px auto;
            padding: 0px;
        }

        .rm110 {
            background: url(https://www.hawooo.com/images/ftp/20171110/M/edmm_09.png)no-repeat;
            background-size: 100%;
            height: 768px;
            margin: 0px auto;
            padding: 0px;
        }

        .off30 {
            background: url(https://www.hawooo.com/images/ftp/20171110/M/edmm_11.png)no-repeat;
            background-size: 100%;
            height: 760px;
            margin: 0px auto;
            padding: 0px;
        }

        .off20 {
            background: url(https://www.hawooo.com/images/ftp/20171110/M/edmm_13.png)no-repeat;
            background-size: 100%;
            height: 760px;
            margin: 0px auto;
            padding: 0px;
        }

        .hotsale {
            background: url(https://www.hawooo.com/images/ftp/20171110/M/edmm_15.png)no-repeat;
            background-size: 100%;
            height: 758px;
            margin: 0px auto;
            padding: 0px;
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
    <div>


        <!--五大類別小選單開始-->
        <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999;">
            <ul class="am-avg-sm-5 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
                <li class="am-fl">
                    <a href="20171111part2page1.aspx" style="display: inline">
                        <img src="https://www.hawooo.com/images/ftp/20171031/secM_01.png" style="width: 100%;" alt="買一送一"></a>
                </li>

                <li class="am-fl">
                    <a href="20171111part2page2.aspx" style="display: inline">
                        <img src="https://www.hawooo.com/images/ftp/20171031/secM_02.png" style="width: 100%;" alt="現折RM110"></a>
                </li>

                <li class="am-fl">
                    <a href="20171111part2page3.aspx" style="display: inline">
                        <img src="https://www.hawooo.com/images/ftp/20171031/secM_03.png" style="width: 100%;" alt="30% off"></a>
                </li>

                <li class="am-fl">
                    <a href="20171111part2page4.aspx" style="display: inline">
                        <img src="https://www.hawooo.com/images/ftp/20171031/secM_04.png" style="width: 100%;" alt="20% off"></a>
                </li>

                <li class="am-fl">
                    <a href="20171111part2page5.aspx" style="display: inline">
                        <img src="https://www.hawooo.com/images/ftp/20171031/secM_05.png" style="width: 100%;" alt="暢銷單品"></a>
                </li>


            </ul>
        </div>
        <!--五大類別小選單再見-->




        <!--edm開始-->
        <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                <asp:Panel ID="PanelPart1" runat="server" Visible="false">
                    <li style="margin: 0;">
                        <img alt="單身購物節" src="https://www.hawooo.com/images/ftp/20171110/M/edmm_01.gif" style="float: left; display: block; width: 100%;" /></li>

                    <li style="margin: 0;"><a href="20171110iphonerank.aspx" target="_blank">
                        <img alt="iPhone累積賽" src="https://www.hawooo.com/images/ftp/20171110/M/edmm_02.png" style="float: left; display: block; width: 50%;" /></a></li>

                    <li style="margin: 0;"><a href="20171110cash.aspx" target="_blank">
                        <img alt="滿399送111購物金" src="https://www.hawooo.com/images/ftp/20171110/M/edmm_03.png" style="float: left; display: block; width: 50%;" /></a></li>


                    <li style="margin: 0;"><a href="https://www.hawooo.com/mobile/20171110happysales.aspx#" target="_blank">
                        <img alt="整點特賣會" src="https://www.hawooo.com/images/ftp/20171110/M/edmm_04.png" style="float: left; display: block; width: 50%;" /></a></li>


                    <li style="margin: 0;">
                        <img alt="滿380現折50 滿480現折60" src="https://www.hawooo.com/images/ftp/20171110/M/edmm_05.png" style="float: left; display: block; width: 50%;" /></li>
                </asp:Panel>
                <asp:Panel ID="PanelPart2" runat="server" Visible="false">
                    <li style="margin: 0;">
                        <img alt="單身購物節" src="https://www.hawooo.com/images/ftp/20171110/M/12edmm_01.gif" style="float: left; display: block; width: 100%;" /></li>

                    <li style="margin: 0;">
                        <img alt="iPhone累積賽" src="https://www.hawooo.com/images/ftp/20171110/M/12edmm_02.png" style="float: left; display: block; width: 50%;" /></li>

                    <li style="margin: 0;">
                        <img alt="滿399送111購物金" src="https://www.hawooo.com/images/ftp/20171110/M/12edmm_03.png" style="float: left; display: block; width: 50%;" /></li>


                    <li style="margin: 0;">
                        <img alt="整點特賣會" src="https://www.hawooo.com/images/ftp/20171110/M/12edmm_04.png" style="float: left; display: block; width: 50%;" /></li>


                    <li style="margin: 0;">
                        <img alt="滿380現折50 滿480現折60" src="https://www.hawooo.com/images/ftp/20171110/M/12edmm_05.png" style="float: left; display: block; width: 50%;" /></li>
                </asp:Panel>

            </ul>

        </div>




        <!--part1Banner-->
        <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;"><a id="gobuy1" href="20171111part2page1.aspx">
                    <img alt="買一送一 賠錢交朋友" src="https://www.hawooo.com/images/ftp/20171110/M/edmm_06.gif" style="float: left; display: block; width: 100%;" /></a></li>

            </ul>
        </div>


        <!--part1商品-->
        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">
            <img src="https://www.hawooo.com/images/ftp/20171031/edmm_07.png" style="width: 100%">
            <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; margin: auto;">
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
        </div>



        <!--Part2Banner-->
        <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;"><a id="go110" href="20171111part2page2.aspx">
                    <img alt="最高現折 Rm110" src="https://www.hawooo.com/images/ftp/20171110/M/edmm_08.gif" style="float: left; display: block; width: 100%;" /></a></li>

            </ul>
        </div>


        <!--Part2商品-->
        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">

            <img src="https://www.hawooo.com/images/ftp/20171031/edmm_07.png" style="width: 100%">
            <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; margin: auto;">
                <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
                    <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
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
        </div>


        <!--Part3Banner-->
        <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;"><a id="go30" href="20171111part2page3.aspx">
                    <img alt="30%" src="https://www.hawooo.com/images/ftp/20171110/M/edmm_10.gif" style="float: left; display: block; width: 100%;" /></a></li>

            </ul>
        </div>




        <!--Part3商品-->
        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">

            <img src="https://www.hawooo.com/images/ftp/20171031/edmm_07.png" style="width: 100%">
            <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; margin: auto;">
                <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
                    <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
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
        </div>



        <!--Part4Banner-->
        <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;"><a id="go20" href="20171111part2page4.aspx">
                    <img alt="20%" src="https://www.hawooo.com/images/ftp/20171110/M/edmm_12.gif" style="float: left; display: block; width: 100%;" /></a></li>

            </ul>
        </div>




        <!--Part4商品-->
        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">

            <img src="https://www.hawooo.com/images/ftp/20171031/edmm_07.png" style="width: 100%">
            <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; margin: auto;">
                <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">
                    <asp:Repeater ID="rp_product_list_4" runat="server" ViewStateMode="Enabled">
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
        </div>


        <!--Part5Banner-->
        <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;"><a id="gosale" href="20171111part2page5.aspx">
                    <img alt="暢銷單品hot sale" src="https://www.hawooo.com/images/ftp/20171110/M/edmm_14.gif" style="float: left; display: block; width: 100%;" /></a></li>

            </ul>
        </div>




        <!--Part5商品-->
        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">

            <img src="https://www.hawooo.com/images/ftp/20171031/edmm_07.png" style="width: 100%">
            <div style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; margin: auto;">
                <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0;">

                    <asp:Repeater ID="rp_product_list_5" runat="server" ViewStateMode="Enabled">
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
        </div>



        <!--footer-->
        <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;">
                    <img alt="30%" src="https://www.hawooo.com/images/ftp/20171110/M/edmm_16.png" style="float: left; display: block; width: 100%;" /></li>

                <%--          <!--公告上面那塊-->

                <div>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                            <tr>
                                <td width="5%" bgcolor="#000000" style="padding-top: 0px; max-height: 55px;"></td>

                                <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 13px; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px; max-height: 55px;">累积消费赛<br>
                                    <span style="color: white;">• 参加会员需于10/11-11/11内完成订购，且于12/11前完成付款⽅可参加，如未完成付款流程者或退换货者均视同放弃。排名参考当下订购单累积的⾦额，但活动结算后将⾃动排除未付款订单⾦额，实际得奖名次将于11/16公布。如遇同⾦额者，将依据付款完成时间先后顺序，恕不重复提供并列之奖项。<br>
                                        •Top 1赠品为iPhone X (64G)的提供时间将视⾺来⻄亚实际上市时间⽽定，得奖者必须于15/12配合签回并寄达完整赠品领取单后才会寄送赠品，暂定15/1前寄送赠品，得奖⼈不得选择赠品颜⾊，如无法配合者视同放弃。Top 2-Top 5的Ha币赠将于11/30前完成归户，请于使用期限至2018/2/28，请于期限内使用完毕，逾期恕不补发。
                                    </span>
                                    <br>
                                    <br>
                                    其他<span style="color: white;">
                                        <br>
                                        •参加本活动者即同意受本活动办法及注意事项之规范，如有违反本活动办法及注意事项者，本公司得取消其参加或兑换资格，并对于任何破坏本活动之⾏为保留法律追诉权。其他明显违反活动公平性之⽅式，意图混淆或影响活动结果者，⼀经本公司发现或经第三⼈检举经查证属实， 本公司有权⽴即取消其得奖资格，除追回奖品外，并对于任何破坏本活动之⾏为保留法律追诉权。<br>
                                        • 本公司保留活动与赠品变更以及拥有修改及取消此活动的权利，无需事前通知，同时有对此活动之所有事宜有最终解释与裁决权。
                                    </span>
                                </td>

                                <td width="5%" bgcolor="#000000" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>

                            </tr>
                        </tbody>
                    </table>
                </div>--%>

                <!--公告下面那塊-->

                <div>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                            <tr>
                                <td width="5%" bgcolor="#000000" style="padding-top: 0px; max-height: 55px;"></td>

                                <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px; max-height: 55px;">满额赠送赠品 (12/11-15/11)<span style="color: white;"><br>
                                    •须符合单笔订单⾦额达到300者⽅可获得快车肉干一份，每笔订单限得一次，恕不累计⾦额重复得奖。限活动期间内完成付款流程者⽅可获得赠品，赠品将随货寄出，若赠品提前送完，会统⼀于30/11前以RM25购物⾦代替赠品，下单即可折抵使⽤。</span><br>
                                    其他<span style="color: white;">
                                        <br>
                                        •参加本活动者即同意受本活动办法及注意事项之规范，如有违反本活动办法及注意事项者，本公司得取消其参加或兑换资格，并对于任何破坏本活动之⾏为保留法律追诉权。其他明显违反活动公平性之⽅式，意图混淆或影响活动结果者，⼀经本公司发现或经第三⼈检举经查证属实， 本公司有权⽴即取消其得奖资格，除追回奖品外，并对于任何破坏本活动之⾏为保留法律追诉权。<br>
                                        • 本公司保留活动与赠品变更以及拥有修改及取消此活动的权利，无需事前通知，同时有对此活动之所有事宜有最终解释与裁决权。
                                    </span>
                                </td>

                                <td width="5%" bgcolor="#000000" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>

                            </tr>
                        </tbody>
                    </table>
                </div>
            </ul>
        </div>

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
