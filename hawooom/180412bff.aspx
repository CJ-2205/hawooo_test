<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180412bff.aspx.cs" Inherits="_180412bff" MasterPageFile="~/mobile/mobile.master" %>

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
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #22BDF1">
        <img alt="台灣年貨大街" src="https://www.hawooo.com/images/ftp/20180413/edmm_01.png" style="float: left; display: block; width: 100%;" />

        <!--系統開始帶商品-->
        <!--下方商品-->
        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">
            <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; height: auto;">
                <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0; background-color: #22BDF1">

                    <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                <a href="product.aspx?id=<%# Eval(" WP01") %>">
                                    <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" />
                                    <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252">
                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                    <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                                        RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span>
                                        </span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></span>
                                        </del>
                                    </p>
                                </a></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
