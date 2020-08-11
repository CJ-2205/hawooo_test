<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true" CodeFile="membercoupon2.aspx.cs" Inherits="usercode_membercoupon" %>

<%@ Register Src="~/user/control/memberleftclass.ascx" TagPrefix="uc1" TagName="memberleftclass" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- 通用＋menu -->
    <link rel="stylesheet" href="assets/css/header.css">
    <!-- 下方三個好處免運、正品、快送 -->
    <link rel="stylesheet" href="assets/css/footer_good_block.css">
    <!-- 會員專區專用 -->
    <link rel="stylesheet" type="text/css" href="assets/css/member2.css">
    <!-- 商品評分專用 reviews -->
    <link rel="stylesheet" type="text/css" href="assets/css/reviews.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--    <div class="am-container" style="padding-top: 20px">
        <div class="am-u-md-2">
            <uc1:memberclass runat="server" ID="memberclass" />
        </div>
        <div class="am-u-md-10" style="padding-left: 0px">
            <div class="am-panel boxshadow">
                <legend style="padding: 12px; background-color: #ffffff; margin-bottom: 1px;"><i class="am-icon-ticket"></i>&nbsp;獲取紀錄 - Get Coupon Liset </legend>
                <table class="am-table am-table-striped am-table-hover table-main" style="font-size: 16px; padding: 10px">
                    <thead>
                        <tr>
                            <th>折扣卷編號</th>
                            <th>金額</th>
                            <th>低消</th>
                            <th>使用時間</th>
                            <th>使用訂單</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Literal ID="lit_GA01" runat="server" Text='<%# Eval("GA01") %>'></asp:Literal>
                                    </td>
                                    <td>
                                        <span>
                                            <asp:Literal ID="lit_GA02" runat="server" Text='<%# Eval("GA02") %>'></asp:Literal>
                                        </span>
                                    </td>
                                    <td>
                                        <span>
                                            <asp:Literal ID="lit_GA07" runat="server" Text='<%# Eval("GA07") %>'></asp:Literal>
                                        </span>
                                    </td>
                                    <td>
                                        <span>
                                            <asp:Literal ID="lit_GA05" runat="server" Text='<%# Eval("GA05") %>'></asp:Literal>
                                        </span>
                                    </td>
                                    <td>
                                        <asp:Literal ID="lit_ORM02" runat="server" Text='<%# Eval("ORM02") %>'></asp:Literal>
                                    </td>

                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>

                </table>
                <div style="padding-left: 20px; padding-bottom: 20px">
                    <asp:Literal ID="lit_get_coupon" runat="server"></asp:Literal>
                </div>
            </div>
            <div class="am-panel boxshadow">
                <legend style="padding: 12px; background-color: #ffffff; margin-bottom: 1px;"><i class="am-icon-ticket"></i>&nbsp;折扣卷紀錄 - Coupon Record </legend>
                <table class="am-table am-table-striped am-table-hover table-main" style="font-size: 16px; padding: 10px">
                    <thead>
                        <tr>
                            <th>折扣卷編號</th>
                            <th>金額</th>
                            <th>低消</th>
                            <th>使用時間</th>
                            <th>使用訂單</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rp_list" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Literal ID="lit_GA01" runat="server" Text='<%# Eval("GA01") %>'></asp:Literal>
                                    </td>
                                    <td>
                                        <span>
                                            <asp:Literal ID="lit_GA02" runat="server" Text='<%# Eval("GA02") %>'></asp:Literal>
                                        </span>
                                    </td>
                                    <td>
                                        <span>
                                            <asp:Literal ID="lit_GA07" runat="server" Text='<%# Eval("GA07") %>'></asp:Literal>
                                        </span>
                                    </td>
                                    <td>
                                        <span>
                                            <asp:Literal ID="lit_GA05" runat="server" Text='<%# Eval("GA05") %>'></asp:Literal>
                                        </span>
                                    </td>
                                    <td>
                                        <asp:Literal ID="lit_ORM02" runat="server" Text='<%# Eval("ORM02") %>'></asp:Literal>
                                    </td>

                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
                <div style="padding-left: 20px; padding-bottom: 20px">
                    <asp:Literal ID="lit_no_coupon" runat="server"></asp:Literal>
                </div>

            </div>
        </div>
    </div>--%>

    <!-- content star -->
    <content style="margin-top: 140px; display: block;">
         <!-- 會員區 左邊導覽＋右邊顯示 -->
        <section class="am-container am-cf member-wrapper">
    <!--  左邊導覽 -->
           <uc1:memberleftclass runat="server" ID="memberleftclass" />

    <!--  右邊導覽 -->
        <div class="am-fl member-rightmenu">
            <%--<div class="am-u-md-10" style="padding-left: 0px">--%>
            <div class="am-tabs" data-am-tabs>
                <!-- 訂單tab 開始 -->
            <ul class="am-tabs-nav am-nav am-nav-tabs am-avg-sm-3">
                    <li class="am-active"><a href="#tab1">獲取的折扣卷</a></li>
                    <li><a href="#tab2">過期/使用的折扣卷</a></li>
                    <li><a href="#tab3">輸入折扣卷</a></li>
                </ul>
                <!-- 訂單tab 結束 -->

                <%--獲取紀錄--%>
                <div class="am-tabs-bd">
                    <div class="am-panel boxshadow am-tab-panel am-active" id="tab1">
                        <table class="am-table am-table-striped am-table-hover table-main" style="font-size: 16px; padding: 10px">
                            <thead>
                                <tr>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <span>折扣卷編號 :
                                                <asp:Literal ID="lit_GA01" runat="server" Text='<%# Eval("GA01") %>'></asp:Literal>
                                                </span>
                                                <br />
                                                <span>使用低消 :
                                                    <asp:Literal ID="lit_GA07" runat="server" Text='<%# Eval("GA07") %>'></asp:Literal>
                                                </span>
                                                <br />
                                                <span>期限
                                                 <asp:Literal ID="lit_GA05" runat="server" Text='<%#Convert.ToDateTime(Eval("GA11")).ToString("yyyy/MM/dd") +"~"%>'></asp:Literal>
                                                </span>

                                            </td>
                                            <td>
                                                <span>
                                                    <asp:Literal ID="lit_GA02" runat="server" Text='<%# Eval("GA02") %>'></asp:Literal>
                                                </span>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>

                        </table>

                        <div style="padding-left: 20px; padding-bottom: 20px">
                            <asp:Literal ID="lit_get_coupon" runat="server"></asp:Literal>
                        </div>
                    </div>
                </div>
                <div class="am-tabs-bd">
                    <%--過期/使用的折扣卷--%>
                    <div class="am-panel boxshadow am-tab-panel" id="tab2">
                        <table class="am-table am-table-striped am-table-hover table-main" style="font-size: 16px; padding: 10px">
                            <thead>
                                <tr>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rp_list" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <span>折扣卷編號 :
                                                <asp:Literal ID="lit_GA01" runat="server" Text='<%# Eval("GA01") %>'></asp:Literal>
                                                </span>
                                                <br />
                                                <span>使用低消 :
                                                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("GA07") %>'></asp:Literal>
                                                </span>
                                                <br />
                                                <span>期限
                                                 <%--<asp:Literal ID="lit_GA05" runat="server" Text='<%# Eval("GA05") %>'></asp:Literal>--%>
                                                </span>
                                                <br />
                                                <span>使用訂單 :
                                                <asp:Literal ID="lit_ORM02" runat="server" Text='<%# Eval("ORM02") %>'></asp:Literal>
                                                </span>
                                            </td>
                                            <td>
                                                <span>
                                                    <asp:Literal ID="lit_GA02" runat="server" Text='<%# Eval("GA02") %>'></asp:Literal>
                                                </span>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                        <div style="padding-left: 20px; padding-bottom: 20px">
                            <asp:Literal ID="lit_no_coupon" runat="server"></asp:Literal>
                        </div>

                    </div>
                </div>

            </div>
        </div>
   
                 </section>
          <!-- 會員區 左邊導覽＋右邊顯示 結束 -->
         </content>
    <script>
        $(function () {
            $("#mc04").addClass("select");
        })
    </script>
</asp:Content>

