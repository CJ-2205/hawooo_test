<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="2020CNY3_top30.aspx.cs" Inherits="user_static_2020CNY3_top30" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/2020CNY3.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain am-padding-vertical-lg" id="top">
        <section class="am-container shop-block-bg">
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/bbn_03.png" %>' alt="bbn_03" style="width: 100%;" />
            </div>

            <div class="am-padding-sm shop-block slider-block1">
                <ul class="am-avg-sm-4">
                    <uc1:products runat="server" id="products" />
                </ul>
            </div>
        </section>
        <%--=====================側邊選單 Start ==========================--%>
        <div class="side-bar">
            <ul>
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/ss_00.png" %>' alt="ss_00" />
                    </a>
                </li>
                <li>
                    <a href="2020CNY3.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/ss_01.png" %>' alt="ss_01" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/ss_02.png" %>' alt="ss_02" />
                    </a>
                </li>
                <li>
                    <a href="2020CNY3_HW_recommendation.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/ss_03.png" %>' alt="ss_03" />
                    </a>
                </li>
                <li>
                    <a href="2020CNY3.aspx?#s3" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/ss_04.png" %>' alt="ss_04" />
                    </a>
                </li>
                <li>
                    <a href="2020CNY3.aspx?#s4" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/ss_05.png" %>' alt="ss_05" />
                    </a>
                </li>
                <li onclick="goto('top')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200121/ss_06.png" %>' alt="ss_06" />
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

