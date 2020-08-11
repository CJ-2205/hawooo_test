<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180430lovemom2.aspx.cs" Inherits="_180430lovemom" MasterPageFile="~/user/user.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        body {
            position: relative;
            height: auto;
        }


        .pname {
            margin: 10px 5px;
            height: 40px;
            overflow: hidden;
            font-size: 14px;
            line-height: 20px;
            color: #535252;
        }

        .discountprice {
            margin: 5px 5px 0 5px;
            font-size: 10px;
            color: red;
        }

        .deleteprice {
            line-height: 37px;
            color: dimgrey;
            font-size: small;
            margin-bottom: -20px;
        }

        .sale1 {
            width: 900px;
            background-color: #e8a3b0;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }

        .sale2 {
            width: 800px;
            background-color: #FC4A4A;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
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
        /*滑過去變小一點*/
        .go_bt {
            -webkit-transition: all 0.3s ease;
            -moz-transition: all 0.3s ease;
            -ms-transition: all 0.3s ease;
            -o-transition: all 0.3s ease;
            transition: all 0.3s ease;
        }

            .go_bt:hover {
                -webkit-transform: scale(0.95);
                -moz-transform: scale(0.95);
                -ms-transform: scale(0.95);
                -o-transform: scale(0.95);
                transform: scale(0.95);
            }

        /*商品跳起來吧*/
        .hvr-float {
            display: inline-block;
            vertical-align: middle;
            -webkit-transform: perspective(1px) translateZ(0);
            transform: perspective(1px) translateZ(0);
            box-shadow: 0 0 1px transparent;
            -webkit-transition-duration: .3s;
            transition-duration: .3s;
            -webkit-transition-property: transform;
            transition-property: transform;
            -webkit-transition-timing-function: ease-out;
            transition-timing-function: ease-out;
        }

            .hvr-float:active, .hvr-float:focus, .hvr-float:hover {
                -webkit-transform: translateY(-8px);
                transform: translateY(-8px);
            }

        .btnn {
            /*copytoclipboard的class*/
        }
    </style>


   <%-- <script>
        function check() {
            var bool = '<%=Session["Login"] %>';
            if (bool == 'true') {
                $.ajax({
                    type: 'post',
                    url: '180430lovemom2.aspx/CheckUser',           //here
                    data: '{}',
                    datatype: "json",
                    contentType: "application/json; charset=utf-8",
                    success: function (response) {
                        alert2url(response.d, "https://www.hawooo.com/user/180430lovemom2.aspx");         //here
                    },
                    error:
                    function (response) {
                        alert2url("Oh No,系統好像出現了問題,若多次無法使用請麻煩與客服聯繫。", "https://www.hawooo.com/user/180430lovemom2.aspx");
                    }
                })
            }
            else {
                doLogin('180430lovemom2.aspx')
            }
        }



    </script>--%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>



    <!--神奇圖層區開始-->
    <div style="width: 100%; position: relative; width: 1000px; z-index: 1; margin: 0 auto">
        <img id="gotop" src="https://www.hawooo.com/images/ftp/20180430/edmnew_01.png" alt="愛呀我的媽" style="width: 100%">


        <div style="display: inline; position: absolute; z-index: 2; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">

            <asp:Panel ID="pWeek1" runat="server">
                <img src="https://www.hawooo.com/images/ftp/20180430/PC_01.png" alt="加碼免運" style="position: absolute; top: 70%; margin: auto; width: 21%; left: 21%;" />
            </asp:Panel>

            <asp:Panel ID="pWeek2" runat="server">
                <a href="https://www.hawooo.com/user/newProduct.aspx" target="_blank">
                    <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180430/PC_02.png" alt="連新品上市頁面" style="position: absolute; top: 70%; margin: auto; width: 21%; left: 21%;" />
                </a>
            </asp:Panel>

            <asp:Panel ID="pWeek3" runat="server" Visible="true">
                <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180430/PC_03.png" alt="登記領按鈕" style="position: absolute; top: 70%; margin: auto; width: 21%; left: 21%;" onclick="location.href='goupon60.aspx'" />
            </asp:Panel>

            <!--折扣卷btn-->
            <img class="go_bt btnn" src="https://www.hawooo.com/images/ftp/20180430/35.png" alt="複製code 現折35券" style="position: absolute; top: 70%; margin: auto; width: 21%; left: 58%;" data-clipboard-text="mother35" />
        </div>

    </div>
    <div style="width: 100%; position: relative; width: 1000px; z-index: 1; margin: 0 auto">
        <img src="https://www.hawooo.com/images/ftp/20180430/edm_02.png" alt="熱銷上萬組" style="width: 100%">


        <div id="gobrand" style="display: inline; position: absolute; z-index: 2; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">

            <a href="https://www.hawooo.com/user/newbrand2.aspx?tid=gosale1" target="_blank">
                <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180430/001.png" alt="BHK's" style="position: absolute; top: 13%; margin: auto; width: 32%; left: 10%;" />
            </a>

            <a href="https://www.hawooo.com/user/newbrand2.aspx?tid=gosale2" target="_blank">
                <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180430/002.png" alt="Beauty小舖" style="position: absolute; top: 13%; margin: auto; width: 32%; left: 43%;" />
            </a>

            <a href="https://www.hawooo.com/user/newbrand2.aspx?tid=gosale3" target="_blank">
                <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180430/003.png" alt="Becy C" style="position: absolute; top: 13%; margin: auto; width: 32%; left: 76%;" />
            </a>

            <a href="https://www.hawooo.com/user/newbrand2.aspx?tid=gosale4" target="_blank">
                <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180430/004.png" alt="UNT" style="position: absolute; top: 13%; margin: auto; width: 32%; left: 109%;" />
            </a>

            <a href="https://www.hawooo.com/user/newbrand2.aspx?tid=gosale7" target="_blank">
                <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180430/005.png" alt="solone" style="position: absolute; top: 55%; margin: auto; width: 32%; left: 10%;" />
            </a>

            <a href="https://www.hawooo.com/user/newbrand2.aspx?tid=gosale8" target="_blank">
                <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180430/006.png" alt="櫻桃爺爺" style="position: absolute; top: 55%; margin: auto; width: 32%; left: 43%;" />
            </a>

            <a href="https://www.hawooo.com/user/newbrand2.aspx?tid=gosale5" target="_blank">
                <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180430/007.png" alt="Qmomo" style="position: absolute; top: 55%; margin: auto; width: 32%; left: 76%;" />
            </a>

            <a href="https://www.hawooo.com/user/newbrand2.aspx?tid=gosale6" target="_blank">
                <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180430/008.png" alt="Robin May" style="position: absolute; top: 55%; margin: auto; width: 32%; left: 109%;" />
            </a>
        </div>

    </div>
    <!--神奇圖層區掰掰-->

    <!--第一塊-->
    <div style="width: 1000px; margin: 0 auto; background-color: #02cacc;">
        <img id="gosale1" src="https://www.hawooo.com/images/ftp/20180430/edm_03.png" alt="不動刀整形術" style="width: 100%;">
        <div class="am-cf sale1">
            <ul class="am-avg-sm-4">
                <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl hvr-float" style="width: 23%; background: white; padding: 2%; margin: 1% 1%;">
                            <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pname">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                <p class="discountprice">
                                    RM<span style="font-size: 20px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deleteprice"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>

    <!--第二塊-->
    <div style="width: 1000px; margin: 0 auto; background-color: #02cacc;">
        <img id="gosale2" src="https://www.hawooo.com/images/ftp/20180430/edm_04.png" alt="不動刀整形術" style="width: 100%;">
        <div class="am-cf sale1">
            <ul class="am-avg-sm-4">
                <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl hvr-float" style="width: 23%; background: white; padding: 2%; margin: 1% 1%;">
                            <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pname">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                <p class="discountprice">
                                    RM<span style="font-size: 20px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deleteprice"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>

    <!--第三塊-->
    <div style="width: 1000px; margin: 0 auto; background-color: #02cacc;">
        <img id="gosale3" src="https://www.hawooo.com/images/ftp/20180430/edm_06.png" alt="穿搭不只穿衣" style="width: 100%;">
        <div class="am-cf sale1">
            <ul class="am-avg-sm-4">
                <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl hvr-float" style="width: 23%; background: white; padding: 2%; margin: 1% 1%;">
                            <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pname">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                <p class="discountprice">
                                    RM<span style="font-size: 20px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deleteprice"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>

    <!--第四塊-->
    <div style="width: 1000px; margin: 0 auto; background-color: #02cacc;">
        <img id="gosale4" src="https://www.hawooo.com/images/ftp/20180430/edm_08.png" alt="精打細算購" style="width: 100%;">
        <div class="am-cf sale1">
            <ul class="am-avg-sm-4">
                <asp:Repeater ID="rp_product_list_4" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl hvr-float" style="width: 23%; background: white; padding: 2%; margin: 1% 1%;">
                            <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pname">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                <p class="discountprice">
                                    RM<span style="font-size: 20px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deleteprice"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>

        </div>
    </div>

    <div style="width: 1000px; margin: 0 auto; background-color: #02cacc;">
        <img id="gosale5" src="https://www.hawooo.com/images/ftp/20180430/edm_10.png" alt="精打細算購" style="width: 100%;">


        <div class="am-cf sale1">
            <ul class="am-avg-sm-4">
                <asp:Repeater ID="rp_product_list_5" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl hvr-float" style="width: 23%; background: white; padding: 2%; margin: 1% 1%;">
                            <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pname">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                <p class="discountprice">
                                    RM<span style="font-size: 20px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deleteprice"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>
    <!--footer-->
    <!--下面帶活動說明-->

    <div style="width: 100%; position: relative; width: 1000px; z-index: 5; margin: 0 auto">
        <img class="twoyearbottom" src="https://www.hawooo.com/images/ftp/20180312/footer.png" alt="hawooo.com" style="width: 100%;">
    </div>
    <!-- 一個看不見的div 高度0-->
    <div class="invisible" style="z-index: 50;">
        <!-- box是固定的nav-->
        <div class="box">
            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180430/sidebar_01.png" style="width: 150px; margin-bottom: -1px" alt="menu"></a>

            <a href="javascript:void(0)" onclick="GoID('gobrand')">
                <img src="https://www.hawooo.com/images/ftp/20180430/sidebar_06.png" style="width: 150px; margin-bottom: -1px" alt="熱銷上萬組"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale1')">
                <img src="https://www.hawooo.com/images/ftp/20180430/sidebar_08.png" style="width: 150px; margin-bottom: -1px" alt="買一送一"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale2')">
                <img src="https://www.hawooo.com/images/ftp/20180430/sidebar_02.png" style="width: 150px; margin-bottom: -1px" alt="保養美妝"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale3')">
                <img src="https://www.hawooo.com/images/ftp/20180430/sidebar_03.png" style="width: 150px; margin-bottom: -1px" alt="衣櫃必備"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale4')">
                <img src="https://www.hawooo.com/images/ftp/20180430/sidebar_04.png" style="width: 150px; margin-bottom: -1px" alt="童顏秘訣"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale5')">
                <img src="https://www.hawooo.com/images/ftp/20180430/sidebar_05.png" style="width: 150px; margin-bottom: -1px" alt="代購必買"></a>

            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180430/sidebar_07.png" style="width: 150px; margin-bottom: -1px" alt="top"></a>
        </div>
    </div>

    <script src="assets/js/jquery.url.js"></script>
    <script src="assets/js/clipboard.min.js"></script>

    <script type="text/javascript">


        $(function () {
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 500);
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
    <script>
        //複製折扣卷fucntion
        var clipboard = new ClipboardJS('.btnn');

        clipboard.on('success', function (e) {
            console.info('Action:', e.action);
            console.info('Text:', e.text);
            alert("已複製，請記得在結帳時輸入喔～");
            e.clearSelection();
        });

        clipboard.on('error', function (e) {
            console.error('Action:', e.action);
            console.error('Trigger:', e.trigger);
        });

    </script>

</asp:Content>
