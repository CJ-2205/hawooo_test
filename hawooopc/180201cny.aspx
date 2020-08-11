<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180201cny.aspx.cs" Inherits="_180201cny" MasterPageFile="~/user/user.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
            background-color: #EB3A27;
            background-size: 100%;
            height: auto;
            margin: 0px auto;
            padding: 0px;
        }

        /*---主標動疵動*/
        .animated {
            animation-duration: 1s;
            animation-fill-mode: both;
        }

        @keyframes flipInX {
            from {
                transform: perspective(400px) rotate3d(1, 0, 0, 90deg);
                animation-timing-function: ease-in;
                opacity: 0;
            }

            40% {
                transform: perspective(400px) rotate3d(1, 0, 0, -20deg);
                animation-timing-function: ease-in;
            }

            60% {
                transform: perspective(400px) rotate3d(1, 0, 0, 10deg);
                opacity: 1;
            }

            80% {
                transform: perspective(400px) rotate3d(1, 0, 0, -5deg);
            }

            to {
                transform: perspective(400px);
            }
        }

        .flipInX {
            -webkit-backface-visibility: visible !important;
            backface-visibility: visible !important;
            animation-name: flipInX;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--神奇圖層區開始-->
    <div style="width: 100%; position: relative; width: 900px; z-index: 1; margin: 0 auto">
        <a id="gotop"></a>
        <img src="https://www.hawooo.com/images/ftp/20180201/edm_01.png" alt="好運汪旺來" style="width: 100%">
        <div class="animated flipInX" style="display: inline; position: absolute; z-index: 10; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">
            <img src="https://www.hawooo.com/images/ftp/20180201/pclogo.png" alt="主標" style="position: absolute; top: 20%; margin: auto; width: 82%; right: -13%;" border="0" />
        </div>
    </div>
    <!--神奇圖層區掰掰-->


    <div style="width: 100%; position: relative; width: 900px; z-index: 1; margin: 0 auto">
        <a id="gosale1"></a>
        <img src="https://www.hawooo.com/images/ftp/20180201/edm_02.png" alt="台灣年貨大街" style="width: 100%">
        <div style="display: inline; position: absolute; z-index: 2; width: 66%; top: 9%; bottom: 0; left: 1.5%; right: 0;">
            <iframe width="300" src="https://www.youtube.com/embed/LamcyE_HB2o" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

        </div>
    </div>

    <div style="width: 100%; margin: 0 auto; display: block; max-width: 900px; position: relative; z-index: 10;">
        <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
            <li style="margin: 0;">
                <div class="gift1 am-cf" style="width: 900px;">
                    <div style="padding: 0 50px 0 50px;">
                        <ul class="am-avg-sm-4">

                            <!--複製吧-->

                            <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                            <p style="margin: 10px 5px 0 5px; font-size: 13px; color: red">
                                                RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
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



    <div style="width: 100%; position: relative; width: 900px; z-index: 1; margin: 0 auto">
        <div style="width: 100%">
            <a id="gosale2">
                <img src="https://www.hawooo.com/images/ftp/20180201/edm_04.png" alt="氣色好桃花旺" style="width: 100%"></a>
        </div>
        <div style="display: inline; position: absolute; z-index: 2; top: 83%; bottom: 0; left: 66%; right: 0;">
            <iframe width="300" src="https://www.youtube.com/embed/GGfmf69Msps" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>
    </div>

    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px; position: relative; z-index: 10;">
        <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
            <li style="margin: 0;">
                <div class="gift1  am-cf" style="width: 900px;">
                    <div style="padding: 0 50px 0 50px;">
                        <ul class="am-avg-sm-4">

                            <!--複製吧-->

                            <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                            <p style="margin: 10px 5px 0 5px; font-size: 13px; color: red">
                                                RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
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


    <div style="width: 100%; position: relative; width: 900px; z-index: 1; margin: 0 auto">
        <div style="width: 100%">
            <a id="gosale3">
                <img src="https://www.hawooo.com/images/ftp/20180201/edm_06.png" alt="台灣年貨大街" style="width: 100%">
            </a>
        </div>
        <div style="display: inline; position: absolute; z-index: 2; top: 83%; bottom: 0; left: 1.5%; right: 0;">
            <iframe width="300" src="https://www.youtube.com/embed/iGxUY9dWUc0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>
    </div>
    <div style="width: 100%; margin: 0 auto; display: block; max-width: 900px; position: relative; z-index: 10;">
        <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
            <li style="margin: 0;">
                <div class="gift1 am-cf" style="width: 900px;">
                    <div style="padding: 0 50px 0 50px;">
                        <ul class="am-avg-sm-4">
                            <!--複製吧-->
                            <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                            <p style="margin: 10px 5px 0 5px; font-size: 13px; color: red">
                                                RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
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

    <div style="width: 100%; position: relative; width: 900px; z-index: 1; margin: 0 auto">
        <div style="width: 100%">
            <a id="gosale4">
                <img src="https://www.hawooo.com/images/ftp/20180201/edm_08.png" alt="除舊佈新" style="width: 100%">
            </a>
        </div>
        <div style="display: inline; position: absolute; z-index: 2; top: 83%; bottom: 0; left: 66%; right: 0;">
            <iframe width="300" src="https://www.youtube.com/embed/Aw8KJJozcrg" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

        </div>
    </div>

    <div style="width: 100%; margin: 0 auto; display: block; max-width: 900px; position: relative; z-index: 10;">
        <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
            <li style="margin: 0;">
                <div class="gift1 am-cf" style="width: 900px;">
                    <div style="padding: 0 50px 0 50px;">
                        <ul class="am-avg-sm-4">
                            <!--複製吧-->
                            <asp:Repeater ID="rp_product_list_4" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                         <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
                                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px;color: #535252 ">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                            <p style="margin: 10px 5px 0 5px; font-size: 13px; color: red">
                                                RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
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

    <!--footer-->
    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 900px;">
        <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;">
                <img class="twoyearbottom" alt="Hawooo.com" src="https://www.hawooo.com/images/ftp/20171219/bhk/footerpc.png" style="float: left; display: block; width: 100%;" /></li>

        </ul>
    </div>

    <!-- 一個看不見的div 高度0 -->
    <div class="invisible" style="z-index: 13;">
        <!-- box是固定的nav -->
        <div class="box">
            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180201/sidebar_01.png" style="width: 150px; margin-bottom: -1px" alt="好運汪旺來"></a>


            <a href="javascript:void(0)" onclick=" GoFirstID('gosale1')">
                <img src="https://www.hawooo.com/images/ftp/20180201/sidebar_02.png" style="width: 150px; margin-bottom: -1px" alt="年貨免出門"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale2')">
                <img src="https://www.hawooo.com/images/ftp/20180201/sidebar_03.png" style="width: 150px; margin-bottom: -1px" alt="內衣紅不讓"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale3')">
                <img src="https://www.hawooo.com/images/ftp/20180201/sidebar_04.png" style="width: 150px; margin-bottom: -1px" alt="新年更逆齡"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale4')">
                <img src="https://www.hawooo.com/images/ftp/20180201/sidebar_05.png" style="width: 150px; margin-bottom: -1px" alt="享瘦才是福"></a>

            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180201/sidebar_06.png" style="width: 150px; margin-bottom: -1px" alt="TOP"></a>
        </div>
    </div>



    <script src="assets/js/jquery.url.js"></script>
    <script type="text/javascript">
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 210 }, 500);
        }

        function GoFirstID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 116 }, 500);
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


        $(function () {
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })

    </script>

</asp:Content>

