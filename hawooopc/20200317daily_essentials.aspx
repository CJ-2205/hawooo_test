<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20200317daily_essentials.aspx.cs" Inherits="user_static_20200317daily_essentials" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/20200317life_style_festival.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain am-padding-vertical-lg" id="top">
        <section class="am-container">
            <div class="banner-box  am-text-center">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200317/bn_04.png" %>' alt="bn_04" style="width: 100%;" />
            </div>

            <div class="am-padding-sm shop-block bg2">
                <ul class="am-avg-sm-4">
                    <uc1:products runat="server" id="products" />

                </ul>
            </div>
        </section>
        <%--=====================側邊選單 Start ==========================--%>
        <div class="side-bar am-center">
            <ul>
                <li>
                    <a href="20200317life_style_festival.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200317/ss_01.png" %>' alt="ss_01" />
                    </a>
                </li>
                <li>
                    <a href="20200317household_items.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200317/ss_02.png" %>' alt="ss_02" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200317/ss_03.png" %>' alt="ss_03" />
                    </a>
                </li>
                <li>
                    <a href="20200317life_style_festival.aspx?#s3">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200317/ss_04.png" %>' alt="ss_04" />
                    </a>
                </li>
            </ul>
        </div>
        <%--=====================側邊選單 End==========================--%>
    </div>

    <script>
        function goto(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 800, 'swing');
        };

        $(function () {
            $(".bg2 li").attr("class", "am-fl hvr-float");
        });
    </script>
</asp:Content>

