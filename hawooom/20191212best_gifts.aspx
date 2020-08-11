<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="20191212best_gifts.aspx.cs" Inherits="mobile_static_20191212best_gifts" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/20191212xmas.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-g  main-contain">
        <div class="am-container">
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191213/bbn_02m.png" %>' alt="bbn_02" style="width: 100%;" />
            </div>
            <section>
                <div class="mb-shop-block shop-block-bg goods-mb">
                    <ul class="am-avg-sm-2">
                        <uc1:products runat="server" id="products" />
                    </ul>
                </div>
            </section>
        </div>
    </div>
    <div class="footer-bar">
        <div class="am-container">
            <ul class="am-avg-sm-3">
                <li>
                    <a href="20191212xmas.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_00m.png" %>' alt="ss_00m" style="width: 100%;" />
                    </a>
                </li>
                <li id="ss01">
                    <a href="#!" id="ss01a">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_01m.png" %>' alt="ss_01m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_02m.png" %>' alt="ss_02m" style="width: 100%;" />
                    </a>
                </li>
                <li id="ss03">
                    <a href="20191212earn_ha_coin_daily.aspx" target="_blank" >
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_03m.png" %>' alt="ss_03m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="20191212xmas.aspx?#s4" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_04m.png" %>' alt="ss_04m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="20191212xmas.aspx?#s5" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_05m.png" %>' alt="ss_04m" style="width: 100%;" />
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <script>
        $(function hrefChange() {
            var date1 = new Date("2019-12-08T00:00:00");
            var date3 = new Date("2019/12/13 00:00:00");

            var dateNow = new Date();
            if (dateNow > date1) {
                $('#ss01a').attr({
                    "href": "20191212preorder.aspx",
                    "target": "_blank"
                });
            }
            if (dateNow > date3) {
                $("#ss01,#ss03").remove();
                $(".footer-bar ul").attr('class', 'am-avg-sm-4');

            }
        });
    </script>
</asp:Content>

