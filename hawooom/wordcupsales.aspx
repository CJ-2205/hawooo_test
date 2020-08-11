<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true"
    CodeFile="wordcupsales.aspx.cs" Inherits="mobile_wordcupsales" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">




    <style>
        body {
            max-width: 650px;
            margin: 0 auto;
            background: #f5f5f5;
            position: relative;
        }


        .box {
            width: calc(50% - 10px);
            background: white;
            padding: 2px;
            margin: 2% 5px 5px 5px;
            height: calc(100% - 20px);
        }

        .sale1 {
            max-width: 590px;
            background-color: yellow;
            width: 100%;
            margin: 0 auto;
        }


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

        .btnns {
            /*display: block;
            position: absolute;
            width: 250px;
            height: 50px;
            top: 380px;
            right: 65px;*/
            display: inline-block;
            position: absolute;
            width: 45%;
            height: 8%;
            right: 0px;
            left: 50%;
            cursor: pointer;
            top: 50%;
        }
    </style>
    <script src="assets/js/jquery.min.js"></script>
    <script>

        $(function () {
            $("#gotop").remove();
            hiddenFooterMenu();
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            };

            //$(window).scroll(function () {
            //    $("#gotop").hide()
            //});         //藏gotop的icon
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--4大類別小選單開始-->
    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 999; max-height: 122px; padding: 0;">
        <ul class="am-avg-sm-4 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">

                <a href="javascript:void(0)" onclick="GoID('gotop2')">
                    <img src="https://www.hawooo.com/images/ftp/20180620/pro/sidebarM_01.png" style="width: 100%; max-height: 90px;" alt="TOP"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale1')">
                    <img src="https://www.hawooo.com/images/ftp/20180620/pro/sidebarM_02.png" style="width: 100%; max-height: 90px;" alt="熬夜看足球"></a></li>

            <li class="am-fl"><a href="javascript:void(0)" onclick="GoID('gosale2')">
                <img src="https://www.hawooo.com/images/ftp/20180620/pro/sidebarM_03.png" style="width: 100%; max-height: 90px;" alt="自然系美女"></a></li>

            <li class="am-fl">
                <a href="javascript:void(0)" onclick="GoID('gosale3')">
                    <img src="https://www.hawooo.com/images/ftp/20180620/pro/sidebarM_04.png" style="width: 100%; max-height: 90px;" alt="運動風混搭"></a></li>



        </ul>
    </div>
    <!--小選單再見-->


    <!--edm開始-->

    <!--神奇圖層區開始-->
    <div style="width: 100%; position: relative; max-width: 650px; z-index: 1; margin: 0 auto; margin-bottom: -1px;">
        <img id="gotop2" src="https://www.hawooo.com/images/ftp/20180620/pro/edmm_01.png" style="width: 100%" alt="優惠商品">

        <div class="btnn btnns" data-clipboard-text="Worldcup20"></div>

        <img src="https://www.hawooo.com/images/ftp/20180620/pro/edmm_02.png" style="width: 100%">


        <div style="display: inline; position: absolute; z-index: 2; width: 70%; top: 0; bottom: 0; left: 0; right: 0;">


            <a href="https://www.hawooo.com/mobile/WorldCupSpin.aspx" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180620/32/btn_01.png" alt="ha幣足球" style="position: absolute; top: 60%; margin: auto; width: 110%; left: 20%;" />
            </a>

            <a href="https://www.hawooo.com/mobile/18worldcup.aspx" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180620/pro/btn_03.png" alt="商品搶好康" style="position: absolute; top: 80%; margin: auto; width: 110%; left: 20%;" />
            </a>


        </div>

    </div>


    <!--神奇圖層區掰掰-->

    <!--第1塊 start-->

    <div style="max-width: 650px; background-color: #000b04; margin: 0 auto;">
        <img id="gosale1" alt="熬夜看世足" src="https://www.hawooo.com/images/ftp/20180620/pro/edmm_03.png" style="float: left; display: block; width: 100%;" />

        <div class="am-cf" style="max-width: 585px; background-color: #022540; margin: 0 auto;">

            <div id="div1" style="position: relative; max-width: 600px; margin: 0 auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0; padding: 0;">

                    <%-- 	<li class="am-fl box" >
               	<a herf="#">
                
               	<img src="https://www.hawooo.com/images/ftp/20171012/testt.jpg" style="width:100%;">
               	<h4 class="pnamem">My Bra nalla 挺挺 敲敲你心房3D立體無鋼圈內衣 花園藍</h4>
               	<p class="discountpricem" >RM<span style="font-size:medium;letter-spacing: -2px;">100.00</span><del class="am-fr deletepricem">200.00</del></p></a></li>--%>
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
        <a href="http://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
            <img alt="生活看更多" src="https://www.hawooo.com/images/ftp/20180620/pro/edmm_14.png" style="float: left; display: block; width: 33.3%;" /></a>

        <a href="http://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
            <img alt="保健看更多" src="https://www.hawooo.com/images/ftp/20180620/pro/edmm_15.png" style="float: left; display: block; width: 33.3%;" /></a>

        <a href="http://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
            <img alt="美食看更多" src="https://www.hawooo.com/images/ftp/20180620/pro/edmm_16.png" style="float: left; display: block; width: 33.3%;" /></a>

    </div>



    <!--第2塊 start-->

    <div style="max-width: 650px; background-color: #000b04; margin: 0 auto;">
        <img id="gosale2" alt="自然系美女" src="https://www.hawooo.com/images/ftp/20180620/pro/edmm_07.png" style="float: left; display: block; width: 100%;" />

        <div class="am-cf" style="max-width: 585px; background-color: #022540; margin: 0 auto;">

            <div id="div2" style="position: relative; max-width: 600px; margin: 0 auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0; padding: 0;">

                    <asp:Repeater ID="Repeater2" runat="server">
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

        <a href="http://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
            <img alt="保養看更多" src="https://www.hawooo.com/images/ftp/20180620/pro/edmm_05.png" style="float: left; display: block; width: 50%;" /></a>

        <a href="http://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
            <img alt="美妝看更多" src="https://www.hawooo.com/images/ftp/20180620/pro/edmm_06.png" style="float: left; display: block; width: 50%;" /></a>




    </div>

    <!--第3塊 start-->

    <div style="max-width: 650px; background-color: #000b04; margin: 0 auto;">
        <img id="gosale3" alt="運動風混搭" src="https://www.hawooo.com/images/ftp/20180620/pro/edmm_12.png" style="float: left; display: block; width: 100%;" />

        <div class="am-cf" style="max-width: 585px; background-color: #022540; margin: 0 auto;">

            <div id="div3" style="position: relative; max-width: 600px; margin: 0 auto;">

                <ul style="height: 50%; list-style-type: none; margin: 0; padding: 0;">

                    <asp:Repeater ID="Repeater3" runat="server">
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
        <a href="http://www.hawooo.com/mobile/shop.aspx?cid=44" target="_blank">
            <img alt="內衣看更多" src="https://www.hawooo.com/images/ftp/20180620/pro/edmm_09.png" style="float: left; display: block; width: 33.3%;" /></a>

        <a href="http://www.hawooo.com/mobile/shop.aspx?cid=46" target="_blank">
            <img alt="包包看更多" src="https://www.hawooo.com/images/ftp/20180620/pro/edmm_10.png" style="float: left; display: block; width: 33.3%;" /></a>

        <a href="http://www.hawooo.com/mobile/shop.aspx?cid=45" target="_blank">
            <img alt="鞋子看更多" src="https://www.hawooo.com/images/ftp/20180620/pro/edmm_11.png" style="float: left; display: block; width: 33.3%;" /></a>





    </div>


    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">

        <img alt="footer" src=" https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" />

    </div>

    <script src="js/jquery.url.js"></script>

    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/clipboard.min.js"></script>
    <%--     <script type="text/javascript">
        $(document).ready(function () {
            for (i = 0; i < 19; i++) {
                duplicate('div1');
				
				 duplicate('div2');
			duplicate('div3');
	
                
            }
			
        });


        function duplicate(id) {
            var ul = $('#'+id+' ul');
            ul.find('li:last').clone(true).appendTo(ul);
        }

    </script>--%>

    <script type="text/javascript">


        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
        };

        var clipboard = new ClipboardJS('.btnn');

        clipboard.on('success', function (e) {
            console.info('Action:', e.action);
            console.info('Text:', e.text);
            alert("已複製，請記得在結帳時輸入喔～");
            e.clearSelection();
        });

        clipboard.on('error', function (e) {
            console.error('Action:', e.action);
            console.error('Trigger:', e.trigger);
        });

    </script>

</asp:Content>
