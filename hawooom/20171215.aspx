<%@ Page Language="C#" AutoEventWireup="true" CodeFile="20171215.aspx.cs" MasterPageFile="~/mobile/mobile.master" Inherits="_17_12_17_1215UrgentEDM_mobile_20171215" %>


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

    <!--edm開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">


            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/hotsale.aspx" target="_blank">
                <img alt="精選活動" src="https://www.hawooo.com/images/ftp/20171215/edmm_02.png" style="float: left; display: block; width: 100%;" /></a></li>

            <li style="margin: 0;">
                <img alt="全站滿額現抵" src="https://www.hawooo.com/images/ftp/20171215/edmm_03.png" style="float: left; display: block; width: 100%;" /></li>


            <!--第一塊開始-->
            <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #e14082;">
                <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                    <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/hotsale_detail.aspx?id=320">
                        <img alt="元氣家" src="https://www.hawooo.com/images/ftp/20171215/edmm_04.png" style="float: left; display: block; width: 100%;" /></a></li>




                    <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">



                        <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; height: auto;">
                              <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                    <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" /></a>
                                <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a href="product.aspx?id=<%# Eval("WP01") %>">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                </a></h4>
                                <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                                    RM<span style="font-size: medium; letter-spacing: -2px;">
                                        <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;">
                                            <asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                                </p>
                                </a></li>
                        </ItemTemplate>
                    </asp:Repeater>
                        </div>
                    </div>

                </ul>
            </div>

            <!--第二塊開始-->
            <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px; background-color: #ffc831;">
                <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                    <li style="margin: 0;"><a href="https://www.hawooo.com/mobile/shop.aspx?eid=326">
                        <img alt="Qmomo" src="https://www.hawooo.com/images/ftp/20171215/edmm_06.png" style="float: left; display: block; width: 100%;" /></a></li>




                    <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">



                        <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; background-color: green; height: auto;">

                          <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                    <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" /></a>
                                <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a href="product.aspx?id=<%# Eval("WP01") %>">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                </a></h4>
                                <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                                    RM<span style="font-size: medium; letter-spacing: -2px;">
                                        <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;">
                                            <asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                                </p>
                                </a></li>
                        </ItemTemplate>
                    </asp:Repeater>
                        </div>
                    </div>
                </ul>
            </div>

            <!--第三塊開始-->
            <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px; background-color: #e14082;">
                <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                    <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/hotsale_detail.aspx?id=310">
                        <img alt="聖誕書展" src="https://www.hawooo.com/images/ftp/20171215/edmm_08.png" style="float: left; display: block; width: 100%;" /></a></li>




                    <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">



                        <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; background-color: green; height: auto;">

                             <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                    <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" /></a>
                                <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a href="product.aspx?id=<%# Eval("WP01") %>">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                </a></h4>
                                <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                                    RM<span style="font-size: medium; letter-spacing: -2px;">
                                        <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;">
                                            <asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                                </p>
                                </a></li>
                        </ItemTemplate>
                    </asp:Repeater>
                        </div>
                    </div>
                </ul>
            </div>

            <!--第四塊開始-->
            <div class="am-cf" style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px; background-color: #ffc831;">
                <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

                    <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/hotsale_detail.aspx?id=322">
                        <img alt="美型計畫" src="https://www.hawooo.com/images/ftp/20171215/edmm_10.png" style="float: left; display: block; width: 100%;" /></a></li>




                    <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">



                        <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; background-color: green; height: auto;">
  <asp:Repeater ID="rp_product_list_4" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl" style="width: calc(50% - 10px); background: white; padding: 5px; margin: 5px; height: calc(100% - 20px);">
                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                    <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="am-img-responsive" /></a>
                                <h4 style="margin: 5px 5px; height: 40px; overflow: hidden; font-size: medium; line-height: 20px; color: #535252"><a href="product.aspx?id=<%# Eval("WP01") %>">
                                    <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                </a></h4>
                                <p style="margin: 5px 5px 0 5px; font-size: small; color: red">
                                    RM<span style="font-size: medium; letter-spacing: -2px;">
                                        <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;">
                                            <asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                                </p>
                                </a></li>
                        </ItemTemplate>
                    </asp:Repeater>
                        </div>
                    </div>
                </ul>
            </div>

            <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/hotsale.aspx" target="_blank">
                <img alt="hawooo.com" src="https://www.hawooo.com/images/ftp/20171215/edmm_12.png" style="float: left; display: block; width: 100%;" /></a></li>

        </ul>
    </div>

</asp:Content>
