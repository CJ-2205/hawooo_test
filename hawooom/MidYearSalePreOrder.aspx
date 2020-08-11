<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="MidYearSalePreOrder.aspx.cs" Inherits="mobile_static_MidYearSalePreOrder" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="assets/css/MidYearSale.min.css" rel="stylesheet" />


    <div class="banner-box">
        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20190625/48h_a.png" %>' style="width: 100%" />
        <!--<img src="https://www.hawooo.com/images/ftp/20190625/48h_a.png" alt="banner" style="width: 100%;" />-->
    </div>


    <div class="am-g" style="background-color: #dfdfdf;">
        <section>
            <div class="product-block" id="product-make80">
                <ul class="am-avg-sm-2 am-avg-md-3  product-item-box" style="background-color: #F5BBB0">
                    <%--<uc1:products runat="server" ID="products" />--%>
                    <li class="am-fl">
                        <div class="resize-sm">
                            <a href="#">
                                <div class="product-img">
                                    <img src="https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20190107105349748.jpg" style="width: 100%;" />
                                    <span class="tag">HOT <span>ITEM</span></span>
                                </div>

                                <div class="product-text-box">

                                    <span class="hot-item">HOT <span>ITEM</span></span>


                                    <div class="product-item-block">
                                        <h3 class="product-name">【FreshO2】Stay with me 為妳停留霧面唇蜜with me 為妳停留霧面唇蜜with me 為妳停留霧面唇蜜</h3>
                                    </div>


                                    <div class="product-price-block">
                                        <h4 class="product-price "><span>RM 49.90</span></h4>
                                        <p class="original-price  am-margin-0 "><del>RM 100</del></p>
                                    </div>

                                    <div class="product-price-block">
                                        <div class="am-fl" style="width: 75%">
                                            <select style="width: 100%;" onclick="return false;">
                                                <option value="">日用3包+夜用3包+草本暖宮貼2入</option>
                                                <option value="">日用1包+夜用1包+草本暖宮貼2入</option>
                                            </select>
                                        </div>
                                        <div class="am-fr" style="width: 25%; padding-left: 5px">
                                            <select class="" style="width: 100%;" onclick="return false;">
                                                <option value="">1</option>
                                                <option value="">2</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="product-coupon-box am-text-center">
                                        <div class="buy-btn am-u-sm-12">
                                            <a href="#">ADD</a>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </li>
                </ul>
            </div>
        </section>
    </div>


    <script type="text/javascript">
        $(document).ready(function () {
            for (i = 0; i < 79; i++) {
                duplicate('product-make80');
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

