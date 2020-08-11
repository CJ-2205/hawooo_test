<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="2020valentines_day_best_gifts.aspx.cs" Inherits="mobile_static_2020valentines_day_best_gifts" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/2020valentines_day.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g  main-contain">
        <div class="banner-box">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/bbn_02m.png" %>' alt="bbn_02m" style="width: 100%;" />
        </div>
        <section>
            <div class="mb-shop-block">
                <ul class="am-avg-sm-2 am-avg-md-3">
                    <uc1:products runat="server" id="products" />
                </ul>
            </div>
        </section>
    </div>

    <section class="footer-bar">
        <div>
            <ul class="am-avg-sm-2">
                <li>
                    <a href="2020valentines_day.aspx">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ss_01m.png" %>' alt="ss_01m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="2020valentines_day_hot_deal.aspx">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ss_02m.png" %>' alt="ss_02m" style="width: 100%;" />
                    </a>
                </li>
            </ul>
        </div>

        <div>
            <ul class="am-avg-sm-3">
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ss_03m.png" %>' alt="ss_03m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="2020valentines_day.aspx?#s3" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ss_04m.png" %>' alt="ss_04m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="2020valentines_day.aspx?#s4" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200204/ss_05m.png" %>' alt="ss_05m" style="width: 100%;" />
                    </a>
                </li>
            </ul>
        </div>
    </section>
</asp:Content>

