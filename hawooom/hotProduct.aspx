<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true"
    CodeFile="hotProduct.aspx.cs" Inherits="mobile_hotProduct" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/amazeui.min.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="stylesheet" href="assets/css/newyearmom.css">
    <link rel="stylesheet" type="text/css" href="assets/css/main.css" />
    <style>
        .am-u-sm-6-self {
            width: 49%;
        }

        .money_txt_style {
            color: #f54954;
            font-size: 15px;
            font-weight: bold;
        }

        .gallery-title {
            font-size: 14px;
            margin-left: 5px;
            height: 40px;
            overflow: hidden;
        }

            .gallery-title a {
                color: #6F6957;
                font-size: 14px;
                line-height: 12px;
            }

        .gallery-detail {
            /*padding-top: 4px;*/
            height: 34px;
            border-top: 1px solid #E9E9E9;
        }

        .money_txt_style_marketS {
            color: #a1a1a1;
            font-size: 13px;
            /*text-decoration: line-through;*/
            line-height: 25px;
            text-align: center;
        }

        .pitem {
            margin: 0px;
            padding: 2px;
            border-color: #FFF;
            /* border-color: rgb(212,212,212); */
            -webkit-transform: translateZ(0);
        }

            .pitem:hover {
                padding: 0px;
                border: 5px solid #cbcbcb;
                transition: border 0.2s linear 0s, color 0.2s linear 0s, background-color 0.2s linear 0s;
                -webkit-transform: translateZ(0);
            }


        .am-fr {
            margin: 0;
            display: inline-block;
            font-size: 0.7em;
            color: #999999;
            line-height: 2.3em;
            float: right;
        }

        .am-container {
            background-color: white !important;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <!-- 页面内容 -->


    <div class="fullBanner">
        <img src="https://www.hawooo.com/images/ftp/20170927/edmm-sale.png" alt="Hot Sale">
    </div>




    <!--下方商品-->
    <div class="pageBox" style="max-width: 650px; margin: 0 auto;">
        <div class="am-container" style="padding: 2px;">
            <ul>
                <asp:Repeater ID="rp" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>


                        <li class="am-u-md-3 am-u-sm-6-self " style="margin-top: 20px; float: left; border: 1px solid #eaeaea; position: relative;">
                            <a href="<%# PbClass.MpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>">
                                <div class="product_item_pic">
                                    <img data-sizes="auto"
                                        src="../noimg.png"
                                        data-src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                </div>
                                <div class="product_item_text">
                                    <div class="product_item_block am-cf">
                                        <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                    </div>
                                    <div class="product_item_block am-cf">

                                        <h4 class="am-fl">RM <%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                        <span class="product_item_dis"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()).ToString().Replace("RM","") %></span>
                                    </div>
                                    <div class="product_item_block am-cf">
                                        <%--            <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>--%>
                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                            <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %></span>
                                        </p>
                                    </div>
                                </div>
                            </a>
                        </li>




                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>


    <%--   <footer class="fullBanner am-show-sm">
        <img src="http://edm.hawooo.com/20170502/07m.png" alt="HaWooo.com">
    </footer>--%>



    <!--[if (gte IE 9)|!(IE)]><!-->
    <script src="assets/js/jquery.min.js"></script>
    <!--<![endif]-->
    <script src="assets/js/amazeui.min.js"></script>
    <script>
        function success(result, context, method) {
            if (method == 'GetCP') {
                alert(result);
                if (result == "請先登入會員") {
                    doLogin(window.location.href);
                }
            }
        }
        function GetCoupone(stime, etime, gb01) {
            PageMethods.GetCP(stime, etime, gb01, success, null);
        }



    </script>






</asp:Content>
