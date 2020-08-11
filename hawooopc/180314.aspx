<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180314.aspx.cs" Inherits="_180314" MasterPageFile="~/user/user.master" %>


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
            width: 1000px;
            background-color: #ffdd4a;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }

        .slogan {
            margin: 10px 5px;
            height: 20px;
            overflow: hidden;
            font-size: 14px;
            line-height: 20px;
            color: #F61C68;
            text-align: center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--開始帶商品-->
    <div style="width: 1000px; margin: 0 auto; position: relative;">
        <div style="display: inline; position: absolute; z-index: 2; width: 66%;">
            <a href="https://www.hawooo.com/user/180305Lottery.aspx" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180315/click.png" alt="點我領rm1000" style="position: absolute; width: 29%; left: 117%; top: 150px;" />
            </a>
        </div>
        <img src="https://www.hawooo.com/images/ftp/20180315/edm_01.png" alt="自己的福袋自己選" style="width: 100%;">
    </div>


    <div class="am-cf sale1" style="position: relative; z-index: 1">

        <div style="display: inline; position: absolute; z-index: 2; width: 66%;">

            <img src="https://www.hawooo.com/images/ftp/20180315/plus.png" alt="加號左1" style="position: absolute; width: 6.5%; left: 34%; top: 166px;" />

            <img src="https://www.hawooo.com/images/ftp/20180315/plus.png" alt="加號右1" style="position: absolute; margin: auto; width: 6.5%; left: 108%; top: 166px;" />

            <img src="https://www.hawooo.com/images/ftp/20180315/plus.png" alt="加號左2" style="position: absolute; margin: auto; width: 6.5%; left: 34%; top: 520px;" />

            <img src="https://www.hawooo.com/images/ftp/20180315/plus.png" alt="加號右2" style="position: absolute; margin: auto; width: 6.5%; left: 108%; top: 520px;" />

            <img src="https://www.hawooo.com/images/ftp/20180315/plus.png" alt="加號左3" style="position: absolute; width: 6.5%; left: 34%; top: 870px;" />

            <img src="https://www.hawooo.com/images/ftp/20180315/plus.png" alt="加號右3" style="position: absolute; margin: auto; width: 6.5%; left: 108%; top: 870px;" />

            <img src="https://www.hawooo.com/images/ftp/20180315/plus.png" alt="加號左4" style="position: absolute; margin: auto; width: 6.5%; left: 34%; top: 1230px;" />

            <img src="https://www.hawooo.com/images/ftp/20180315/plus.png" alt="加號右4" style="position: absolute; margin: auto; width: 6.5%; left: 108%; top: 1230px;" />

            <img src="https://www.hawooo.com/images/ftp/20180315/plus.png" alt="加號左5" style="position: absolute; margin: auto; width: 6.5%; left: 34%; top: 1580px;" />

            <img src="https://www.hawooo.com/images/ftp/20180315/plus.png" alt="加號右5" style="position: absolute; margin: auto; width: 6.5%; left: 108%; top: 1580px;" />

        </div>


        <div id="div1" style="padding: 0 0px; float: left; width: 100%; z-index: 3; position: relative;">
            <ul class="am-avg-sm-4">

                <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl" style="width: 21%; background: white; padding: 15px; border-radius: 30px; margin: 1% 2%">
                            <h4 class="slogan">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
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





    <!--商品結束-->



    <!--footer-->
    <div style="width: 100%; margin: 0 auto; display: block; width: 1000px;">

        <img src="https://www.hawooo.com/images/ftp/20180312/footer.png" alt="hawooo.com" style="width: 100%;" />
    </div>








</asp:Content>
