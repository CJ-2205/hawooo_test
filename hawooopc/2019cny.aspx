<%@ Page Language="C#" AutoEventWireup="true" CodeFile="2019cny.aspx.cs" Inherits="user_2019cny" %>

<%@ Import Namespace="hawooo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="assets/css/amazeui.min.css" rel="stylesheet" />
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
    <link href="assets/css/app.css" rel="stylesheet" />
    <style>
        img {
            width: 100%;
            display: block;
            vertical-align: bottom;
        }

        .cny-header {
            position: relative;
            width: 100%;
            margin: auto;
            text-align: center;
            background-color: #f9cfa7;
        }

        .cny-coupon {
            position: absolute;
            display: block;
            bottom: 18%;
            width: 45%;
            margin: auto;
            left: 0;
            right: 0;
        }


        .cny-container {
            position: absolute;
            width: 100%;
            top: 90%;
        }

        .am-container {
            max-width: 1030px;
        }

        .product-group {
            position: relative;
            width: 1030px;
            left: 0;
            right: 0;
            margin: auto;
        }

            .product-group .product-list {
                position: relative;
                z-index: 2;
                width: 940px;
                top: -10px;
                left: 0;
                right: 0;
                margin: auto;
                background-color: #AE160A;
                border-left: 8px solid #FAD98A;
                border-right: 8px solid #FAD98A;
                border-bottom: 8px solid #FAD98A;
            }

            .product-group .color-bar {
                position: absolute;
                margin: auto;
                background-color: #AE160A;
                height: 40%;
                width: 95%;
                top: 15%;
                left: 0;
                right: 0;
            }

            .product-group .color-bar2 {
                background-color: #AE160A;
                height: 50%;
                width: 95.8%;
                position: absolute;
                top: 50%;
                left: 0;
                right: 0;
                margin: auto;
            }

            .product-group .title-img {
                position: relative;
                z-index: 1;
            }

            .product-group ul {
                width: 100%;
                background-color: #AE160A;
                position: relative;
                margin: auto;
                top: 60%;
                left: 0;
                right: 0;
            }

            .product-group .more-btn {
                width: 60px;
                background-color: #ED1C24;
                display: block;
                margin: auto;
                left: 0;
                right: 0;
                text-align: center;
                height: 295px;
                line-height: 295px;
            }

                .product-group .more-btn img {
                    width: auto;
                    vertical-align: middle;
                    margin: auto;
                    padding-top: 20px;
                }

        a {
            color: #a8a8a8;
        }

        .product-items-tag {
            padding: 2px 6px;
            color: #689b94;
            background: #e3eae9;
            vertical-align: bottom;
            border-radius: 12px;
        }

        .padding-0 {
            padding: 0px;
        }

        .cny-event {
            position: relative;
            width: 1030px;
            z-index: 2;
        }

            .cny-event ul {
                padding: 0px 40px;
            }

            .cny-event li {
                padding: 5px;
            }

        .cny-brand {
            position: relative;
            width: 1030px;
            z-index: 2;
        }

            .cny-brand .cny-brand-header-bar {
                padding: 0 30px;
            }

                .cny-brand .cny-brand-header-bar img {
                    padding-top: 10px;
                }

                .cny-brand .cny-brand-header-bar a {
                    padding-top: 10px;
                }

            .cny-brand .cny-brand-container {
                padding-top: 10px;
            }

        .brand-list {
            position: relative;
            padding: 0px 30px;
            z-index: 2;
        }

            .brand-list li {
                position: relative;
                padding: 5px;
                margin: auto;
                left: 0;
                right: 0;
                text-align: center;
            }

            .brand-list .brand {
                padding: 5px;
                background-color: white;
            }

        .brand-img img {
            width: 100%;
        }

        .brand-logo img {
            width: 30%;
            position: absolute;
            margin: auto;
            left: 0;
            right: 0;
            top: 180px;
            border: 2px solid #ffff;
        }

        .brand-note {
            position: relative;
            padding: 30px 0px 10px;
        }

            .brand-note .name {
                color: black;
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                font-size: 16px;
                padding-bottom: 3px;
            }

            .brand-note .note {
                font-size: 14px;
                line-height: 18px;
                color: #979697;
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div style="min-width: 1180px;">
            <section class="cny-header">

                <img src="https://www.hawooo.com/images/ftp/20190103/edm_01.png" />
                <img src="https://www.hawooo.com/images/ftp/20190103/edm_02.png" />

                <ul class="am-avg-sm-4 cny-coupon">
                    <li>
                        <a href="#">
                            <img src="https://www.hawooo.com/images/ftp/20190103/coupon_1.png" />
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="https://www.hawooo.com/images/ftp/20190103/coupon_2.png" />
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="https://www.hawooo.com/images/ftp/20190103/coupon_3.png" />
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="https://www.hawooo.com/images/ftp/20190103/coupon_4.png" />
                        </a>
                    </li>
                </ul>
            </section>
            <div class="cny-container ">
                <div class="am-container">
                    <section class="product-group-list">
                        <div class="product-group">
                            <div>
                                <img src="https://www.hawooo.com/images/ftp/20190103/edm_03.png" class="title-img" />
                            </div>

                            <div class="product-list">
                                <ul class="am-avg-sm-4 am-gallery-bordered product">
                                    <asp:Repeater ID="rp1" runat="server">
                                        <ItemTemplate>
                                            <li>
                                                <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                                    <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                                        <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">

                                                            <asp:Image ID="img_WP08_1" runat="server" CssClass="am-img-responsive" ImageUrl='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' EnableViewState="false" />

                                                        </div>
                                                        <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                            <%--  <div class="gallery_title_top">
                                                <asp:Literal ID="lit_WP24" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal>
                                            </div>--%>
                                                            <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">

                                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02").ToString() %>'></asp:Literal>

                                                            </div>
                                                            <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                <div class="am-fl">
                                                                    <span style="color: #EE5984; font-size: 18px; font-weight: bold;">
                                                                        <asp:Literal ID="litWPA06" runat="server" Text='<%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                                    </span>
                                                                </div>
                                                                <div class="am-fr">
                                                                    <span style="vertical-align: middle;">
                                                                        <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                <div class="am-fl">
                                                                    <span style="font-size: 13px;">
                                                                        <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                                    </span>
                                                                </div>
                                                                <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                    <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
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
                        </div>

                        <div class="product-group">
                            <div>
                                <img src="https://www.hawooo.com/images/ftp/20190103/edm_04.png" class="title-img" />
                            </div>

                            <div class="product-list">
                                <div class="am-g">
                                    <div class="am-u-sm-11 padding-0">
                                        <ul class="am-avg-md-4 am-gallery-bordered product">
                                            <asp:Repeater ID="rp2" runat="server">
                                                <ItemTemplate>
                                                    <li>
                                                        <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">

                                                                    <asp:Image ID="img_WP08_1" runat="server" CssClass="am-img-responsive" ImageUrl='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' EnableViewState="false" />

                                                                </div>
                                                                <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                                    <%--  <div class="gallery_title_top">
                                                <asp:Literal ID="lit_WP24" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal>
                                            </div>--%>
                                                                    <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">

                                                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02").ToString() %>'></asp:Literal>

                                                                    </div>
                                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                        <div class="am-fl">
                                                                            <span style="color: #EE5984; font-size: 18px; font-weight: bold;">
                                                                                <asp:Literal ID="litWPA06" runat="server" Text='<%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                                            </span>
                                                                        </div>
                                                                        <div class="am-fr">
                                                                            <span style="vertical-align: middle;">
                                                                                <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                                            </span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                        <div class="am-fl">
                                                                            <span style="font-size: 13px;">
                                                                                <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                                            </span>
                                                                        </div>
                                                                        <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                            <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
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
                                    <div class="am-u-sm-1 padding-0" style="padding-top: 5px;">
                                        <a href="#" class="more-btn">
                                            <img src="https://www.hawooo.com/images/ftp/20190103/more.png" />
                                        </a>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="product-group">
                            <div>
                                <img src="https://www.hawooo.com/images/ftp/20190103/edm_05.png" class="title-img" />
                            </div>

                            <div class="product-list">
                                <div class="am-g">
                                    <div class="am-u-sm-11 padding-0">
                                        <ul class="am-avg-md-4 am-gallery-bordered product">
                                            <asp:Repeater ID="rp3" runat="server">
                                                <ItemTemplate>
                                                    <li>
                                                        <a href='<%# "productdetail.aspx?id=" + Eval("WP01") %>'>
                                                            <div class="am-panel am-panel-default pitem" style="padding: 0; border: 0; float: left; margin-bottom: 0">
                                                                <div class="imgContain" style="padding: 10px; width: 91%; margin: auto">

                                                                    <asp:Image ID="img_WP08_1" runat="server" CssClass="am-img-responsive" ImageUrl='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' EnableViewState="false" />

                                                                </div>
                                                                <div class="am-panel-bd" style="padding: 5px; text-align: center;">
                                                                    <%--  <div class="gallery_title_top">
                                                <asp:Literal ID="lit_WP24" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal>
                                            </div>--%>
                                                                    <div class="gallery-title" style="color: #000 !important; text-align: left; height: 42px;">

                                                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02").ToString() %>'></asp:Literal>

                                                                    </div>
                                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                        <div class="am-fl">
                                                                            <span style="color: #EE5984; font-size: 18px; font-weight: bold;">
                                                                                <asp:Literal ID="litWPA06" runat="server" Text='<%# "RM " + PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                                            </span>
                                                                        </div>
                                                                        <div class="am-fr">
                                                                            <span style="vertical-align: middle;">
                                                                                <%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>
                                                                            </span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="am-u-sm-12 " style="padding: 5px !important">
                                                                        <div class="am-fl">
                                                                            <span style="font-size: 13px;">
                                                                                <i class="far am-icon-eye"></i>Viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %>
                                                                            </span>
                                                                        </div>
                                                                        <div class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                                            <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' style='width:20px' />" : "") + Eval("WP30") %></span>
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
                                    <div class="am-u-sm-1 padding-0" style="padding-top: 5px;">
                                        <a href="#" class="more-btn">
                                            <img src="https://www.hawooo.com/images/ftp/20190103/more.png" />
                                        </a>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </section>

                    <section class="cny-event">
                        <ul class="am-avg-sm-2">
                            <li>
                                <a href="#">
                                    <img src="https://www.hawooo.com/images/ftp/20190103/section_4.png" />
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="https://www.hawooo.com/images/ftp/20190103/section_5.png" />
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="https://www.hawooo.com/images/ftp/20190103/section_6.png" />
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="https://www.hawooo.com/images/ftp/20190103/section_7.png" />
                                </a>
                            </li>
                        </ul>
                    </section>

                    <section class="cny-brand">
                        <div class="cny-brand-header-bar">
                            <a href="#">
                                <img src="https://www.hawooo.com/images/ftp/20190103/brand1.png" />
                            </a>
                            <a href="#">
                                <img src="https://www.hawooo.com/images/ftp/20190103/brand1.png" />
                            </a>
                        </div>
                        <div class="cny-brand-container">
                            <ul class="am-avg-sm-4 brand-list">
                                <asp:Repeater ID="rpBrand" runat="server">
                                    <ItemTemplate>
                                        <li>
                                            <div class="brand">
                                                <a href='<%#"https://www.hawooo.com/user/brands.aspx?bid="+ Eval("BID") %>' target="_blank">
                                                    <div class="brand-img">
                                                        <img src='<%# ConfigurationManager.AppSettings["imgUrl"]+ "ftp/20181213/"+Eval("IMG")+".png" %>' />
                                                    </div>
                                                    <div class="brand-logo">
                                                        <img src='<%# ConfigurationManager.AppSettings["imgUrl"]+ "ftp/20181213/"+Eval("LOGO")+".png" %>' />
                                                    </div>
                                                    <div class="brand-note">
                                                        <p class="name">
                                                            <%# Eval("NAME") %>
                                                        </p>
                                                        <p class="note">
                                                            <%# Eval("NOTE") %>
                                                        </p>
                                                    </div>

                                                </a>
                                            </div>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </section>
                </div>

                <div style="background-color: #f9cfa7; z-index: 0; width: 100%; height: 100%; position: absolute; top: 90px;"></div>
            </div>


        </div>


    </form>
</body>
</html>
