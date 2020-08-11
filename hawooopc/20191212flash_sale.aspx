<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20191212flash_sale.aspx.cs" Inherits="user_static_20191212flash_sale" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/20191212xmas.min.css" rel="stylesheet" />
    <style>
        .pitem {
            position: relative;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain">
        <div class="banner-box  am-text-center">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bbn_01.png" %>' alt="bbn_04" style="width: 100%;" />
        </div>
        <div class="am-container">
            <%--=====================錨點連結區1  Start===============================--%>
            <section id="f1">
                <div class="pc-flash-sale-menu flash-sale-footer-bar">
                    <ul class="am-avg-sm-4">
                        <li class="is-active" id="tab1">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_01.png" %>' alt="bu_01" /></li>
                        <li onclick="AnchorPoint('tab2')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_02.png" %>' alt="bu_02" /></li>
                        <li onclick="AnchorPoint('tab3')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_03.png" %>' alt="bu_03" /></li>
                        <li onclick="AnchorPoint('tab4')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_04.png" %>' alt="bu_04" /></li>
                    </ul>
                </div>

                <div class="banner-box">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/fbn_01.png" %>' alt="fbn_01" />
                </div>
                <div class="shop-block-bg shop-block am-padding-sm shop-block1">
                    <ul class="am-avg-sm-4">
                        <asp:Repeater ID="rp" runat="server">
                            <ItemTemplate>
                                <li class="am-fl">
                                    <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#!":"product.aspx?id="+Eval("WP01")%>'>
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                            </div>

                                            <%#  SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true") ?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>

                                            <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                                    <%# Eval("WP02").ToString() %>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span class="goods-price">RM <%# Eval("WPA06").ToString() %></span>
                                                    </div>
                                                    <div class="am-fr">
                                                        <span>-RM<%# Eval("decreaseAmount").ToString() %></span>
                                                    </div>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="fire-bar-block pc-fire-bar-block">
                                                        <div class="fire-img">
                                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bom.png" %>' alt="bom" />
                                                        </div>
                                                        <div class="fire-bar pc-fire-bar">
                                                            已售出<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>件
                                                        </div>
                                                        <div class="bar-white pc-bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                        <%--                            <li class="am-fl">
                                <a href="#">
                                    <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                            <img class="am-img-responsive" src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20180912051656843.jpg">
                                        </div>
                                        <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                            <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                                Beauty小舖 鈣密滴雞精膠囊 60粒/盒
                                            </div>
                                            <div class="am-u-sm-12 " style="padding: 5px !important">
                                                <div class="am-fl">
                                                    <span class="goods-price">RM 268.90
                                                    </span>
                                                </div>
                                                <div class="am-fr">
                                                    <span>-RM70.00
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="am-u-sm-12 " style="padding: 5px !important">
                                                <div class="fire-bar-block pc-fire-bar-block">
                                                    <div class="fire-img">
                                                        <img src="https://www.hawooo.com/images/ftp/20191111/bom.png" alt="bom" />
                                                    </div>
                                                    <div class="fire-bar pc-fire-bar">
                                                        已售出111件
                                                    </div>
                                                    <div class="bar-white pc-bar-white" style="width: 50%;"></div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </a>
                            </li>--%>
                    </ul>
                </div>
            </section>
            <%--===================== 錨點連結區1  End ==========================--%>

            <%--=====================錨點連結區2  Start===============================--%>

            <section id="f2">

                <div class=" pc-flash-sale-menu flash-sale-footer-bar">
                    <ul class="am-avg-sm-4">
                        <li onclick="AnchorPoint('tab1')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_01.png" %>' alt="bu_01" /></li>
                        <li class="is-active" id="tab2">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_02.png" %>' alt="bu_02" /></li>
                        <li onclick="AnchorPoint('tab3')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_03.png" %>' alt="bu_03" /></li>
                        <li onclick="AnchorPoint('tab4')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_04.png" %>' alt="bu_04" /></li>
                    </ul>
                </div>
                <div class="banner-box">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/fbn_02.png" %>' alt="fbn_02" />
                </div>
                <div class="shop-block-bg shop-block am-padding-sm shop-block1" id="p2">
                    <ul class="am-avg-sm-4">
                        <asp:Repeater ID="rp2" runat="server">
                            <ItemTemplate>
                                <li class="am-fl">
                                    <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#!":"product.aspx?id="+Eval("WP01")%>'>
                                        <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                            <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                            </div>

                                            <%#  SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true") ?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>

                                            <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                                    <%# Eval("WP02").ToString() %>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="am-fl">
                                                        <span class="goods-price">RM <%# Eval("WPA06").ToString() %></span>
                                                    </div>
                                                    <div class="am-fr">
                                                        <span>-RM<%# Eval("decreaseAmount").ToString() %></span>
                                                    </div>
                                                </div>
                                                <div class="am-u-sm-12 " style="padding: 5px !important">
                                                    <div class="fire-bar-block pc-fire-bar-block">
                                                        <div class="fire-img">
                                                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bom.png" %>' alt="bom" />
                                                        </div>
                                                        <div class="fire-bar pc-fire-bar">
                                                            已售出<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>件
                                                        </div>
                                                        <div class="bar-white pc-bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </section>
            <%--===================== 錨點連結區2  End ==========================--%>
            <%--=====================錨點連結區3  Start===============================--%>

            <section id="f3">
                <div class=" pc-flash-sale-menu flash-sale-footer-bar">
                    <ul class="am-avg-sm-4">
                        <li onclick="AnchorPoint('tab1')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_01.png" %>' alt="bu_01" /></li>
                        <li onclick="AnchorPoint('tab2')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_02.png" %>' alt="bu_02" /></li>
                        <li class="is-active" id="tab3">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_03.png" %>' alt="bu_03" /></li>
                        <li onclick="AnchorPoint('tab4')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_04.png" %>' alt="bu_04" /></li>
                    </ul>
                </div>
                <div class="banner-box">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/fbn_03.png" %>' alt="fbn_03" />
                </div>
                <div class="shop-block-bg shop-block am-padding-sm shop-block1" id="p3">
                    <ul class="am-avg-sm-4">
                         <asp:Repeater ID="rp3" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl">
                                        <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#!":"product.aspx?id="+Eval("WP01")%>'>
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                </div>

                                                <%#  SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true") ?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>

                                                <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                    <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                                        <%# Eval("WP02").ToString() %>
                                                    </div>
                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                        <div class="am-fl">
                                                            <span class="goods-price">RM <%# Eval("WPA06").ToString() %></span>
                                                        </div>
                                                        <div class="am-fr">
                                                            <span>-RM<%# Eval("decreaseAmount").ToString() %></span>
                                                        </div>
                                                    </div>
                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                        <div class="fire-bar-block pc-fire-bar-block">
                                                            <div class="fire-img">
                                                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bom.png" %>' alt="bom" />
                                                            </div>
                                                            <div class="fire-bar pc-fire-bar">
                                                                已售出<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>件
                                                            </div>
                                                            <div class="bar-white pc-bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                    </ul>
                </div>
            </section>
            <%--===================== 錨點連結區3  End ==========================--%>
            <%--=====================錨點連結區4  Start===============================--%>

            <section id="f4" class="am-margin-bottom-lg am-padding-bottom-lg">

                <div class="pc-flash-sale-menu flash-sale-footer-bar">
                    <ul class="am-avg-sm-4">
                        <li onclick="AnchorPoint('tab1')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_01.png" %>' alt="bu_01" />
                        </li>
                        <li onclick="AnchorPoint('tab2')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_02.png" %>' alt="bu_02" />
                        </li>
                        <li onclick="AnchorPoint('tab3')">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_03.png" %>' alt="bu_03" />
                        </li>
                        <li class="is-active" id="tab4">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bu_04.png" %>' alt="bu_04" />
                        </li>
                    </ul>
                </div>
                <div class="banner-box">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/fbn_04.png" %>' alt="fbn_04" />
                </div>
                <div class="shop-block-bg shop-block am-padding-sm shop-block1" id="p4">
                    <ul class="am-avg-sm-4">
                        <asp:Repeater ID="rp4" runat="server">
                                <ItemTemplate>
                                    <li class="am-fl">
                                        <a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#!":"product.aspx?id="+Eval("WP01")%>'>
                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">
                                                    <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>'>
                                                </div>

                                                <%#  SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true") ?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>

                                                <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                    <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">
                                                        <%# Eval("WP02").ToString() %>
                                                    </div>
                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                        <div class="am-fl">
                                                            <span class="goods-price">RM <%# Eval("WPA06").ToString() %></span>
                                                        </div>
                                                        <div class="am-fr">
                                                            <span>-RM<%# Eval("decreaseAmount").ToString() %></span>
                                                        </div>
                                                    </div>
                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                        <div class="fire-bar-block pc-fire-bar-block">
                                                            <div class="fire-img">
                                                                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bom.png" %>' alt="bom" />
                                                            </div>
                                                            <div class="fire-bar pc-fire-bar">
                                                                已售出<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>件
                                                            </div>
                                                            <div class="bar-white pc-bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                    </ul>
                </div>
            </section>
            <%--===================== 錨點連結區4  End ==========================--%>

            <%--=====================側邊選單 Start ==========================--%>
            <div class="side-bar am-center">
                <ul>
                    <li>
                        <a href="20191212xmas.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_00.png" %>' alt="ss_00" />
                        </a>
                    </li>
                    <li>
                        <a href="20191212flash_sale.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_01.png" %>' alt="ss_01" />
                        </a>
                    </li>
                    <li>
                        <a href="20191212best_gifts.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_02.png" %>' alt="ss_02" />
                        </a>
                    </li>
                    <li>
                        <a href="20191212earn_ha_coin_daily.aspx" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_03.png" %>' alt="ss_03" />
                        </a>
                    </li>
                    <li>
                        <a href="20191212xmas.aspx?#s4" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_04.png" %>' alt="ss_04" />
                        </a>
                    </li>
                    <li>
                        <a href="20191212xmas.aspx?#s5" target="_blank">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_05.png" %>' alt="ss_05" />
                        </a>
                    </li>
                </ul>
            </div>
            <%--=====================側邊選單 End==========================--%>
        </div>
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
    </div>
   

    <script type="text/javascript">


        //類別錨點
        function AnchorPoint(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 100);
        };
    </script>
</asp:Content>

