<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="20191212flash_sale.aspx.cs" Inherits="mobile_static_20191212flash_sale" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/20191212xmas.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g  main-contain">
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bbn_01m.png" %>' alt="banner" style="width: 100%;" />
        </div>

        <section class="am-margin-top-lg" id="p1">
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/fbn_01m.png" %>' alt="banner" style="width: 100%;" />
            </div>

            <div class="mb-shop-block mb-shop-bg goods-mb" id="product-make1">
                <ul class="am-avg-sm-2 am-avg-md-3" id="rp1_1">
                    <asp:Repeater ID="rp" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>
                                    <div class="product_item_pic">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                    </div>
                                    <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>

                                    <div class="product_item_text">
                                        <div class="product_item_block am-cf">
                                            <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                        </div>
                                        <div class="product_item_block am-cf">

                                            <h4 class="am-fl">RM <%# Eval("WPA06").ToString() %></h4>
                                            <span class="product_item_dis">-RM<%# Eval("decreaseAmount").ToString() %></span>
                                        </div>

                                        <%-- 火力bar --%>
                                        <div class="fire-bar-block">
                                            <div class="fire-img">
                                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bom.png" %>' alt="fire" style="width: 100%;" />
                                            </div>
                                            <div class="fire-bar">
                                                已售出<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>件
                                            </div>
                                            <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                        </div>
                                        <%-- 火力end --%>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <ul class="am-avg-sm-2 am-avg-md-3 close" id="rp1_2">
                    <asp:Repeater ID="rp1all" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>
                                    <div class="product_item_pic">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                    </div>
                                    <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>

                                    <div class="product_item_text">
                                        <div class="product_item_block am-cf">
                                            <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                        </div>
                                        <div class="product_item_block am-cf">

                                            <h4 class="am-fl">RM <%# Eval("WPA06").ToString() %></h4>
                                            <span class="product_item_dis">-RM<%# Eval("decreaseAmount").ToString() %></span>
                                        </div>

                                        <%-- 火力bar --%>
                                        <div class="fire-bar-block">
                                            <div class="fire-img">
                                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bom.png" %>' alt="fire" style="width: 100%;" />
                                            </div>
                                            <div class="fire-bar">
                                                已售出<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>件
                                            </div>
                                            <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                        </div>
                                        <%-- 火力end --%>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>

            <div class="see-more  mb-shop-bg" id="more1">
                <a href="#!">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/more.png" %>' alt="see more btn" style="width: 100%;" />
                </a>
            </div>
        </section>

        <section class="am-margin-top-lg" id="p2">
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/fbn_02m.png" %>' alt="banner" style="width: 100%;" />
            </div>
            <div class="mb-shop-block mb-shop-bg goods-mb">
                <ul class="am-avg-sm-2 am-avg-md-3" id="rp2_1">
                    <asp:Repeater ID="rp2" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>
                                    <div class="product_item_pic">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                    </div>
                                    <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>

                                    <div class="product_item_text">
                                        <div class="product_item_block am-cf">
                                            <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                        </div>
                                        <div class="product_item_block am-cf">

                                            <h4 class="am-fl">RM <%# Eval("WPA06").ToString() %></h4>
                                            <span class="product_item_dis">-RM<%# Eval("decreaseAmount").ToString() %></span>
                                        </div>

                                        <%-- 火力bar --%>
                                        <div class="fire-bar-block">
                                            <div class="fire-img">
                                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bom.png" %>' alt="fire" style="width: 100%;" />
                                            </div>
                                            <div class="fire-bar">
                                                已售出<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>件
                                            </div>
                                            <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                        </div>
                                        <%-- 火力end --%>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <ul class="am-avg-sm-2 am-avg-md-3 close" id="rp2_2">
                    <asp:Repeater ID="rp2all" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>
                                    <div class="product_item_pic">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                    </div>
                                    <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>

                                    <div class="product_item_text">
                                        <div class="product_item_block am-cf">
                                            <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                        </div>
                                        <div class="product_item_block am-cf">

                                            <h4 class="am-fl">RM <%# Eval("WPA06").ToString() %></h4>
                                            <span class="product_item_dis">-RM<%# Eval("decreaseAmount").ToString() %></span>
                                        </div>

                                        <%-- 火力bar --%>
                                        <div class="fire-bar-block">
                                            <div class="fire-img">
                                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bom.png" %>' alt="fire" style="width: 100%;" />
                                            </div>
                                            <div class="fire-bar">
                                                已售出<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>件
                                            </div>
                                            <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                        </div>
                                        <%-- 火力end --%>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
            <div class="see-more  mb-shop-bg" id="more2">
                <a href="#!">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/more.png" %>' alt="see more btn" style="width: 100%;" />
                </a>
            </div>
        </section>

        <section class="am-margin-top-lg" id="p3">
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/fbn_03m.png" %>' alt="banner" style="width: 100%;" />
            </div>
            <div class="mb-shop-block mb-shop-bg goods-mb">
                <ul class="am-avg-sm-2 am-avg-md-3" id="rp3_1">
                    <asp:Repeater ID="rp3" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>
                                    <div class="product_item_pic">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                    </div>
                                    <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>

                                    <div class="product_item_text">
                                        <div class="product_item_block am-cf">
                                            <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                        </div>
                                        <div class="product_item_block am-cf">

                                            <h4 class="am-fl">RM <%# Eval("WPA06").ToString() %></h4>
                                            <span class="product_item_dis">-RM<%# Eval("decreaseAmount").ToString() %></span>
                                        </div>

                                        <%-- 火力bar --%>
                                        <div class="fire-bar-block">
                                            <div class="fire-img">
                                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bom.png" %>' alt="fire" style="width: 100%;" />
                                            </div>
                                            <div class="fire-bar">
                                                已售出<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>件
                                            </div>
                                            <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                        </div>
                                        <%-- 火力end --%>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <ul class="am-avg-sm-2 am-avg-md-3 close" id="rp3_2">
                    <asp:Repeater ID="rp3all" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>
                                    <div class="product_item_pic">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                    </div>
                                    <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>

                                    <div class="product_item_text">
                                        <div class="product_item_block am-cf">
                                            <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                        </div>
                                        <div class="product_item_block am-cf">

                                            <h4 class="am-fl">RM <%# Eval("WPA06").ToString() %></h4>
                                            <span class="product_item_dis">-RM<%# Eval("decreaseAmount").ToString() %></span>
                                        </div>

                                        <%-- 火力bar --%>
                                        <div class="fire-bar-block">
                                            <div class="fire-img">
                                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bom.png" %>' alt="fire" style="width: 100%;" />
                                            </div>
                                            <div class="fire-bar">
                                                已售出<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>件
                                            </div>
                                            <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                        </div>
                                        <%-- 火力end --%>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
            <div class="see-more  mb-shop-bg" id="more3">
                <a href="#!">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/more.png" %>' alt="see more btn" style="width: 100%;" />
                </a>
            </div>
        </section>

        <section class="am-margin-top-lg am-margin-bottom-xl" id="p4">
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/fbn_04m.png" %>' alt="banner" style="width: 100%;" />
            </div>
            <div class="mb-shop-block mb-shop-bg goods-mb">
                <ul class="am-avg-sm-2 am-avg-md-3" id="rp4_1">
                    <asp:Repeater ID="rp4" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>
                                    <div class="product_item_pic">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                    </div>
                                    <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>

                                    <div class="product_item_text">
                                        <div class="product_item_block am-cf">
                                            <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                        </div>
                                        <div class="product_item_block am-cf">

                                            <h4 class="am-fl">RM <%# Eval("WPA06").ToString() %></h4>
                                            <span class="product_item_dis">-RM<%# Eval("decreaseAmount").ToString() %></span>
                                        </div>

                                        <%-- 火力bar --%>
                                        <div class="fire-bar-block">
                                            <div class="fire-img">
                                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bom.png" %>' alt="fire" style="width: 100%;" />
                                            </div>
                                            <div class="fire-bar">
                                                已售出<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>件
                                            </div>
                                            <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                        </div>
                                        <%-- 火力end --%>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <ul class="am-avg-sm-2 am-avg-md-3 close" id="rp4_2">
                    <asp:Repeater ID="rp4all" runat="server">
                        <ItemTemplate>
                            <li class="am-fl">
                                <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>
                                    <div class="product_item_pic">
                                        <img data-sizes="auto" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                    </div>
                                    <%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>

                                    <div class="product_item_text">
                                        <div class="product_item_block am-cf">
                                            <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                        </div>
                                        <div class="product_item_block am-cf">

                                            <h4 class="am-fl">RM <%# Eval("WPA06").ToString() %></h4>
                                            <span class="product_item_dis">-RM<%# Eval("decreaseAmount").ToString() %></span>
                                        </div>

                                        <%-- 火力bar --%>
                                        <div class="fire-bar-block">
                                            <div class="fire-img">
                                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bom.png" %>' alt="fire" style="width: 100%;" />
                                            </div>
                                            <div class="fire-bar">
                                                已售出<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>件
                                            </div>
                                            <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                        </div>
                                        <%-- 火力end --%>
                                    </div>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
            <div class="see-more mb-shop-bg" id="more4">
                <a href="#!">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/more.png" %>' alt="see more btn" style="width: 100%;" />
                </a>
            </div>
        </section>
    </div>

    <%--======================= Footer=== Start ========================--%>
    <footer class="activity-method">
        <p class="activity-method-p am-margin-0 am-container">
            1212 Flash Sale:<br />
            1. Promotion date : 8th December 2019 - 12th December 2019<br />
            2. Add your favourite items to wish list from 8/12/2019 to 11/12/2019, your items on wishlist will be automatically added to shopping cart on 12/12/2019, check out ASAP!<br />
            3. Promo codes and all brand promotional activities are NOT applicable to flash sale items<br />
            4. Gift with minimum spending (Beauty Box and Calendar) is APPLICABLE on flash sale items<br />
            5. All items are limited, hurry before they are gone!
        </p>
    </footer>
    <%--=======================Footer===End==========================--%>


    <div class="footer-bar" style="z-index:100">
        <div class="am-container">
            <ul class="am-avg-sm-4">
                <li onclick="goto('p1')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_01m.png" %>' alt="bu_01m" style="width: 100%;" />
                </li>
                <li onclick="goto('p2')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_02m.png" %>' alt="bu_02m" style="width: 100%;" />
                </li>
                <li onclick="goto('p3')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_03m.png" %>' alt="bu_03m" style="width: 100%;" />
                </li>
                <li onclick="goto('p4')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_04m.png" %>' alt="bu_04m" style="width: 100%;" />
                </li>
            </ul>
        </div>
    </div>

    <script type="text/javascript">


        function goto(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 800, 'swing');
        };

        $("#more1").click(function () {
            $("#rp1_1").remove();
            $("#rp1_2").removeClass('close');
        });
        $("#more2").click(function () {
            $("#rp2_1").remove();
            $("#rp2_2").removeClass('close');
        });
        $("#more3").click(function () {
            $("#rp3_1").remove();
            $("#rp3_2").removeClass('close');
        });
        $("#more4").click(function () {
            $("#rp4_1").remove();
            $("#rp4_2").removeClass('close');
        });
    </script>
</asp:Content>

