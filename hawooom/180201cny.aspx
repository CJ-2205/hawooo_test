<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180201cny.aspx.cs" Inherits="_180201cny" MasterPageFile="~/mobile/mobile.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <%--  <link href="../2017motherday/assets/css/newyearmom.css" rel="stylesheet" />
    <script>
        $(function () {
            $("#body").removeClass("am-container");
            $("#body").attr("onscroll", "twoYearsSideHide()");
        })
    </script>--%>
    <link rel="stylesheet" href="assets/css/newyearmom.css">
    <script>
        $(document).ready(function () {
            if (document.body.clientWidth < 530) {
                $(".am-img-responsive").height = "50%";
            }
        });
    </script>
    <title>好運汪旺來</title>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        $(function () {
            $("#body").removeClass("am-container");
        })
    </script>
    <!--四大類別小選單開始-->
    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999; padding: 0;">
        <ul class="am-avg-sm-5 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">

                               <a href="javascript:void(0)" onclick="GoID('gotop')">

                    <img src="https://www.hawooo.com/images/ftp/20180201/sidebarm_01.png" style="width: 100%" alt="新年紅包 回主頁"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale1')">
                    <img src="https://www.hawooo.com/images/ftp/20180201/sidebarm_02.png" style="width: 100%;" alt="年貨免出門"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale2')">
                    <img src="https://www.hawooo.com/images/ftp/20180201/sidebarm_03.png" style="width: 100%;" alt="內衣紅不讓"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale3')">
                    <img src="https://www.hawooo.com/images/ftp/20180201/sidebarm_04.png" style="width: 100%" alt="新年更逆齡"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale4 ')">
                    <img src="https://www.hawooo.com/images/ftp/20180201/sidebarm_05.png" style="width: 100%" alt="享瘦才是福"></a></li>

        </ul>
    </div>
    <!--活動開始-->
 <div class="am-cf" style="width:100%;margin:0 auto;display:block;max-width:650px;">
   <a id="gotop"></a>
                     <img alt="好運汪旺來" src="https://www.hawooo.com/images/ftp/20180201/edmail_01.png" style="float:left;display:block;width:100%;" />  
                     
                     <img alt="滿額贈" src="https://www.hawooo.com/images/ftp/20180201/edmail_02.png" style="float:left;display:block;width:50%;" />  
                     
                     <img alt="滿額贈" src="https://www.hawooo.com/images/ftp/20180201/edmail_03.png" style="float:left;display:block;width:50%;" />  


    </div>                  
                     

    <!--第一塊開始-->

    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #eb3a27">



        <a id="gosale1">
            <img alt="台灣年貨大街" src="https://www.hawooo.com/images/ftp/20180201/edmm_06.png" style="float: left; display: block; width: 100%;" /></a>

        <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #2b2b2b">
            <iframe max-width="560px" max-height="315px" style="margin: auto; z-index: 2; float: none; display: inherit; background-color: black;" src="https://www.youtube.com/embed/LamcyE_HB2o" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>


        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">
            <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; height: auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0; background-color: #eb3a27">
                    <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">

                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                    <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                                        RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                    </p>
                                </a>
                            </li>

                        </ItemTemplate>
                    </asp:Repeater>
                </ul>

            </div>
        </div>

    </div>

    <!--第二塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #eb3a27">



        <a id="gosale2">
            <img alt="台灣年貨大街" src="https://www.hawooo.com/images/ftp/20180201/edmm_10.png" style="float: left; display: block; width: 100%;" /></a>

        <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #2b2b2b">
            <iframe max-width="560px" max-height="315px" style="margin: auto; z-index: 2; float: none; display: inherit; background-color: black;" src="https://www.youtube.com/embed/GGfmf69Msps" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>

        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">



            <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; height: auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0; background-color: #eb3a27">
                    <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">

                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                    <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                                        RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="Literal2" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="Literal3" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                    </p>
                                </a>
                            </li>

                        </ItemTemplate>
                    </asp:Repeater>
                </ul>

            </div>
        </div>
    </div>


    <!--第三塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #eb3a27">



        <a id="gosale3">
            <img alt="家裡就有髮型師" src="https://www.hawooo.com/images/ftp/20180201/edmm_14.png" style="float: left; display: block; width: 100%;" /></a>

        <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #2b2b2b">
            <iframe max-width="560px" max-height="315px" style="margin: auto; z-index: 2; float: none; display: inherit; background-color: black;" src="https://www.youtube.com/embed/iGxUY9dWUc0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>

        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">



            <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; height: auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0; background-color: #eb3a27">
                    <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">

                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                        <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                    <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                                        RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="Literal5" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="Literal6" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                    </p>
                                </a>
                            </li>

                        </ItemTemplate>
                    </asp:Repeater>
                </ul>

            </div>
        </div>
    </div>






    <!--第四塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #eb3a27">

        <a id="gosale4">
            <img alt="春節除舊佈新" src="https://www.hawooo.com/images/ftp/20180201/edmm_18.png" style="float: left; display: block; width: 100%;" /></a>

        <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #2b2b2b">
            <iframe max-width="560px" max-height="315px" style="margin: auto; z-index: 2; float: none; display: inherit; background-color: black;" src="https://www.youtube.com/embed/Aw8KJJozcrg" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>

        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">



            <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; height: auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0; background-color: #eb3a27">
                    <asp:Repeater ID="rp_product_list_4" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">

                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                        <asp:Literal ID="Literal7" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                    <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                                        RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="Literal8" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="Literal9" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                    </p>
                                </a>
                            </li>

                        </ItemTemplate>
                    </asp:Repeater>
                </ul>

            </div>
        </div>
        <img alt="hawooo.com" src=" https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" />

    </div>



    <script src="assets/js/jquery.url.js"></script>
    <script type="text/javascript">
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 100 }, 500);
        }

        $(function () {
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })

    </script>

</asp:Content>


