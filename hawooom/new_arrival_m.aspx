<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="new_arrival_m.aspx.cs" Inherits="mobile_static_new_arrival_m" %>

<%@ Import Namespace="hawooo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0;" />
    <link href="assets/css/new_arrival.min.css" rel="stylesheet" />


    <div class="banner-box">
        <div class="timer">00:00:00:00</div>
        <img src="https://www.hawooo.com/images/ftp/2019newarv/bn_01m.png" alt="" style="width: 100%;" />
    </div>

    <div class="am-container" style="background-color: #FBEBD0;">
        <section class="new-arrival-box" id="product-make1">
            <ul class="new-arrival am-padding-left-0  am-avg-md-2">
              <%--  <asp:Repeater ID="rp_top_products" runat="server">
                    <ItemTemplate>
                        <li style="overflow: hidden; height: 200px;">
                            <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>">
                                <div class="product-left-box am-u-sm-7 am-padding-0">
                                    <img data-sizes="auto"
                                        src="../noimg.png"
                                        data-src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    <div class="new-arrival-tag">NEW<span class="arrival-p">ARRIVAL</span></div>
                                </div>

                                <div class="product-right-box  am-u-sm-5 ">
                                    <div class="product-news am-text-center am-text-nowrap">
                                        Limited  Offer  New  Items!
                                    </div>
                                    <div class="product-info">
                                        <h3 class="product-name"><%# Eval("WP02").ToString() %></h3>
                                        <div class="info-list">
                                            <%# Eval("WP24").ToString() %>
                                        </div>
                                        <div class="price-box">
                                            <h4 class="product-price">
                                                <span>RM <%# Eval("WPA06").ToString() %></span>
                                                <span class="original-price">
                                                    <%# Eval("WPA10").ToString() %>
                                                </span>
                                            </h4>
                                        </div>
                                        <div class="price-box">
                                            <h6 class="sele-off"><span><%# Eval("PERSENT").ToString() %></span></h6>
                                        </div>
                                    </div>
                                    <div class="buy-now-btn">
                                        <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>">BUY NOW</a>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>--%>
                <li>
                    <div class="resize">
                        <a href="#" class="am-u-sm-12" style="background-color: #fff">
                            <div class="product-left-box mb-left-box am-u-sm-7 am-padding-0">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20190102024611301.jpg" />
                                <div class="new-arrival-tag">NEW<span class="arrival-p">ARRIVAL</span></div>
                            </div>
                            <div class="product-right-box mb-right-box  am-u-sm-5 ">
                                <div class="product-news am-text-center am-text-nowrap">
                                    Limited   Offer   New   Items!
                                </div>
                                <div class="product-info">
                                    <h3 class="product-name">Stay with me 為妳停留霧面唇蜜Stay with me 為妳停留霧面唇蜜Stay with me 為妳停留霧面唇蜜</h3>
                                    <div class="info-list">
                                        <dl class="am-margin-0">
                                            <dd>．不會髒，就是不會髒！一撕即卸 無需去光水</dd>
                                            <dd>．不會髒，就是不會髒！一撕即卸 無需去光水</dd>
                                            <dd>．一撕即卸 無需去光水一撕即卸 無需去光水</dd>
                                        </dl>
                                    </div>
                                    <div class="price-box">
                                        <h1 class="product-price am-monospace ">RM49.90
                                        </h1>
                                        <div class="original-price ">RM100</div>
                                    </div>

                                    <div class="below-block">
                                        <h6 class="sale-off  am-monospace mb-sale-off">50% OFF</h6>
                                        <span class="product-items-tag">
                                            <img src='https://www.hawooo.com/images/icon/%E7%86%B1%E5%93%81.svg' style="width: 20px" />熱銷
                                </span>
                                    </div>
                                </div>
                                <div class="buy-now-btn"><span>BUY NOW</span> </div>
                            </div>
                        </a>
                    </div>
                </li>
            </ul>
        </section>
        <%-------------------------------------new-arrival大盒子end---------------------------------------%>
        <%-------------------------------------new-arrival小盒子start---------------------------------------%>

        <section class="new-arrival-smbox" id="product-make2">
            <ul class="am-padding-left-0 am-avg-sm-2 am-avg-md-3">
                <%--<asp:Repeater ID="rp_products2" runat="server">
                    <ItemTemplate>
                        <li class="am-fl">
                            <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>">
                                <div class="product-img">
                                    <img data-sizes="auto"
                                        src="../noimg.png"
                                        data-src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                </div>
                                <div class="product-text-box">
                                    <div class="product-item-block">
                                        <h3 class="smbox-product-name">
                                            <%# Eval("WP02").ToString() %>
                                        </h3>
                                    </div>
                                    <div class="product-item-block">
                                        <div class="product-price-block am-fl">
                                            <h4 class="smbox-product-price  am-margin-0"><span>RM <%# Eval("WPA06").ToString() %></span></h4>
                                            <p class="smbox-original-price">RM <%# Eval("WPA10").ToString() %></p>
                                        </div>
                                        <div class="smbox-sele-off am-fr">
                                            <span>
                                                <%# Eval("PERSENT").ToString() %>
                                            </span>
                                            <div class="product-items-tag">
                                                <%# Eval("WP30").ToString %>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>--%>
                <li class="am-fl">
                    <div class="resize-sm">
                        <a href="#">
                            <div class="product-img">
                                <img src="https://p8r7m4d5.stackpathcdn.com/images//webimgs/n20180518050242689.jpg" />
                            </div>
                            <div class="product-text-box">
                                <div class="product-item-block" style="position: fixed; display: contents;">
                                    <div class="smbox-product-name">【FreshO2】Stay with me 為妳停留霧面唇蜜</div>
                                </div>
                                <div class="product-item-block">
                                    <div class="product-price-block am-fl">
                                        <h4 class="smbox-product-price  am-margin-0"><span>RM 49.90</span></h4>
                                        <p class="smbox-original-price">RM 100</p>
                                    </div>
                                    <div class="smbox-sele-off am-fr">
                                        <span>50%OFF</span>
                                        <div class="product-items-tag">
                                            <img src='https://www.hawooo.com/images/icon/%E7%86%B1%E5%93%81.svg' style="width: 20px" />熱銷
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </li>
            </ul>
        </section>
    </div>
    <%--商品方塊li製造器--%>
    <script type="text/javascript">
        $(document).ready(function () {
            for (i = 0; i < 3; i++) {
                duplicate('product-make1');
            }
            for (i = 0; i < 3; i++) {
                duplicate('product-make2');
            }
            for (i = 0; i < 3; i++) {
                duplicate('product-make3');
            }
        });

        function duplicate(id) {
            var ul = $("#" + id + " ul");
            ul.find("li:last")
                .clone(true)
                .appendTo(ul);
        }
    </script>
</asp:Content>

