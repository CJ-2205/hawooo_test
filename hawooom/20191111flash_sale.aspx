<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="20191111flash_sale.aspx.cs" Inherits="mobile_static_20191111flash_sale" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link href="assets/css/20191111.min.css" rel="stylesheet" />
    <style>
        .close {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-g main-contain">
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bbn_04m.png" %>' alt="main-banner" />
        </div>
    </div>

    <%--=============================Top Deals Flash Sale Start============================--%>
    <section class="am-padding-top  mb-shop-block-wrap" id="f1">
        <div class="banner-box  am-padding-bottom-sm">
            <a href="#!">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/f_01m.png" %>' alt="bn_07m" style="width: 100%;" />
            </a>
        </div>
        <div class="mb-shop-bg goods-mb">
            <div class="mb-shop-block" id="product-make1">
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
        </div>
        <div class="see-more mb-shop-bg" id="more1">
            <a href="#!">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more_01m.png" %>' alt="see more btn" style="width: 100%;" />
            </a>
        </div>
    </section>

    <%--=====================Top Deals Flash Sale End===============================--%>

    <%--=============================Value Buy Flash Sale Start============================--%>
    <section class="am-padding-top  mb-shop-block-wrap" id="f2">
        <div class="banner-box  am-padding-bottom-sm">
            <a href="#!">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/f_02m.png" %>' alt="bn_07m" style="width: 100%;" />
            </a>
        </div>
        <div class="mb-shop-bg goods-mb">
            <div class="mb-shop-block" id="product-make2">
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
        </div>
        <div class="see-more  mb-shop-bg" id="more2">
            <a href="#!">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more_01m.png" %>' alt="see more btn" style="width: 100%;" />
            </a>
        </div>
    </section>

    <%--=====================Value Buy Flash Sale End===============================--%>
    <%--=============================Beauty Flash Sale Start============================--%>
    <section class="am-padding-top  mb-shop-block-wrap" id="f3">
        <div class="banner-box  am-padding-bottom-sm">
            <a href="#!">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/f_03m.png" %>' alt="bn_07m" style="width: 100%;" />
            </a>
        </div>
        <div class="mb-shop-bg goods-mb">
            <div class="mb-shop-block" id="product-make3">
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
        </div>

        <div class="see-more  mb-shop-bg" id="more3">
            <a href="#!">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more_01m.png" %>' alt="see more btn" style="width: 100%;" />
            </a>
        </div>
    </section>

    <%--=====================Beauty Flash Sale End===============================--%>

    <%--=============================Life Style Flash Sale Start============================--%>
    <section class="mb-shop-block-wrap am-padding-vertical" id="f4">
        <div class="banner-box  am-padding-bottom-sm">
            <a href="#!">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/f_04m.png" %>' alt="bn_07m" style="width: 100%;" />
            </a>
        </div>
        <div class="mb-shop-bg goods-mb">
            <div class="mb-shop-block" id="product-make4">
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
        </div>
        <div class="see-more mb-shop-bg" id="more4">
            <a href="#!">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/more_01m.png" %>' alt="see more btn" style="width: 100%;" />
            </a>
        </div>
    </section>

    <%--=====================Life Style Flash Sale  End===============================--%>


    <%--======================= Footer=== Start ========================--%>
    <footer class="activity-method">
        <p class="activity-method-p am-margin-0 am-container">
            Flash Sale:<br />
            1.  Promotion date : 6th November 2019 - 11th November  2019<br />
            2. Add your favourite items to wish list from 6/11/2019 to 10/11/2019, your items on wishlist will be automatically added to shopping cart on 11/11/2019, check out ASAP!<br />
            3. Promo codes and all brand promotional activities are NOT applicable to flash sale items<br />
            4. All items are limited, hurry before they are gone!
        </p>
    </footer>
    <%--=======================Footer===End==========================--%>

    <div class="flash-sale-footer-bar footer-bar">
        <div class="am-container">
            <ul class="am-avg-sm-4">
                <li onclick="goto('f1')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_07m.png" %>' alt="ss_02m" style="width: 100%;" />
                </li>
                <li onclick="goto('f2')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_08m.png" %>' alt="ss_03m" style="width: 100%;" />
                </li>
                <li onclick="goto('f3')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_09m.png" %>' alt="ss_04m" style="width: 100%;" />
                </li>
                <li onclick="goto('f4')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_10m.png" %>' alt="ss_05m" style="width: 100%;" />
                </li>
            </ul>
        </div>
    </div>

    <script src="../../js/swiper.min.js"></script>
    <script type="text/javascript">


        function goto(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 800, 'swing');
        };

        //類別錨點
        function AnchorPoint(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 100);
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

