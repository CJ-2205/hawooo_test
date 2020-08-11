<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20200319VIP_super_deals.aspx.cs" Inherits="user_static_20200319VIP_super_deals" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/20200319VIP_exclusive_sales.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain am-padding-vertical-lg" id="top">
        <section class="am-container">
            <div class="am-text-center">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200324/bbn_01.png" %>' alt="bbn_03" style="width: 100%;" />
            </div>

            <div class="am-padding-sm shop-block bg1" id="Products">
                <ul class="am-avg-sm-4">
                    <uc1:products runat="server" id="products" />
                </ul>
            </div>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            <asp:GridView ID="GridView2" runat="server"></asp:GridView>

        </section>
    </div>
    <script type="text/javascript">
        $(function () {
            $("#Products li").attr("class", "am-fl  hvr-float");
        })
    </script>
</asp:Content>

