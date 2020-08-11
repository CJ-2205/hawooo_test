<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180312omg99.aspx.cs" Inherits="_180312omg99" MasterPageFile="~/user/user.master" %>


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
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="gotop" style="background-color: white; width: 900px; margin: 0 auto">
        <div style="width: 100%; position: relative; width: 900px; margin: 0 auto">

            <img src="https://www.hawooo.com/images/ftp/20180312/edm_01.png" alt="限時特殺" style="width: 100%;" />
            <img src="https://www.hawooo.com/images/ftp/20180312/edm_02.png" alt="全站折扣" style="width: 100%;" />
        </div>


        <!--sale 1區塊開始-->
        <div style="width: 100%; position: relative; width: 900px; z-index: 1; margin: 0 auto">
            <a id="gosale1">
                <img src="https://www.hawooo.com/images/ftp/20180312/edm_03.png" alt="保健母嬰" style="width: 100%;" />
            </a>

        </div>

        <!--帶商品吧-->
        <div style="width: 100%; margin: 0 auto; display: block; max-width: 800px; position: relative; z-index: 2; height: auto; list-style-type: none; margin-bottom: 10px;">
            <div class="am-cf" style="width: 800px; background-color: #05cad1; padding: 10px;">
                <ul class="am-avg-sm-4">
                    <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl" style="width: 24%; background: white; padding: 10px; margin: 10px 3px; z-index: 10;">
                                <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252">
                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                    <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                        RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                    </p>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>


        <!--sale 2區塊開始-->
        <div style="width: 100%; position: relative; width: 900px; z-index: 1; margin: 0 auto">
            <a id="gosale2">
                <img src="https://www.hawooo.com/images/ftp/20180312/edm_04.png" alt="美妝保養" style="width: 100%;" />
            </a>

        </div>

        <!--帶商品吧-->
        <div style="width: 100%; margin: 0 auto; display: block; max-width: 800px; position: relative; z-index: 2; height: auto; list-style-type: none; margin-bottom: 10px;">
            <div class="am-cf" style="width: 800px; background-color: #05cad1; padding: 10px;">
                <ul class="am-avg-sm-4">
                    <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl" style="width: 24%; background: white; padding: 10px; margin: 10px 3px; z-index: 10;">
                                <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252">
                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                    <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                        RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                    </p>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>

                </ul>
            </div>
        </div>


        <!--sale 3區塊開始-->
        <div style="width: 100%; position: relative; width: 900px; z-index: 1; margin: 0 auto">
            <a id="gosale3">
                <img src="https://www.hawooo.com/images/ftp/20180312/edm_05.png" alt="流行內著" style="width: 100%;" />
            </a>
        </div>

        <!--帶商品吧-->
        <div style="width: 100%; margin: 0 auto; display: block; max-width: 800px; position: relative; z-index: 2; height: auto; list-style-type: none; margin-bottom: 10px;">
            <div class="am-cf" style="width: 800px; background-color: #05cad1; padding: 10px;">
                <ul class="am-avg-sm-4">
                    <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl" style="width: 24%; background: white; padding: 10px; margin: 10px 3px; z-index: 10;">
                                <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252">
                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                    <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                        RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                    </p>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>

                </ul>
            </div>
        </div>


        <!--sale 4區塊開始-->
        <div style="width: 100%; position: relative; width: 900px; z-index: 1; margin: 0 auto">
            <a id="gosale4">
                <img src="https://www.hawooo.com/images/ftp/20180312/edm_06.png" alt="生活食品" style="width: 100%;" />
            </a>

        </div>

        <!--帶商品吧-->
        <div style="width: 100%; margin: 0 auto; display: block; max-width: 800px; position: relative; z-index: 2; height: auto; list-style-type: none; margin-bottom: 10px;">
            <div class="am-cf" style="width: 800px; background-color: #05cad1; padding: 10px;">

                <ul class="am-avg-sm-4">
                    <asp:Repeater ID="rp_product_list_4" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl" style="width: 24%; background: white; padding: 10px; margin: 10px 3px; z-index: 10;">
                                <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252">
                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                    <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                        RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 12px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                    </p>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>

                </ul>
            </div>
        </div>

        <!--footer-->
        <div style="width: 100%; position: relative; width: 900px; z-index: 5; margin: 0 auto">

            <img src="https://www.hawooo.com/images/ftp/20180312/footer.png" alt="hawooo.com" style="width: 100%;" />
        </div>
    </div>

    <div class="invisible" style="z-index: 13;">
        <!-- box是固定的nav-->
        <div class="box">
            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180312/sidebar_01.png" style="width: 150px; margin-bottom: -1px" alt="menu"></a>


            <a href="javascript:void(0)" onclick="GoID('gosale1')">
                <img src="https://www.hawooo.com/images/ftp/20180312/sidebar_02.png" style="width: 150px; margin-bottom: -1px" alt="保健"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale2')">
                <img src="https://www.hawooo.com/images/ftp/20180312/sidebar_03.png" style="width: 150px; margin-bottom: -1px" alt="美妝"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale3')">
                <img src="https://www.hawooo.com/images/ftp/20180312/sidebar_04.png" style="width: 150px; margin-bottom: -1px" alt="流行"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale4')">
                <img src="https://www.hawooo.com/images/ftp/20180312/sidebar_05.png" style="width: 150px; margin-bottom: -1px" alt="生活"></a>

            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180312/sidebar_06.png" style="width: 150px; margin-bottom: -1px" alt="top"></a>



        </div>
    </div>
    <script src="assets/js/jquery.url.js"></script>
    <script type="text/javascript">


        $(function () {
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 160 }, 500);
        }


    </script>

</asp:Content>
