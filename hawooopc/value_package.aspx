<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="value_package.aspx.cs" Inherits="user_static_value_package" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link href="assets/css/20191111.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain">
        <a href="value_package.aspx" target="_blank">
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bbn_03.png" %>' alt="bbn_03" style="width: 100%;" />
        </a>
        <section class="shop-block-wrap am-container am-padding-vertical">
            <%-- <div class="banner-box  am-text-center">
            </div>--%>

            <div class="am-padding-vertical">
                <div class="shop-block-bg am-padding-sm shop-block" id="products">
                    <ul class="am-avg-sm-4">
                        <uc1:products runat="server" id="products" />
                    </ul>
                </div>
            </div>
        </section>


        <%--=====================側邊選單 Start ==========================--%>

        <div class="side-bar am-center">
            <ul>
                <li>
                    <a href="20191111.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_01.png" %>' alt="ss_01" />
                    </a>
                </li>
                <li>
                    <a href="20191111pre_sale.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_02.png" %>' alt="ss_02" />
                    </a>
                </li>
                <li>
                    <a href="#!" id="ss03">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_03.png" %>' alt="ss_03" />
                    </a>
                </li>
                <li>
                    <a href="20191111.aspx?#s3" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_04.png" %>' alt="ss_04" />
                    </a>
                </li>
                <li>
                    <a href="value_package.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_05.png" %>' alt="ss_05" />
                    </a>
                </li>
                <li><a href="20191111.aspx?#s6" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_06.png" %>' alt="ss_06" />
                </a>
                </li>
            </ul>
        </div>
        <%--=====================側邊選單 End==========================--%>
    </div>

    <script>
        $(function () {
            $("#products li").attr("class", "am-fl  hvr-float");
        });

        $(function hrefChange() {
            var date1 = new Date("2019-11-06T00:00:00");
            var dateNow = new Date();
            if (dateNow > date1) {
                $('#ss03').attr({
                    "href": "20191111preorder.aspx",
                    "target": "_black"
                });
            }
        });
    </script>
</asp:Content>

