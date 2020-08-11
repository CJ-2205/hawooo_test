<%@ Page Language="C#" AutoEventWireup="true" CodeFile="18fool2.aspx.cs" Inherits="_18fool2" MasterPageFile="~/mobile/mobile.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .pnamem {
            margin: 5px 5px;
            height: 40px;
            overflow: hidden;
            font-size: medium;
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
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--四大類別小選單開始-->
    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999; max-height: 122px; padding: 0;">
        <ul class="am-avg-sm-5 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">

                <a href="18aprilfool.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180330/sidebarM_01.png" style="width: 100%; max-height: 90px;" alt="買一送一"></a></li>

            <li class="am-fl">
                <a href="18fool1.aspx" >
                    <img src="https://www.hawooo.com/images/ftp/20180330/sidebarM_02.png" style="width: 100%; max-height: 90px;" alt="保養彩妝"></a></li>

            <li class="am-fl">
                <a onclick="GoID('sale1')">
                    <img src="https://www.hawooo.com/images/ftp/20180330/sidebarM_03.png" style="width: 100%; max-height: 90px;" alt="內衣流行"></a></li>

            <li class="am-fl">
                <a href="18fool3.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180330/sidebarM_04.png" style="width: 100%; max-height: 90px;" alt="生活食品"></a></li>

            <li class="am-fl">
                <a href="18fool4.aspx">
                    <img src="https://www.hawooo.com/images/ftp/20180330/sidebarM_05.png" style="width: 100%; max-height: 90px;" alt="保健母嬰"></a></li>
        </ul>
    </div>
    <!--四大類別小選單再見-->

    <!--edm開始-->
    <div id="sale1" class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
      <img alt="內衣流行" src="https://www.hawooo.com/images/ftp/20180330/sec_2.png" style="float:left;display:block;width:100%;"/>
    </div>

    <!--第一塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #ff76a4">
        <div style="position: relative; max-width: 650px; margin: 0 auto;">
            <div id="div1" style="position: relative; max-width: 650px; margin: 0 auto;">
                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0; background-color: #ffdd4a">
                    <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <a href="product.aspx?id=<%# Eval(" WP01") %>" style="color: #535252;">
                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
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
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 80 }, 500);
        }
    </script>
</asp:Content>
