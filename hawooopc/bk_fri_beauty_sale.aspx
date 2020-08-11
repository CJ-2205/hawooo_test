<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="bk_fri_beauty_sale.aspx.cs" Inherits="user_static_bk_fir_beauty_sale" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/black_friday.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="am-g pc-contain  main-contain" id="top">
        <section class="am-container">
            <div class="banner-box  am-text-center">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/bnn_03.png" %>' alt="bbn_03" style="width: 100%;" />
            </div>

            <div class="am-padding-sm shop-block  am-margin-bottom-lg" id="pblock">
                <ul class="am-avg-sm-4">
                    <uc1:products runat="server" id="products" />
                </ul>
            </div>
        </section>
        <%--=====================側邊選單 Start ==========================--%>
        <div class="side-bar am-center">
            <ul>
                <li>
                    <a href="black_friday.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/ss_01.png" %>' alt="ss_01" />
                    </a>
                </li>
                <li>
                    <a href="black_friday.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/ss_02.png" %>' alt="ss_02" />
                    </a>
                </li>
                <li>
                    <a href="bk_fri_most_popular.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/ss_03.png" %>' alt="ss_03" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/ss_04.png" %>' alt="ss_04" />
                    </a>
                </li>
                <li>
                    <a href="bk_fri_life_sale.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/ss_05.png" %>' alt="ss_05" />
                    </a>
                </li>
                <li>
                    <a href="black_friday.aspx?#s5" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/ss_06.png" %>' alt="ss_06" />
                    </a>
                </li>
                <li><a href="black_friday.aspx?#s6" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/ss_07.png" %>' alt="ss_07" />
                </a>
                </li>
                <li onclick="goto('top')">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191127/ss_08.png" %>' alt="ss_08" />
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
            $("#pblock li").attr("class", "am-fl hvr-float")
        });
    </script>

</asp:Content>

