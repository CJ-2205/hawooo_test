<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true"
    CodeFile="20171208M.aspx.cs" Inherits="mobile_20171128" %>

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
    <script>
        $(function () {
            $("#body").removeClass("am-container");
        })
    </script>
    <div>


        <!--edm開始-->
        <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
                <div style="width: 100%; position: relative; max-width: 650px; z-index: 1; margin: 0 auto">
                    <img src="https://www.hawooo.com/images/ftp/20171207/edmmbg_01.png" alt="背景" style="width: 100%">

                    <div style="display: inline; position: absolute; z-index: 2; width: 66%; top: 0; bottom: 0; left: 0; right: 30%; margin: auto;">


                            <img src="https://www.hawooo.com/images/ftp/20171207/air1.png" alt="99西馬免運" style="position: absolute; top: 56%; margin: auto; width: 34%; left: -2%" />
                      

                        <a href="javascript:void(0)" onclick="GoID('sale4')">
                            <img src="https://www.hawooo.com/images/ftp/20171207/1207air2.png" alt="滿399抽RM1500" style="position: absolute; top: 37%; right: 0; left: -35%; margin: auto; width: 38%;" />
                        </a>

                        <a href="javascript:void(0)" onclick="GoID('sale1')">
                            <img src="https://www.hawooo.com/images/ftp/20171207/1207air3.png" alt="pointer" style="position: absolute; top: 39%; right: -46%; left: 0; margin: auto; width: 42%;" />
                        </a>

                    </div>
                </div>
            </ul>

        </div>


        <!--part1Banner-->
        <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px; background-color: #4aa940;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">


                <li style="margin: 0;"><a href="sale1.aspx" id="sale1">
                    <img alt="買就送 最高省210" src="https://www.hawooo.com/images/ftp/20171207/edmm_02.png" style="float: left; display: block; width: 100%;" /></a></li>

            </ul>
        </div>


        <!--part1商品-->
        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">


            <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; background-color: #4aa940; height: auto;">
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
        <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px; background-color: #4aa940;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;"><a href="sale2.aspx" id="sale2">
                    <img alt="買就送 最高省210" src="https://www.hawooo.com/images/ftp/20171207/edmm_05.png" style="float: left; display: block; width: 100%;" /></a></li>

            </ul>
        </div>


        <!--Part2商品-->
        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">

            <img src="https://www.hawooo.com/images/ftp/20171201/edmm_13.png" style="width: 100%">
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
        <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px; background-color: #dc4d3f;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;"><a href="sale3.aspx" id="sale3">
                    <img alt="聖誕禮物 好禮有優惠" src="https://www.hawooo.com/images/ftp/20171207/edmm_08.png" style="float: left; display: block; width: 100%;" /></a></li>
            </ul>
        </div>



        <!--Part3商品-->
        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">

            <img src="https://www.hawooo.com/images/ftp/20171201/edmm_15.png" style="width: 100%">
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
        <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px; background-color: #767892;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
                <li style="margin: 0;"><a href="sale4.aspx" id="sale4">
                    <img alt="回饋1500 立馬抽旅遊金" src="https://www.hawooo.com/images/ftp/20171207/edmm_11.png" style="float: left; display: block; width: 100%;" /></a></li>


            </ul>
        </div>




        <!--Part4商品-->
        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto; background-color: #767892;">

            <img src="https://www.hawooo.com/images/ftp/20171201/edmm_13.png" style="width: 100%">
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




        <!--footer-->
        <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;">
                    <img alt="hawooo.com" src="https://www.hawooo.com/images/ftp/20171201/edmm_20.png" style="float: left; display: block; width: 100%;" /></li>

            </ul>
        </div>

        <!---活動辦法開始啊-->
        <div style="width: 100%; max-width: 650px; margin: 0 auto;">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td width="5%" bgcolor="#000000" style="padding-top: 0px; max-height: 55px;"></td>

                            <td width="90%" bgcolor="#000000" style="text-align:left;font-family:Arial,Helvetica,sans-serif;font-size:12px;font-weight:bold;text-transform:uppercase;color:#f8d1dd;padding:10px 0px;max-height: 55px;">特惠商品<br>
              <span style="color:white;">
每个品牌折扣时段与金额不同，且部分商品没有优惠价格，请依官网公告的商品价格为准，逾时不候。折扣商品数量有限，售完为止，敬请见谅。<br></span>

<br>抢旅游金RM1500<span style="color:white;"><br>
7/12-25/12期间单笔订单消费满399即可获得一次抽奖资格(不可累计多笔订单金额)，且于26/12前完成付款流程，将有机会可获得旅游金RM1500，Hawooo将于5/1统一抽出中奖者并公布于Hawooo官网，并于15/1前以简讯/电子邮件等方式通知，敬请留意相关资讯，31/1前逾期未正式回覆并完成领取流程者，视同放弃。此旅游金将以现金券方式提供，必须于马来西亚Golden deluxe travel进行兑换，若选择之机票或团体旅游行程不足RM1500恕不退款，若超过者则可自行补足差额即可使用，使用期至31/10/2018，请中奖人至HaWooo马来西亚总部完成领取。</span> <br>

<br>免运门槛<span style="color:white;"><br>
活动期间，西马运费RM 19，满额RM 99免运;东马运费RM 25，满额RM 199免运。</span><br>

<br>其他<span style="color:white;"><br>
参加者参加本活动即同意受本活动办法及注意事项规范，如有违反本活动办法及注意事项，本公司取消其参加或兑换资格，并对任何破坏本活动之⾏为保留法律追诉权。其他明显违反活动公平性之寮式，意图混淆或影响活动结果的人，⼀经本公司发现或经第三方检验经查证属实，本公司有权⽴即取消其得奖资格，除追回奖品外，并对任何破坏本活动之⾏为保留法律追诉权。本公司保留活动与赠品变更以及拥有修改及取消此活动的权利，无需事前通知，同时有对此活动之所有事宜有最终解释与裁决权。</span> 
  
 </td>
                        <td width="5%" bgcolor="#000000" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>

                    </tr>
                </tbody>
            </table>
        </div>

        <!---活動辦法掰掰-->
    </div>

    <!--[if (gte IE 9)|!(IE)]><!-->
    <script src="assets/js/jquery.min.js"></script>
    <!--<![endif]-->
    <script src="assets/js/amazeui.min.js"></script>

      <script type="text/javascript" src="assets/js/jquery.url.js"></script>
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

        $(function () {
            var url = $.url;

            if ($.url.param("tid") != "") {

                var tagid = $.url.param("tid");
                if (tagid != '') {
                    GoID(tagid);
                }
            }
        })
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);

        }
    </script>

</asp:Content>
