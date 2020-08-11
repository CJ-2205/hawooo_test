<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20191212CBS.aspx.cs" Inherits="user_static_20191212CBS" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/20191212xmas.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-g main-contain am-padding-vertical-lg" id="top">
        <section class="am-container shop-block-bg">
            <div class="banner-box  am-text-center">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/bbn_07.png" %>' alt="bbn_07" style="width: 100%;" />
            </div>

            <div class="am-padding-sm shop-block" id="products-block">
                <ul class="am-avg-sm-4">
                    <uc1:products runat="server" id="products" />
                </ul>
            </div>
        </section>
        <%--=====================側邊選單 Start ==========================--%>
        <div class="side-bar am-center">
            <ul>
                <li>
                    <a href="20191212xmas.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_00.png" %>' alt="ss_00" />
                    </a>
                </li>
                <li>
                    <a href="#!" id="ss01">
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
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191202/ss_05.png" %>' alt="ss_04" />
                    </a>
                </li>
            </ul>
        </div>
        <%--=====================側邊選單 End==========================--%>
    </div>

    <script>
        $(function () {
            $("#products-block li").attr("class", "am-fl  hvr-float");
        });

        $(function hrefChange() {
            var date1 = new Date("2019-12-08T00:00:00");
            var dateNow = new Date();
            if (dateNow > date1) {
                $('#ss01').attr({
                    "href": "20191212preorder.aspx",
                    "target": "_blank"
                });
            }
        });

        function goto(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 800, 'swing');
        };
    </script>

</asp:Content>

