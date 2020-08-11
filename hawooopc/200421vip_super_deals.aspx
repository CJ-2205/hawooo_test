<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200421vip_super_deals.aspx.cs" Inherits="user_static_200421vip_super_deals" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/200421vip_secret_sale.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain am-padding-vertical-lg" id="top">
        <div>
            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/bbn_01.png" %>' alt="bbn_01" style="width: 100%;" />
        </div>
        <section class="am-container">

            <%--=====================領取折扣券 Start ==========================--%>
            <div class="am-padding-vertical-xl">
                <ul class="am-avg-sm-3">
                    <li class="coupon coupon1">
                        <span class="code" id="UserCode1">Please login</span>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/coupon_01.png" %>' alt="coupon_01" />
                    </li>
                    <li class="coupon coupon2">
                        <span class="code" id="UserCode2">Please login</span>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/coupon_02.png" %>' alt="coupon_02" />
                    </li>
                    <li class="coupon coupon3">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/coupon_03.png" %>' alt="coupon_03" />
                    </li>
                </ul>
            </div>
            <%--=====================領取折扣券 End ===========================--%>
            <div class="am-padding-sm shop-block" id="PD">
                <ul class="am-avg-sm-4">
                    <uc1:products runat="server" id="products" />
                </ul>
            </div>
        </section>
    </div>

    <script type="text/javascript">
        $(function () {
            $("#PD li").attr("class", "am-fl hvr-float");

            var code1 = '<%= Session["code1"].ToString() %>'
            var code2 = '<%= Session["code2"].ToString() %>'

            if (code1 != null && code2 != null) {
                $("#UserCode1").text(code1);
                $("#UserCode2").text(code2);
            }
            else {
                window.location.href = "index.aspx";
            }
        })
    </script>
</asp:Content>

