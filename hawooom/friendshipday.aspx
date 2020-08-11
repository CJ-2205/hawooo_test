﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="friendshipday.aspx.cs" Inherits="mobile_friendshipday" %>

<%@ Import Namespace="hawooo" %>
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
    <script src="assets/js/jquery.min.js"></script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">





    <!--edm開始-->
    <div class="am-cf" style="position: relative; width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: black;">

        <img alt="midterm sale" src="https://www.hawooo.com/images/ftp/20180724/friend/edmm_01.png" style="float: left; display: block; width: 100%;" />
        <div onclick="RedeemCoupon();" style="position: absolute; bottom: 5%; right: 28%; height: 38%; width: 25%;">
        </div>
    </div>
    <script>
        function RedeemCoupon() {
            var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
            if (u != null)
                $("#<%= button1.ClientID %>").click();
            else
                location.href = 'login.aspx?rurl=friendshipday.aspx';
        }
        <%--       function GetSpend() {

                var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
                if (u != null)
                    $("#<%= button2.ClientID %>").click();
                else
                    doLogin('dpaevent2.aspx');
            }--%>
    </script>
    <asp:UpdatePanel ID="up_add" runat="server">
        <ContentTemplate>
            <asp:Button runat="server" Text="Button" Style="display: none;" ID="button1" OnClick="button1_Click"></asp:Button>
            <%--           <asp:Button runat="server" Text="Button" Style="display: none;" ID="button2" OnClick="button2_Click"></asp:Button>--%>
        </ContentTemplate>
    </asp:UpdatePanel>
    <!--神奇圖層區開始-->
    <div style="width: 100%; position: relative; max-width: 650px; z-index: 1; margin: 0 auto; margin-bottom: -1px;">


        <a href="friendshipday.aspx?did=1">
            <img id="img1" src="https://www.hawooo.com/images/ftp/20180724/friend/edmm_02.png" style="width: 25%; float: left;"></a>

        <a href="friendshipday.aspx?did=2">
            <img id="img2" src="https://www.hawooo.com/images/ftp/20180724/friend/edmm_03.png" style="width: 25%; float: left;"></a>

        <a href="friendshipday.aspx?did=3">
            <img id="img3" src="https://www.hawooo.com/images/ftp/20180724/friend/edmm_04.png" style="width: 25%; float: left;">
        </a>

        <a href="friendshipday.aspx?did=4">
            <img id="img4" src="https://www.hawooo.com/images/ftp/20180724/friend/edmm_05.png" style="width: 25%; float: left;">
        </a>



        <%--  <div style="display: inline; position: absolute; z-index: 2; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">--%>


        <%--      <div runat="server" id="hidpl">
                <img id="hidimg" visible="false" runat="server" src="https://www.hawooo.com/images/ftp/20180709/select.png" alt="第一塊" style="position: absolute; top: 0; margin: auto; width: 25%; left: 0; background-color: rgba(4,4,4,0.5)" />
            </div>

            <div id="hidimg2" visible="false" runat="server">
                <img src="https://www.hawooo.com/images/ftp/20180709/select2.png" alt="第2塊" style="position: absolute; top: 0; margin: auto; width: 50%; left: 50%; background-color: rgba(4,4,4,0.5)" />
            </div>

            <div id="hidimg3"  runat="server" style="position: absolute; top: 0; margin: auto; width: 25%; height: 70px; left: 101.5%; background-color: rgba(4,4,4,0.5)">
            </div>
            <div id="hidimg4" visible="false" runat="server" style="position: absolute; top: 0; margin: auto; width: 25%; height: 70px; left: 101.5%; background-color: rgba(4,4,4,0.5)">
            </div>--%>

        <%-- </div>--%>
    </div>


    <!--神奇圖層區掰掰-->

    <!--第1塊 start-->

    <div style="max-width: 650px; background-color: #382789; margin: 0 auto;">

        <div class="am-cf" style="max-width: 585px; background-color: #382789; margin: 0 auto;">

            <div id="div1" style="position: relative; max-width: 600px; margin: 0 auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0; padding: 0;">


                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                    <div class="product_item_pic">
                                        <div id="<%#"imgdivHot"+ Container.ItemIndex  %>">
                                            <img src="../images/webimgs/<%# Eval("WP08_1").ToString() %>">
                                        </div>
                                    </div>
                                    <div class="product_item_text">
                                        <div class="product_item_block">
                                            <h3><%# Eval("WP02").ToString() %></h3>
                                        </div>
                                        <div class="product_item_block am-cf">

                                            <h4 class="am-fl">RM <%# PbClass.CashRate(Eval("WPA06").ToString() ,Application["mycashrate"].ToString())%></h4>

                                            <span class="product_item_dis"><%# decimal.Parse(Eval("WPA10").ToString()) > decimal.Parse(Eval("WPA06").ToString()) ? "省" + PbClass.CashRate((decimal.Parse(Eval("WPA10").ToString()) - decimal.Parse(Eval("WPA06").ToString())).ToString(),Application["mycashrate"].ToString()) : ""  %></span>
                                        </div>
                                        <div class="product_item_block am-cf">
                                            <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                            <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>"><span class="product-items-tag"><%# Eval("WP30").ToString()  %></span></p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>

                </ul>


            </div>
        </div>

    </div>






    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">

        <img alt="footer" src=" https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" />

    </div>

    <script src="js/jquery.url.js"></script>

    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/clipboard.min.js"></script>
    <script>

        $(function(){
            $("#footermenu").hide();
        });

        function imghid (i)
        {
            var id = $("#img"+i);
            id.css("opacity","0.4");
        }
    </script>


</asp:Content>
