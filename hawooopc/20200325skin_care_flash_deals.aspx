<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20200325skin_care_flash_deals.aspx.cs" Inherits="user_static_20200325skin_care_flash_deals" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/20200325beauty_madness.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain am-padding-vertical-lg" id="top">
        <section class="am-container">
            <div class="am-text-center">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/bbn_01.png" %>' alt="bbn_01" style="width: 100%;" />
            </div>

            <div class="shop-block am-padding-sm bg1">
                <div class="coupon-1 am-padding-bottom">
                    <a id="coupon1" data-clipboard-text="BEAUTY25" onclick="Clip('coupon1');">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/coupon_01.png" %>' alt="coupon" style="width: 100%;" />
                    </a>
                </div>
                <ul class="am-avg-sm-4" id="PD">
                    <uc1:products runat="server" id="products" />
                </ul>
            </div>
        </section>
        <%--=====================側邊選單 Start ==========================--%>
        <div class="side-bar am-center">
            <ul>
                <li>
                    <a href="20200325beauty_madness.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/ss_00.png" %>' alt="ss_01" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/ss_01.png" %>' alt="ss_01" />
                    </a>
                </li>
                <li>
                    <a href="20200325cosmetic_flash_deals.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/ss_02.png" %>' alt="ss_02" />
                    </a>
                    <li>
                        <a href="20200325beauty_madness.aspx?#s3">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200325/ss_03.png" %>' alt="ss_03" />
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
            $("#PD li").attr("class", "am-fl hvr-float")
        });
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js"></script>
    <script>
        function Clip(cid) {
            var clipboard = new ClipboardJS('#' + cid);
            clipboard.on('success',
                function (e) {
                    console.info('Action:', e.action);
                    console.info('Text:', e.text);
                    console.info('Trigger:', e.trigger);
                    e.clearSelection();
                    alert('Copy completed');
                });
            clipboard.on('error',
                function (e) {
                    console.error('Action:', e.action);
                    console.error('Trigger:', e.trigger);
                });
        }
    </script>
</asp:Content>

