<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="2020CNY_clean_up.aspx.cs" Inherits="user_static_2020CNY_clean_up" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/2020CNY.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain am-padding-vertical-lg">
        <section class="am-container ">
            <div class="banner-box">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191231/bbn_03.png" %>' alt="bbn_03" style="width: 100%;" />
            </div>
            <div class="banner-box am-padding-vertical">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191231/free_01.png" %>' alt="bbn_03" style="width: 100%;" />
            </div>
            <div class="am-padding-sm shop-block shop-block-bg">
                <ul class="am-avg-sm-4">
                    <uc1:products runat="server" id="products" />

                </ul>
            </div>
        </section>
        <%--=====================側邊選單 Start ==========================--%>
        <div class="side-bar">
            <ul>
                <li>
                    <a href="2020CNY.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191231/ss_00.png" %>' alt="ss_00" />
                    </a>
                </li>
                <li>
                    <a href="2020CNY_hot_deals.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191231/ss_01.png" %>' alt="ss_01" />
                    </a>
                </li>
                <li>
                    <a href="2020CNY.aspx?#s2" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191231/ss_02.png" %>' alt="ss_02" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191231/ss_03.png" %>' alt="ss_03" />
                    </a>
                </li>
                <li>
                    <a href="2020CNYtasty_food.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191231/ss_04.png" %>' alt="ss_04" />
                    </a>
                </li>
                <li>
                    <a href="2020CNY.aspx?#s5" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191231/ss_05.png" %>' alt="ss_05" />
                    </a>
                </li>
            </ul>
        </div>
        <%--=====================側邊選單 End==========================--%>
    </div>

</asp:Content>

