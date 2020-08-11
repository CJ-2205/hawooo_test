<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="0302womens_day_buy1free1.aspx.cs" Inherits="user_static_0302womens_day_buy1free1" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/0302womens_day.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain am-padding-vertical-lg">
        <section class="am-container">
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/bbn_03.png" %>' alt="bbn_03" style="width: 100%;" />
            </div>

            <div class="am-padding-sm shop-block  shop-block-bg">
                <ul class="am-avg-sm-4">
                    <uc1:products runat="server" id="products" />
                </ul>
            </div>
        </section>
        <%--=====================側邊選單 Start ==========================--%>
        <div class="side-bar">
            <ul>
                <li>
                    <a href="0302womens_day.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_00.png" %>' alt="ss_00" />
                    </a>
                </li>
                <li>
                    <a href="0302womens_day_hot_deal.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_01.png" %>' alt="ss_01" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_02.png" %>' alt="ss_02" />
                    </a>
                </li>
                <li>
                    <a href="0302womens_day.aspx?#s3" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_03.png" %>' alt="ss_03" />
                    </a>
                </li>
                <li>
                    <a href="0302womens_day.aspx?#s4" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200302/ss_04.png" %>' alt="ss_04" />
                    </a>
                </li>
            </ul>
        </div>
        <%--=====================側邊選單 End==========================--%>
    </div>

    <script type="text/javascript">
        function goto(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 130 }, 800, 'swing');
        };
    </script>
</asp:Content>

