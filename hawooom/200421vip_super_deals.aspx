<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="200421vip_super_deals.aspx.cs" Inherits="mobile_static_200421vip_super_deals" %>

<%@ Import Namespace="hawooo" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/200421vip_secret_sale.min.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g  main-contain">
        <div class="am-container">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/bbn_01m.png" %>' alt="bbn_04m" style="width: 100%;" />
            </div>

            <%--========================Coupon Start===============================--%>
            <div>
                <ul class="am-avg-sm-2">
                    <li class="coupon">
                        <span class="code" id="UserCode1">Please login</span>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/coupon_01.png" %>' alt="coupon_01" />
                    </li>
                    <li class="coupon">
                        <span class="code" id="UserCode2">Please login</span>
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/coupon_02.png" %>' alt="coupon_02" />
                    </li>
                </ul>
                <div>
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200421/coupon_03.png" %>' alt="coupon_03" style="width: 100%;" />
                </div>
            </div>

            <%--========================Coupon End===============================--%>
            <section>
                <div class="mb-shop-block">
                    <ul class="am-avg-sm-2 am-avg-md-3">
                        <uc1:products runat="server" id="products" />

                    </ul>
                </div>
            </section>
        </div>
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

