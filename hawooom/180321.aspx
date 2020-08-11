<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180321.aspx.cs" Inherits="_180321" MasterPageFile="~/mobile/mobile.master" %>

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
            border-radius: 30px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-center" style="max-width: 650px;">

    <img alt="白羊座必勝桃花妝" src="https://www.hawooo.com/images/ftp/20180321/edmm_001.png" style="float:left;display:block;width:100%;" />

    </div>

    <div id="div1" style="position: relative; max-width: 650px; margin: 0 auto;">

        <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0; background-color: #ffdd4a">

            <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                <ItemTemplate>
                    <li class="am-fl box">

                        <a href="product.aspx?id=<%# Eval("WP01") %>">
                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                            <h4 class="pnamem"><a style="color: #535252;" href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                            <p class="discountpricem">
                                RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                            </p>
                        </a>
                    </li>

                </ItemTemplate>
            </asp:Repeater>
        </ul>

    </div>


    <div class="am-cf" style="width: 100%; margin: 0 auto; max-width: 650px; background-color: #ffdd4a;">

        <img alt="footer" src="https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" />
    </div>

</asp:Content>
