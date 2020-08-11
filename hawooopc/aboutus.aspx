<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true" CodeFile="aboutus.aspx.cs" Inherits="user_aboutus" %>

<%@ Register Src="~/user/control/aboutclass.ascx" TagPrefix="uc1" TagName="aboutclass" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container" style="padding-top: 20px">
        <div class="am-u-md-2">
            <uc1:aboutclass runat="server" ID="aboutclass" />
        </div>
        <div class="am-u-md-10">
            <div class="am-panel boxshadow">
                <div class="about-title">關於我們 <span style="font-size: 12px">About us</span></div>
                <hr />
                <div class="am-tabs" data-am-tabs style="padding: 10px">
                    <ul class="am-tabs-nav am-nav am-nav-tabs">
                        <li class="am-active"><a href="javascript: void(0)">English</a></li>
                        <li><a href="javascript: void(0)">繁體中文</a></li>

                    </ul>

                    <div class="am-tabs-bd">
                        <div class="am-tab-panel am-active">
                            <table style="line-height: 50px; padding: 20px;">
                                <tr>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;Amanda was studied in Taiwan. She loves Taiwan brand of cosmetic, apparel and the elegant design of home & living products. After her graduation, she went back to her hometown, Kuala Lumpur. Amanda tried very hard to look for those Taiwan brands of products that she used to consume. Not only she found the product range in her hometown has less choices, the price is also much higher after the currency exchange. For these reasons and to fulfill her own demand, HaWooo.com has been created. 
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="img/about/0911_台灣直購.png" class="am-img-thumbnail" style="width: 90px" /><span style="font-size: 22px; font-weight: 800">100% Direct purchase</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;HaWooo.com emphasize on trendy, good quality and affordable price as our business principles. We aim to provide the best brand of product for cosmetic, trendy apparel, bags/handbags and home & living items to all our customers. You are able to buy all these products at nearly the same price selling in Taiwan. We like you to feel just like you’re buying the product directly from the shelf in Taiwan store. 
                                    <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="img/about/0911_正品保證.png" class="am-img-thumbnail" style="width: 90px" /><span style="font-size: 22px; font-weight: 800">100% Quality Assurance</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;HaWooo.com is an authorized online merchant to these top Taiwan brands of retailers; we assure no imitation product will sell here.
                                         <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="img/about/0911_台灣平價情報站.png" class="am-img-thumbnail" style="width: 90px" /><span style="font-size: 22px; font-weight: 800">Taiwan’s Trend Info Centre</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;HaWooo.com is a Taiwan fashion market specialist that provides trendy and affordable apparels and accessories updated information. We compile and follow on the most practical info on cosmetic, skin care, fashion and living tips to share with our customers. We wish to share the idea of affordable and simplicity lifestyle with you, and to enjoy the trendy live together! 
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="am-tab-panel ">
                            <table style="line-height: 50px; padding: 20px;">
                                <tr>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;Amanda在台北唸書，平常最喜歡用台灣品牌的彩妝、服飾以及生活用品。畢業後回到吉隆坡，想要尋找台灣的品牌，卻發現不是品項很少，就是價格比台灣高上許多。為了解決Amanda的問題，HaWooo.com (好物飛行)就這樣誕生了！
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="img/about/0911_台灣直購.png" class="am-img-thumbnail" style="width: 90px" /><span style="font-size: 22px; font-weight: 800">100%台灣直購</span>

                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;HaWooo.com以好流行、好品質、好價格為標準，為女孩們嚴選出台灣美妝、衣物、包包、生活用品等領域的第一品牌。妳可以用將近台灣本地商店的價格，直接入手台灣各大品牌，就像在台灣購物一樣！ 
                                    <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="img/about/0911_正品保證.png" class="am-img-thumbnail" style="width: 90px" /><span style="font-size: 22px; font-weight: 800">100% 正品保證</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;HaWooo.com只販售台灣大型品牌電商授權的商品，確保不會有假貨的問題。
                                         <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="img/about/0911_台灣平價情報站.png" class="am-img-thumbnail" style="width: 90px" /><span style="font-size: 22px; font-weight: 800">台灣平價時尚情報站</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;HaWooo.com是一個專門為女性打造的平價時尚網站。我們蒐集、追蹤最實用的美妝、保養、穿搭以及生活資訊，與妳分享如何用最簡單、平價的方式，一起品味時尚生活！
                                    </td>
                                </tr>
                            </table>

                        </div>


                    </div>
                </div>

            </div>
        </div>
    </div>
    <script>
        $(function () {
            $("#a1").addClass("select");
        })
    </script>
</asp:Content>

