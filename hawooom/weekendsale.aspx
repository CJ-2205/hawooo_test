<%@ Page Language="C#" AutoEventWireup="true" CodeFile="weekendsale.aspx.cs" Inherits="weekendsale" MasterPageFile="~/mobile/mobile.master" %>

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


    <!--第一塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">


        <img alt="週末特殺" src="https://www.hawooo.com/images/ftp/20180511/edmm_01.png" style="float: left; display: block; width: 100%;" />

        <img alt="save up to 250" src="https://www.hawooo.com/images/ftp/20180511/edmm_02.png" style="float: left; display: block; width: 100%;" />

        <a href="http://www.hawooo.com/mobile/product.aspx?id=14140" target="_blank">
            <img alt="BHk's 膠原蛋白 " src="https://www.hawooo.com/images/ftp/20180511/edmm_03.png" style="float: left; display: block; width: 100%;" /></a>

    </div>

    <!--第一塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #bfb0e0">

        <div style="position: relative; max-width: 650px; margin: 0 auto;">

            <div id="div1" style="position: relative; max-width: 650px; margin: 0 auto;">


                <ul style="height: 50%; list-style-type: none; margin: 0 ; padding: 0;">
                    <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <h4 class="slogan">
                                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
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
        </div>
    </div>


    <!--第二塊開始-->
    <!--第2塊開始-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #de5b8a">

        <img src="https://www.hawooo.com/images/ftp/20180511/edmm_05.png" alt="save up to 50% off" style="width: 100%;">

        <a href="http://www.hawooo.com/mobile/product.aspx?id=12919" target="_blank">
            <img alt="廣源良 夏日簡單保養組" src="https://www.hawooo.com/images/ftp/20180511/edmm_06.png" style="float: left; display: block; width: 100%;" /></a>

        <div style="position: relative; max-width: 650px; margin: 0 auto;">



            <div id="div2" style="position: relative; max-width: 650px; margin: 0 auto;">
                <ul style="height: 50%; list-style-type: none; margin: 0; padding: 0;">
                    <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <h4 class="slogan">
                                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
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
        </div>
    </div>





    <!--公告開始喔-->


    <div class="am-cf" style="width:100%;margin:0 auto;display:block;max-width:650px;background-color:#F9201F;">

         <img alt="footer" src=" https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float:left;display:block;width:100%;" />             
    
    </div>        


    <script src="assets/js/jquery.url.js"></script>

    <%-- <script type="text/javascript">
        $(function () {
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 80 }, 500);
        }
    </script>--%>
</asp:Content>
