<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180313.aspx.cs" Inherits="_180313" MasterPageFile="~/user/user.master" %>


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
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--開始帶商品-->
    <div style="width: 100%; margin: 0 auto; display: block; width: 1000px;">
        <img src="https://www.hawooo.com/images/ftp/20180313/edm_01.png" alt="女王就愛耍特權" style="width: 100%;">
    </div>



    <div class="am-cf sale1">
        <div id="div1" style="padding: 0 0px; float: left; width: 100%;">
            <ul class="am-avg-sm-4">

                <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl" style="width: 23%; background: white; padding: 22px; border-radius: 30px; margin: 1% 1%">
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

