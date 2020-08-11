<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true"
    CodeFile="hawooo2yearspart2.aspx.cs" Inherits="mobile_hawooo2yearspart2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        $(document).ready(function () {
            if (document.body.clientWidth < 530) {
                $(".am-img-responsive").height = "50%";
            }
        });
    </script>
    <style type="text/css">
        .beauty {
            background: url(https://www.hawooo.com/images/ftp/20171023/edmm_07.png)no-repeat;
            background-size: 100%;
            margin: 0px auto;
            padding: 0px;
        }

        .supplement {
            background: url(https://www.hawooo.com/images/ftp/20171023/edmm_10.png)no-repeat;
            background-size: 100%;
            height: 768px;
            margin: 0px auto;
            padding: 0px;
        }

        .life {
            background: url(https://www.hawooo.com/images/ftp/20171023/edmm_13.png)no-repeat;
            background-size: 100%;
            height: 760px;
            margin: 0px auto;
            padding: 0px;
        }

        .fashion {
            background: url(https://www.hawooo.com/images/ftp/20171023/edmm_16.png)no-repeat;
            background-size: 100%;
            height: 760px;
            margin: 0px auto;
            padding: 0px;
        }

        .mom {
            background: url(https://www.hawooo.com/images/ftp/20171023/edmm_19.png)no-repeat;
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
                 <%--   <div data-id="#gobeauty" onclick="getThisId(this)">
                        <img src="https://www.hawooo.com/images/ftp/20171012/sec_01.png" style="width: 100%;" alt="美妝保養">
                    </div>--%>

                  <a href="#gobeauty" style="display: inline">
                    <img src="https://www.hawooo.com/images/ftp/20171012/sec_01.png" style="width: 100%;" alt="美妝保養"></a>

                </li>

                <li class="am-fl">
                   <%-- <div data-id="#gosupplement" onclick="getThisId(this)">
                        <img src="https://www.hawooo.com/images/ftp/20171012/sec_02.png" style="width: 100%;" alt="保健">
                    </div>--%>
                    <a href="#gosupplement" style="display: inline">
                        <img src="https://www.hawooo.com/images/ftp/20171012/sec_02.png" style="width: 100%;" alt="保健"></a>

                </li>

                <li class="am-fl">
                   <%-- <div data-id="#golife" onclick="getThisId(this)">
                        <img src="https://www.hawooo.com/images/ftp/20171012/sec_03.png" style="width: 100%;" alt="生活">
                    </div>--%>
                      <a href="#golife" style="display: inline">
                        <img src="https://www.hawooo.com/images/ftp/20171012/sec_03.png" style="width: 100%;" alt="生活"></a>

                </li>

                <li class="am-fl">
                   <%-- <div data-id="#gofashion" onclick="getThisId(this)">
                        <img src="https://www.hawooo.com/images/ftp/20171012/sec_04.png" style="width: 100%;" alt="流行時尚">
                    </div>--%>
                     <a href="#gofashion" style="display: inline">
                        <img src="https://www.hawooo.com/images/ftp/20171012/sec_04.png" style="width: 100%;" alt="流行時尚"></a>

                </li>

                <li class="am-fl">
                   <%-- <div data-id="#gobaby" onclick="getThisId(this)">
                        <img src="https://www.hawooo.com/images/ftp/20171012/sec_05.png" style="width: 100%;" alt="母嬰">
                    </div>--%>
                    <a href="#gobaby" style="display: inline">
                        <img src="https://www.hawooo.com/images/ftp/20171012/sec_05.png" style="width: 100%;" alt="母嬰"></a>

                </li>


            </ul>
        </div>
        <!--五大類別小選單再見-->

        <!--edm開始-->
        <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;">
                    <img alt="HaWooo 2yrs 我生日 你送禮" src="https://www.hawooo.com/images/ftp/20171023/edmm_01.png" style="float: left; display: block; width: 100%;" /></li>

                <li style="margin: 0;">
                    <img alt="熱銷商品 up to 60% off" src="https://www.hawooo.com/images/ftp/20171023/edmm_02.png" style="float: left; display: block; width: 40%;" /></li>

                <li style="margin: 0;">
                    <a href="20171022lottery.aspx">
                        <img alt="消費就送每日限量禮" src="https://www.hawooo.com/images/ftp/20171023/edmm_03.png" style="float: left; display: block; width: 60%;" />
                    </a></li>


                <li style="margin: 0;">
                    <img alt="最高現折RM100" src="https://www.hawooo.com/images/ftp/20171023/edmm_04.png" style="float: left; display: block; width: 60%;" /></li>


                <li style="margin: 0;">
                    <img alt="消費滿300 就送面膜抽台灣來回機票" src="https://www.hawooo.com/images/ftp/20171023/edmm_05.png" style="float: left; display: block; width: 40%;" /></li>

                <li style="margin: 0;"><a id="gobeauty" href="hawooo2yearsPageA.aspx">
                    <img alt="beauty 讓你一路美到年底" src="https://www.hawooo.com/images/ftp/20171023/edmm_06.png" style="float: left; display: block; width: 100%;" /></a></li>

            </ul>
        </div>


        <!--救救我美妝-->
        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">
            <img src="https://www.hawooo.com/images/ftp/20171012/edmm_07.png" style="width: 100%">
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



        <!--美妝more+保健-->
        <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;"><a href="hawooo2yearsPageA.aspx">
                    <img alt="Beauty看更多" src="https://www.hawooo.com/images/ftp/20171023/edmm_08.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a id="gosupplement" href="hawooo2yearsPageB.aspx">
                    <img alt="supplement 平時不保健 老大徒傷悲" src="https://www.hawooo.com/images/ftp/20171023/edmm_09.png" style="float: left; display: block; width: 100%;" /></a></li>
            </ul>
        </div>



        <!--救救我保健-->
        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">

            <img src="https://www.hawooo.com/images/ftp/20171012/edmm_07.png" style="width: 100%">
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


        <!--保健more+生活-->
        <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;"><a href="hawooo2yearsPageB.aspx">
                    <img alt="Supplement看更多" src="https://www.hawooo.com/images/ftp/20171023/edmm_11.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a id="golife" href="hawooo2yearsPageC.aspx">
                    <img alt="life 持家精簡 up tp 30%" src="https://www.hawooo.com/images/ftp/20171023/edmm_12.png" style="float: left; display: block; width: 100%;" /></a></li>
            </ul>
        </div>



        <!--救救我生活-->
        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">

            <img src="https://www.hawooo.com/images/ftp/20171012/edmm_07.png" style="width: 100%">
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



        <!--生活more+時尚-->
        <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;"><a href="hawooo2yearsPageC.aspx">
                    <img alt="life看更多" src="https://www.hawooo.com/images/ftp/20171023/edmm_14.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a id="gofashion" href="hawooo2yearsPageD.aspx">
                    <img alt="fashion 血拼不內疚 up tp 20%" src="https://www.hawooo.com/images/ftp/20171023/edmm_15.png" style="float: left; display: block; width: 100%;" /></a></li>
            </ul>
        </div>




        <!--救救我時尚-->
        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">

            <img src="https://www.hawooo.com/images/ftp/20171012/edmm_07.png" style="width: 100%">
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


        <!--時尚more+媽寶-->
        <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;"><a href="hawooo2yearsPageD.aspx">
                    <img alt="fashion看更多" src="https://www.hawooo.com/images/ftp/20171023/edmm_17.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a id="gobaby" href="hawooo2yearsPageE.aspx">
                    <img alt="mom baby寶貝健康不能省" src="https://www.hawooo.com/images/ftp/20171023/edmm_18.png" style="float: left; display: block; width: 100%;" /></a></li>
            </ul>
        </div>




        <!--救救我媽寶-->
        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">

            <img src="https://www.hawooo.com/images/ftp/20171012/edmm_07.png" style="width: 100%">
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



        <!--媽寶more+footer-->
        <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

                <li style="margin: 0;"><a href="hawooo2yearsPageE.aspx">
                    <img alt="baby看更多" src="https://www.hawooo.com/images/ftp/20171023/edmm_20.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;">
                    <img alt="hawooo footer" src="https://www.hawooo.com/images/ftp/20171023/edmm_21.png" style="float: left; display: block; width: 100%;" /></li>
            </ul>
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
            //var thisDivTop = $("body").find("#" + thisHref).offset().top - 120;
            var thisDivTop = $("body").find("#" + thisHref).offset().top ;
            $("body,html").stop(true, false).animate({ scrollTop: thisDivTop }, 500);
        }
    </script>

</asp:Content>
