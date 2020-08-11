<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180430lovemom.aspx.cs" Inherits="_180430lovemom" MasterPageFile="~/mobile/mobile.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        .pnamem {
            margin: 5px 5px;
            height: 40px;
            overflow: hidden;
            font-size: small;
            line-height: 20px;
            color: #535252;
        }

        .deletepricem {
            line-height: 28px;
            color: dimgrey;
            font-size: smaller;
            margin-bottom: -20px;
        }

        .discountpricem {
            margin: 5px 5px 0 5px;
            font-size: small;
            color: red;
        }

        .box {
            width: calc(50% - 10px);
            background: white;
            padding: 3%;
            margin: 5px;
            height: calc(100% - 20px);
        }

        .btnn {
            float: left;
            display: block;
            width: 50%;
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
                        debugger;
                        alert2url(response.d, "https://www.hawooo.com/mobile/180430lovemom2.aspx");         //here
                    },
                    error:
                    function (response) {
                        debugger;
                        alert2url("Oh No,系統好像出現了問題,若多次無法使用請麻煩與客服聯繫。", "https://www.hawooo.com/mobile/180430lovemom2.aspx");     //here
                    }
                })
            }
            else {
                window.location = "login.aspx?rurl=180430lovemom2.aspx";         //here
            }
        }
    </script>--%>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--三小選單開始-->
    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999; max-height: 122px; padding: 0;">
        <ul class="am-avg-sm-4 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">

                <a href="javascript:void(0)" onclick="GoID('gotop')">
                    <img src="https://www.hawooo.com/images/ftp/20180430/sidebarM_01.png" style="width: 100%; max-height: 90px;" alt="愛啊我的媽"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale1')">
                    <img src="https://www.hawooo.com/images/ftp/20180430/sidebarM_02.png" style="width: 100%; max-height: 90px;" alt="買一送一"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gobrand')">
                    <img src="https://www.hawooo.com/images/ftp/20180430/sidebarM_03.png" style="width: 100%; max-height: 90px;" alt="熱銷上萬組"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale2')">
                    <img src="https://www.hawooo.com/images/ftp/20180430/sidebarM_04.png" style="width: 100%; max-height: 90px;" alt="熱銷上萬組"></a></li>
        </ul>
    </div>
    <!--三小選單再見-->

    <!--edm開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">


        <img id="gotop" alt="愛啊我的媽 第二波" src="https://www.hawooo.com/images/ftp/20180430/edmm_01.png" style="float: left; display: block; width: 100%;" />


        <asp:Panel ID="pWeek1" runat="server" Visible="false">
            <img alt="全館免運" src="https://www.hawooo.com/images/ftp/20180430/edmm_02.png" style="float: left; display: block; width: 50%;" />
        </asp:Panel>
        <asp:Panel ID="pWeek2" runat="server" Visible="false">
            <a href="https://www.hawooo.com/mobile/newProduct.aspx" target="_blank">
                <img alt="全館免運" src="https://www.hawooo.com/images/ftp/20180430/edmm_021.png" style="float: left; display: block; width: 50%;" />
            </a>
        </asp:Panel>
        <asp:Panel ID="pWeek3" runat="server" Visible="false">
            <img alt="全館免運" src="https://www.hawooo.com/images/ftp/20180430/edmm_022.png" style="float: left; display: block; width: 50%;" onclick="location.href='goupon60.aspx'" />
        </asp:Panel>






        <img alt="複製code 折價券35" src="https://www.hawooo.com/images/ftp/20180430/edmm_03.png" class="btnn" data-clipboard-text="mother35" />

        <!--品牌開始-->
        <img id="gobrand" alt="銷售上萬組" src="https://www.hawooo.com/images/ftp/20180430/edmm_04.png" style="float: left; display: block; width: 100%;" />
        <a href="https://www.hawooo.com/mobile/newbrand2.aspx?tid=gosale1" target="_blank">
            <img alt="BHK's" src="https://www.hawooo.com/images/ftp/20180430/edmm_05.png" style="float: left; display: block; width: 50%;" /></a>

        <a href="https://www.hawooo.com/mobile/newbrand2.aspx?tid=gosale2" target="_blank">
            <img alt="Beauty小舖" src="https://www.hawooo.com/images/ftp/20180430/edmm_06.png" style="float: left; display: block; width: 50%;" /></a>

        <a href="https://www.hawooo.com/mobile/newbrand2.aspx?tid=gosale3" target="_blank">
            <img alt="Becy. C" src="https://www.hawooo.com/images/ftp/20180430/edmm_07.png" style="float: left; display: block; width: 50%;" /></a>

        <a href="https://www.hawooo.com/mobile/newbrand2.aspx?tid=gosale4" target="_blank">
            <img alt="UNT" src="https://www.hawooo.com/images/ftp/20180430/edmm_08.png" style="float: left; display: block; width: 50%;" /></a>

        <a href="https://www.hawooo.com/mobile/newbrand2.aspx?tid=gosale7" target="_blank">
            <img alt="solone" src="https://www.hawooo.com/images/ftp/20180430/edmm_09.png" style="float: left; display: block; width: 50%;" /></a>

        <a href="https://www.hawooo.com/mobile/newbrand2.aspx?tid=gosale8" target="_blank">
            <img alt="櫻桃爺爺" src="https://www.hawooo.com/images/ftp/20180430/edmm_10.png" style="float: left; display: block; width: 50%;" /></a>

        <a href="https://www.hawooo.com/mobile/newbrand2.aspx?tid=gosale5" target="_blank">
            <img alt="Qmomo" src="https://www.hawooo.com/images/ftp/20180430/edmm_11.png" style="float: left; display: block; width: 50%;" /></a>

        <a href="https://www.hawooo.com/mobile/newbrand2.aspx?tid=gosale6" target="_blank">
            <img alt="Robin May" src="https://www.hawooo.com/images/ftp/20180430/edmm_12.png" style="float: left; display: block; width: 50%;" /></a>
    </div>

    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #e8a3b0">
        <img id="gosale1" alt="買一送一" src="https://www.hawooo.com/images/ftp/20180430/edmm_20.png" style="float: left; display: block; width: 100%;" />
        <div style="position: relative; max-width: 650px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <a href="product.aspx?id=<%# Eval(" WP01") %>">
                                <img src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pnamem">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                <p class="discountpricem">
                                    RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deletepricem"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>

    <!--第二塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #e8a3b0">
        <img id="gosale2" alt="一錠就搞定 讓身型超S" src="https://www.hawooo.com/images/ftp/20180430/edmm_13.png" style="float: left; display: block; width: 100%;" />
        <div style="position: relative; max-width: 650px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0">
                <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <a href="product.aspx?id=<%# Eval(" WP01") %>">
                                <img src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pnamem">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                <p class="discountpricem">
                                    RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deletepricem"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>

    </div>

    <!--第三塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #e8a3b0">
        <img id="gosale3" alt="穿搭不只穿衣 細節才是關鍵" src="https://www.hawooo.com/images/ftp/20180430/edmm_15.png" style="float: left; display: block; width: 100%;" />
        <div style="position: relative; max-width: 650px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <a href="product.aspx?id=<%# Eval(" WP01") %>">
                                <img src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pnamem">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                <p class="discountpricem">
                                    RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deletepricem"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>

        </div>
    </div>

    <!--第四塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #e8a3b0">
        <img id="gosale4" alt="精打細算購 越買越省錢" src="https://www.hawooo.com/images/ftp/20180430/edmm_17.png" style="float: left; display: block; width: 100%;" />
        <div style="position: relative; max-width: 650px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                <asp:Repeater ID="rp_product_list_4" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <a href="product.aspx?id=<%# Eval(" WP01") %>">
                                <img src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pnamem">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                <p class="discountpricem">
                                    RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deletepricem"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>

        </div>
    </div>

    <!--第五塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #e8a3b0">
        <img id="gosale5" alt="精打細算購 越買越省錢" src="https://www.hawooo.com/images/ftp/20180430/edmm_19.png" style="float: left; display: block; width: 100%;" />
        <div style="position: relative; max-width: 650px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                <asp:Repeater ID="rp_product_list_5" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <a href="product.aspx?id=<%# Eval(" WP01") %>">
                                <img src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                <h4 class="pnamem">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                <p class="discountpricem">
                                    RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deletepricem"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                </p>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>

        </div>
    </div>

    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #F9201F;">
        <img alt="footer" src=" https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" />
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
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 100 }, 500);
        }
    </script>

    <script>
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
