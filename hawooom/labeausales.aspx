<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="labeausales.aspx.cs" Inherits="mobile_labeausales" %>

<%@ Import Namespace="hawooo" %>
<asp:Content id="Content1" contentplaceholderid="head" runat="Server">

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




    <!--小選單再見-->
    <!--edm開始-->
    <!--神奇圖層區開始-->
    <div style="width: 100%; position: relative; max-width: 650px; z-index: 1; margin: 0 auto; margin-bottom: -1px;margin-top:-6px">
        <img src="https://www.hawooo.com/images/ftp/20180710/edmm_01.png" style="width:100%"  alt="優惠商品"/>
    </div>


    <!--神奇圖層區掰掰-->

    <!--第1塊 start-->

    <div style="max-width: 650px; background-color: #79cfff; margin: 0 auto;">
    
        <div class="am-cf" style="max-width: 585px; background-color: #79cfff; margin: 0 auto;">

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



</asp:Content>
