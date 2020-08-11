<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180405MemberDay.aspx.cs" Inherits="_180405MemberDay" MasterPageFile="~/user/user.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        body {
            position: relative;
            height: auto;
        }

        .pic {
            position: absolute;
            left: 0;
            right: 0;
            margin: 0 auto;
            width: 1000px;
            height: 100vh;
            background: #aaa;
        }

            .pic img {
                position: absolute;
                right: 0;
                width: 1000px;
            }

        .gift1 {
            background-color: #261010;
            background-size: 100%;
            height: auto;
            margin: 0px auto;
            padding: 0px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--開始帶商品-->
    <div style="width: 100%; margin: 0 auto; display: block; width: 1000px;">


        <img alt="VIP" src="https://www.hawooo.com/images/ftp/20180405/edm_01.gif" style="float: left; display: block; width: 100%;" />

        <img alt="一名訂單免費" src="https://www.hawooo.com/images/ftp/20180405/edm_02.png" style="float: left; display: block; width: 100%;" />

    </div>


    <div style="width: 100%; margin: 0 auto; display: block; width: 1000px;">
        <ul style="float: left; margin: 0; list-style-type: none; width: 100%; padding: 0px">
            <li style="margin: 0;">
                <div class="gift1 am-cf" style="width: 1000px;">
                    <div id="div1" style="padding: 0 50px 0 50px;">
                        <ul class="am-avg-sm-4">

                            <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl" style="width: calc(25% - 20px); background: white; padding: 10px; margin: 10px">
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


            </li>
        </ul>
    </div>
    <!--商品結束-->



    <!--footer-->
    <div style="width: 100%; margin: 0 auto; display: block; width: 1000px;">

        <img alt="Hawooo.com" src="https://www.hawooo.com/images/ftp/20180405/edm_03.png" style="float: left; display: block; width: 100%;" />
    </div>


</asp:Content>

