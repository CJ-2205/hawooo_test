<%@ Page Language="C#" AutoEventWireup="true" CodeFile="20171214.aspx.cs" MasterPageFile="~/mobile/mobile.master" Inherits="_17_12_17_Christmas_event4_mobile_20171214" %>

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

    <link rel="stylesheet" href="assets/css/newyearmom.css">
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
    <div>


        <!--edm開始-->
        <div class="am-show-sm">
            <div class="fullBanner">
                <img src="https://www.hawooo.com/images/ftp/20171220/edm_003.png" alt="聖誕最後一波"></div>
        </div>

        <div class="am-show-sm">
            <div class="fullBanner">
                <img src="https://www.hawooo.com/images/ftp/20171220/edmm_03.png" alt="全館滿額抵"></div>
        </div>


        <!--系統開始帶商品-->
        <!--下方商品-->
        <div class="pageBox" style="background-color: #767892">
            <div class="am-container" style="padding: 2px;">


                <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <div class="am-u-md-3 am-u-sm-6 product" style="margin-top: 20px; float: left">
                            <div class="am-panel am-panel-default pitem">
                                <div class="imgContain">
                                    <a href="product.aspx?id=<%# Eval("WP01") %>">
                                        <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" />
                                    </a>
                                </div>
                                <div class="am-panel-bd" style="background: #f7f8f8; padding: 5px;">
                                    <div class="gallery-title" style="padding: 2px; font-size: 14px; margin-left: 5px; min-height: 40px; height: 45px; overflow: hidden">
                                        <a href="product.aspx?id=<%# Eval("WP01") %>">
                                            <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                        </a>
                                    </div>
                                    <%-- &nbsp;--%>
                                    <div class="gallery-detail" style="padding: 5px;">
                                        <span class="money_txt_style" style="font-size: 15px; font-weight: bold; color: #f54954">RM
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
            <img src="https://www.hawooo.com/images/ftp/20171201/edmm_20.png" alt="HaWooo.com">
        </footer>
        <div style="width: 100%; max-width: 650px; margin: 0 auto;">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td width="5%" bgcolor="#000000" style="padding-top: 0px; max-height: 55px;"></td>

                        <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: small; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 10px 0px; max-height: 55px;">满额抽奖<br>
                            <span style="color: white;">• 单笔满199抽购物金RM100(20名)、单笔满299抽购物金RM200(5名)：15/12-25/12期间单笔订单消费满活动门槛即可获得一次抽奖资格(不可累计多笔订单金额)，且于26/12前完成付款流程，将有机会可获得购物金，Hawooo将于5/1统一抽出中奖者并公布于Hawooo官网，并于当日汇入得奖会员个人帐户中。<br>
                                • 399抽旅游金RM1500 (1名)：7/12-25/12期间单笔订单消费满399即可获得一次抽奖资格（不可累计多笔订单金额），且于26/12前完成付款流程，将有机会可获得旅游金RM1500，Hawooo将于5/1统一抽出中奖者并公布于Hawooo官网，并于15/1前以简讯/email等方式通知，敬请留意相关资讯，31/1前逾期未正式回覆并完成领取流程者，视同放弃。此旅游金将以cash voucher方式提供，必须于马来西亚Golden deluxe travel进行兑换，若选择之机票或团体旅游行程不足RM1500恕不退款，若超过者则可自行补足差额即可使用，使用期间至31 /10/2018，请中奖人至Hawoooo马来西亚总部完成领取。<br>
                            </span>

                            <br>
                            免运门槛<span style="color: white;"><br>
                                •西马运费RM 19，满额RM 99免运；东马运费RM 25，满额RM 199免运。</span>

                            <br>
                            <br>
                            其他<span style="color: white;"><br>
                                •参加者参加本活动即同意受本活动办法及注意事项之规范，如有违反本活动办法及注意事项者，本公司得取消其参加或兑换资格，并对于任何破坏本活动之⾏为保留法律追诉权。<br>
                                •其他明显违反活动公平性之⽅式， 意图混淆或影响活动结果者，⼀经本公司发现或经第三⼈检举经查证属实， 本公司有权⽴即取消其得奖资格，除追回奖品外，并对于任何破坏本活动之⾏为保留法律追诉权。本公司保留活动与赠品变更以及拥有修改及取消此活动的权利，无需事前通知，同时有对此活动之所有事宜有最终解释与裁决权。             </span></td>

                        <td width="5%" bgcolor="#000000" style="text-align: center; font-family: Arial,Helvetica,sans-serif; font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00; padding-top: 0px; max-height: 55px;"></td>

                    </tr>
                </tbody>
            </table>
        </div>

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
