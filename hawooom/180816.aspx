<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="180816.aspx.cs" Inherits="mobile_180816" %>

<%@ Import Namespace="hawooo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        /*.txt-height {
            height: 150px;
        }*/

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
            /*padding: 3%;*/
            padding: 0px;
            margin: 5px;
            height: calc(100% - 20px);
        }

        .product_item_block {
            /*padding-bottom: 10px;*/
            padding-bottom: 0px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--3大類別小選單開始-->
    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999; max-height: 122px; padding: 0;">
        <ul class="am-avg-sm-3 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">

                <a href="javascript:void(0)" onclick="GoID('gosale1')">
                    <img src="https://www.hawooo.com/images/ftp/20180816/sidebarM_01.png" style="width: 100%; max-height: 90px;" alt="FG推薦"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale2')">
                    <img src="https://www.hawooo.com/images/ftp/20180816/sidebarM_02.png" style="width: 100%; max-height: 90px;" alt="主推"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale3')">
                    <img src="https://www.hawooo.com/images/ftp/20180816/sidebarM_03.png" style="width: 100%; max-height: 90px;" alt="平價"></a></li>

        </ul>
    </div>
    <!--3大類別小選單再見-->


    <!--edm開始-->

    <!--神奇圖層區開始-->
    <div style="width: 100%; position: relative; max-width: 650px; z-index: 1; margin: 0 auto; margin-bottom: -1px;">
        <img src="https://www.hawooo.com/images/ftp/20180816/edm_01.png" style="width: 100%">


        <div style="display: inline; position: absolute; z-index: 2; width: 66%; top: 69%; bottom: 0; left: 0; right: 0;">


            <a href="javascript:void(0)" onclick="GoID('gosale1')">
                <img src="https://www.hawooo.com/images/ftp/20180816/edmm_02.png" alt="FG推薦" style="position: absolute; top: 0; margin: auto; width: 50%; left: 0;" />
            </a>

            <a href="javascript:void(0)" onclick="GoID('gosale2')">
                <img src="https://www.hawooo.com/images/ftp/20180816/edmm_04.png" alt="館長推薦" style="position: absolute; top: 0; margin: auto; width: 50%; left: 99.5%;" />
            </a>

            <a href="javascript:void(0)" onclick="GoID('gosale3')">
                <img src="https://www.hawooo.com/images/ftp/20180816/edmm_03.png" alt="平價" style="position: absolute; top: 0; margin: auto; width: 50%; left: 51.5%;" />
            </a>

        </div>

    </div>


    <!--神奇圖層區掰掰-->


    <!--第1塊-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #F6BF07">

        <a href="http://www.hawooo.com/mobile/product.aspx?id=13751" target="_blank">
            <img id="gosale1" alt="Solone睡美人持久眉膠(3色可選)" src="https://www.hawooo.com/images/ftp/20180816/FGm1.png" style="float: left; display: block; width: 100%;" /></a>

        <div style="position: relative; max-width: 600px; margin: 0 auto;">

            <div id="div1" style="position: relative; max-width: 600px; margin: 0 auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">

                    <asp:Repeater ID="rp_product_list1_1" runat="server">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                    <div class="product_item_pic">
                                        <div id="<%#"imgdivHot"+ Container.ItemIndex  %>">
                                            <img src="../images/webimgs/<%# Eval("WP08_1").ToString() %>">
                                        </div>
                                    </div>
                                    <div class="product_item_text txt-height">
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

    <!--第1-2塊-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #F6BF07">

        <a href="http://www.hawooo.com/mobile/product.aspx?id=15831" target="_blank">
            <img alt="Emma1997身體勻嫩霜(180ml+60ml) 送身體潤膚霜(180ml)" src="https://www.hawooo.com/images/ftp/20180816/FGm2.png" style="float: left; display: block; width: 100%;" /></a>

        <div style="position: relative; max-width: 600px; margin: 0 auto;">



            <div id="div2" style="position: relative; max-width: 600px; margin: 0 auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">

                    <asp:Repeater ID="rp_product_list1_2" runat="server">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                    <div class="product_item_pic">
                                        <div id="<%#"imgdivHot"+ Container.ItemIndex  %>">
                                            <img src="../images/webimgs/<%# Eval("WP08_1").ToString() %>">
                                        </div>
                                    </div>
                                    <div class="product_item_text txt-height">
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
    <!--第1-3塊-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #F6BF07">

        <a href="http://www.hawooo.com/mobile/product.aspx?id=13106" target="_blank">
            <img alt="566香水能量洗髮露-戀愛加氛型(粉紅)510g★送滋潤沐浴乳110g" src="https://www.hawooo.com/images/ftp/20180816/FGm3.png" style="float: left; display: block; width: 100%;" /></a>

        <div style="position: relative; max-width: 600px; margin: 0 auto;">



            <div id="div3" style="position: relative; max-width: 600px; margin: 0 auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">

                    <asp:Repeater ID="rp_product_list1_3" runat="server">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                    <div class="product_item_pic">
                                        <div id="<%#"imgdivHot"+ Container.ItemIndex  %>">
                                            <img src="../images/webimgs/<%# Eval("WP08_1").ToString() %>">
                                        </div>
                                    </div>
                                    <div class="product_item_text txt-height">
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
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>


                </ul>


            </div>
        </div>

    </div>
    <!--第1-4塊-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #F6BF07">

        <a href="http://www.hawooo.com/mobile/product.aspx?id=12599" target="_blank">
            <img alt="隋棠代言-密沐浴露" src="https://www.hawooo.com/images/ftp/20180816/FGm4.png" style="float: left; display: block; width: 100%;" /></a>

        <div style="position: relative; max-width: 600px; margin: 0 auto;">



            <div id="div4" style="position: relative; max-width: 600px; margin: 0 auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">

                    <asp:Repeater ID="rp_product_list1_4" runat="server">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                    <div class="product_item_pic">
                                        <div id="<%#"imgdivHot"+ Container.ItemIndex  %>">
                                            <img src="../images/webimgs/<%# Eval("WP08_1").ToString() %>">
                                        </div>
                                    </div>
                                    <div class="product_item_text txt-height">
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

    <!--第1-5塊-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #F6BF07">

        <a href="http://www.hawooo.com/mobile/product.aspx?id=14422" target="_blank">
            <img alt="FG特優雙霸好評熱推組" src="https://www.hawooo.com/images/ftp/20180816/FGm5.png" style="float: left; display: block; width: 100%;" /></a>

        <div style="position: relative; max-width: 600px; margin: 0 auto;">



            <div id="div5" style="position: relative; max-width: 600px; margin: 0 auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">

                    <asp:Repeater ID="rp_product_list1_5" runat="server">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                    <div class="product_item_pic">
                                        <div id="<%#"imgdivHot"+ Container.ItemIndex  %>">
                                            <img src="../images/webimgs/<%# Eval("WP08_1").ToString() %>">
                                        </div>
                                    </div>
                                    <div class="product_item_text txt-height">
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


    <!--第2塊-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #272625">

        <img alt="館長保證" id="gosale2" src="https://www.hawooo.com/images/ftp/20180816/edmail_05.png" style="float: left; display: block; width: 100%;" />

        <div style="position: relative; max-width: 600px; margin: 0 auto;">



            <div id="div6" style="position: relative; max-width: 600px; margin: 0 auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">

                    <asp:Repeater ID="rp_product_list2" runat="server">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                    <div class="product_item_pic">
                                        <div id="<%#"imgdivHot"+ Container.ItemIndex  %>">
                                            <img src="../images/webimgs/<%# Eval("WP08_1").ToString() %>">
                                        </div>
                                    </div>
                                    <div class="product_item_text txt-height">
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

    <!--第3塊-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #272625">

        <img alt="平價" id="gosale3" src="https://www.hawooo.com/images/ftp/20180816/edmail_08n.png" style="float: left; display: block; width: 100%;" />

        <div style="position: relative; max-width: 600px; margin: 0 auto;">


            <div id="div7" style="position: relative; max-width: 600px; margin: 0 auto;">
                <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                    <asp:Repeater ID="rp_product_list3" runat="server">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                    <div class="product_item_pic">
                                        <div id="<%#"imgdivHot"+ Container.ItemIndex  %>">
                                            <img src="../images/webimgs/<%# Eval("WP08_1").ToString() %>">
                                        </div>
                                    </div>
                                    <div class="product_item_text txt-height">
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
    <!--公告開始喔-->


    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
        <img alt="footer" src=" https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" />
    </div>

    <script src="js/jquery.url.js"></script>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
    <script type="text/javascript">

        function duplicate(id) {
            var ul = $('#' + id + ' ul');
            ul.find('li:last').clone(true).appendTo(ul);
        }
    </script>

    <script type="text/javascript">
        $(function () {
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })
        function GoID(id) {
            $("#footermenu").remove();
            if (id != "")
                $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
        }
    </script>


</asp:Content>
