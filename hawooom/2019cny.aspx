<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="2019cny.aspx.cs" Inherits="mobile_2019cny" %>

<%@ Import Namespace="hawooo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        img {
            width: 100%;
        }

        .cny-header {
            position: relative;
            background-color: #f9cfa7;
        }

        .cny-coupon {
            position: absolute;
            margin: auto;
            bottom: 2%;
            width: 70%;
            left: 0;
            right: 0;
        }


        .cny-container {
            position: relative;
            background-color: #f9cfa7;
        }

        .cny-product-group {
            position: relative;
            background-color: #f9cfa7;
        }

            .cny-product-group .product-info-wrapper {
                background-color: #AE160A;
                z-index: 2;
                position: relative;
            }

            .cny-product-group .color-bar {
                background-color: #AE160A;
                height: 40%;
                width: 100%;
                position: absolute;
                top: 15%;
            }

            .cny-product-group ul {
                background-color: #AE160A;
            }

                .cny-product-group ul li {
                    margin-right: 5px;
                    background-color: #ffffff;
                }

        .cny-event {
            position: relative;
        }

            .cny-event div {
                padding: 5px 10px;
            }

        .cny-brand {
            position: relative;
        }


        .product-slider-text {
            max-width: 150px;
            padding: 5px 0 0 0;
            margin: 0;
        }

        .product-slider-content li {
            position: relative;
            padding: 0 5px;
            margin: 10px 0;
            border-right: 1px solid #eaeaea;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 100%">
        <div class="cny-header">
            <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190103/edmm_01.png" />
            <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190103/edmm_02.png" />
            <div class="cny-coupon">
                <ul class="am-avg-sm-2">
                    <li>
                        <a class="btnn " data-clipboard-text="18CNY20">
                            <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190103/coupon_1.png" />
                        </a>
                    </li>
                    <li>
                        <a class="btnn " data-clipboard-text="18CNY30">
                            <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190103/coupon_2.png" />
                        </a>
                    </li>
                    <li>
                        <a class="btnn " data-clipboard-text="18CNY50">
                            <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190103/coupon_3.png" />
                        </a>
                    </li>
                    <li>
                        <a class="btnn " data-clipboard-text="18CNY100">
                            <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190103/coupon_4.png" />
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="cny-container">
            <section class="cny-product">
                <div class="cny-product-group">
                    <section>
                        <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190103/edmm_03.png" style="position: relative; z-index: 2" />
                    </section>
                    <section class="color-bar">
                    </section>
                    <section class="am-container product-info-wrapper container-suggested-slider">
                        <div class="product-slider-content" id="tg0">
                            <ul class="am-cf" style="">
                                <asp:Repeater ID="rp1" runat="server">
                                    <ItemTemplate>

                                        <li class="am-fl">
                                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                <div class="product-slider-text">
                                                    <h3>
                                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h3>
                                                    <h4>RM 
                                                            <asp:Literal ID="Literal2" runat="server" Text='<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></h4>
                                                    <p class="am-fr">
                                                        <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                    <p>
                                                        <div class="product_item_block am-cf">
                                                            <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                            <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %></span>
                                                            </p>
                                                        </div>
                                            </a>
                                        </li>


                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </section>
                </div>

                <div class="cny-product-group">
                    <section>
                        <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190103/edmm_04.png" style="position: relative; z-index: 2" />
                    </section>
                    <section class="color-bar">
                    </section>
                    <section class="am-container product-info-wrapper container-suggested-slider">
                        <div class="product-slider-content" id="tg1">
                            <ul class="am-cf" style="">
                                <asp:Repeater ID="rp2" runat="server">
                                    <ItemTemplate>

                                        <li class="am-fl">
                                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                <div class="product-slider-text">
                                                    <h3>
                                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h3>
                                                    <h4>RM 
                                                            <asp:Literal ID="Literal2" runat="server" Text='<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></h4>
                                                    <p class="am-fr">
                                                        <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                    <p>
                                                        <div class="product_item_block am-cf">
                                                            <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                            <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %></span>
                                                            </p>
                                                        </div>
                                            </a>
                                        </li>




                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </section>
                </div>

                <div class="cny-product-group">
                    <section>
                        <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190103/edmm_04.png" style="position: relative; z-index: 2" />
                    </section>
                    <section class="color-bar">
                    </section>
                    <section class="am-container product-info-wrapper container-suggested-slider">
                        <div class="product-slider-content" id="tg2">
                            <ul class="am-cf" style="">
                                <asp:Repeater ID="rp3" runat="server">
                                    <ItemTemplate>

                                        <li class="am-fl">
                                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                                <div class="product-slider-text">
                                                    <h3>
                                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h3>
                                                    <h4>RM 
                                                            <asp:Literal ID="Literal2" runat="server" Text='<%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></h4>
                                                    <p class="am-fr">
                                                        <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                    <p>
                                                        <div class="product_item_block am-cf">
                                                            <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                            <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %></span>
                                                            </p>
                                                        </div>
                                            </a>
                                        </li>


                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </section>
                </div>
            </section>

            <section class="cny-event">
                <div>
                    <a href="#">
                        <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190103/section_4m.png" />
                    </a>
                </div>
                <div>
                    <a href="#">
                        <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190103/section_5m.png" />
                    </a>
                </div>
                <div>
                    <a href="#">
                        <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190103/section_6m.png" />
                    </a>
                </div>
                <div>
                    <a href="#">
                        <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190103/section_7m.png" />
                    </a>
                </div>
            </section>

            <section class="cny-brand">
                <div>
                    <img src="<%= ConfigurationManager.AppSettings["imgUrl"] %>ftp/20190103/edmm_06.png" />
                </div>
            </section>
        </div>

    </div>
    <script src="assets/js/clipboard.min.js"></script>
    <script>
        var clipboard = new ClipboardJS('.btnn');

        clipboard.on('success', function (e) {
            console.info('Action:', e.action);
            console.info('Text:', e.text);
            alert("The voucher code have been copied,please enter it when you get ready to pay.");
            e.clearSelection();
        });

        clipboard.on('error', function (e) {
            console.error('Action:', e.action);
            console.error('Trigger:', e.trigger);
        });
    </script>
    <script>

        // 自動偵測長度 only use in ul and li

        // thisli = li's length. i > margin or something

        $(function () {
            for (i = 0; i <= 2; i++) {
                detectLength($("#tg" + i + " li"), 5);
            }
            //$("#footermenu").css("display", "none");
        });

        function detectLength(thisli, i) {

            var licount = $(thisli).length;

            var liWidth = $(thisli).outerWidth() + i;

            var litotalWidth = licount * liWidth;

            $(thisli).parent("ul").css("width", litotalWidth);

        };
    </script>
</asp:Content>

