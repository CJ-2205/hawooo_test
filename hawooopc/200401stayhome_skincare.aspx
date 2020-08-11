<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200401stayhome_skincare.aspx.cs" Inherits="user_static_200401stayhome_skincare" %>
<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/200401stay_home_shop.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain">
        <section class="am-container am-padding-vertical-lg bg1">
            <div>
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/bnn_02.png" %>' alt="bnn_02" style="width: 100%;" />
            </div>
            <div>
                <ul class="am-avg-sm-2">
                    <li>
                         <a id="coupon1" data-clipboard-text="STAYHOME8" onclick="Clip('coupon1');">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ccp_01.png" %>' alt="coupon_01" />
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ccp_02.png" %>' alt="coupon_02" />
                        </a>
                    </li>
                </ul>
            </div>
            <div class="am-padding-sm shop-block">
                <ul class="am-avg-sm-4">
                                       <uc1:products runat="server" id="products" />

                </ul>
            </div>
        </section>
        <%--=====================側邊選單 Start ==========================--%>
        <div class="side-bar">
            <ul>
                <li>
                    <a href="200401stay_home_shop.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ss_01.png" %>' alt="ss_01" />
                    </a>
                </li>
                <li>
                    <a href="#!">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ss_02.png" %>' alt="ss_02" />
                    </a>
                </li>
                <li>
                    <a href="200401stayhome_supplement.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ss_03.png" %>' alt="ss_03" />
                    </a>
                </li>
                <li>
                    <a href="200401stayhome_lifestyle.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200401/ss_04.png" %>' alt="ss_04" />
                    </a>
                </li>
            </ul>
        </div>
        <%--=====================側邊選單 End==========================--%>
    </div>

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

