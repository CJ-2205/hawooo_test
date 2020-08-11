<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true" CodeFile="memberorder2.aspx.cs" Inherits="user_memberorder2" %>

<%@ Register Src="~/user/control/memberleftclass.ascx" TagPrefix="uc1" TagName="memberleftclass" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- 通用＋menu -->
    <link rel="stylesheet" href="assets/css/header.css">
    <!-- 下方三個好處免運、正品、快送 -->
    <link rel="stylesheet" href="assets/css/footer_good_block.css">
    <!-- 會員專區專用 -->
    <link rel="stylesheet" type="text/css" href="assets/css/member.css">
    <!-- 商品評分專用 reviews -->
    <link rel="stylesheet" type="text/css" href="assets/css/reviews.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <%-- <div class="am-container" style="padding-top: 20px">
        <div class="am-u-md-2">
            <uc1:memberclass runat="server" ID="memberclass" />
        </div>
        <div class="am-u-md-10" style="padding-left: 0px">

            <div class="am-panel boxshadow">
                <div class="am-tabs" data-am-tabs style="padding: 10px">
                    <ul class="am-tabs-nav am-nav am-nav-tabs">
                        <li class="am-active"><a href="javascript: void(0)">商城訂單列表 - <span style="font-size: 14px">Shop order list</span></a></li>
                  
                    </ul>

                    <div class="am-tabs-bd">
                        <div class="am-tab-panel am-active">
                        
                            <table class="am-table am-table-bordered am-table-radius am-table-striped">
                                <thead>
                                    <tr>
                                        <th>訂購日期</th>
                                        <th>訂單編號</th>
                                        <th>付款方式</th>
                                        <th>訂單金額</th>
                                        <th>出貨單號</th>
                                        <th>付款狀態</th>
                                        <th>訂單狀態</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="rp_order_list" runat="server" OnItemDataBound="rp_order_list_ItemDataBound">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%# Convert.ToDateTime(Eval("ORM03").ToString()).ToString("yyyy-MM-dd HH:mm:ss") %></td>
                                                <td><a href="memberorderdetail.aspx?oid=<%# Eval("ORM01") %>"><%# Eval("ORM02") %></a></td>
                                                <td>
                                                    <asp:Literal ID="lit_ORM12" runat="server" Text='<%# Eval("ORM12") %>'></asp:Literal></td>
                                                <td><span style="font-size: 12px">RM</span> <%# Eval("ORM08") %></td>
                                                <td>
                                                    <asp:Literal ID="lit_ORM25" runat="server" Text='<%# Eval("ORM25") %>'></asp:Literal></td>
                                                <td>
                                                    <asp:Literal ID="lit_ORM19" runat="server" Text='<%# Eval("ORM19") %>'></asp:Literal></td>
                                                <td>
                                                    <asp:Literal ID="lit_ORM24" runat="server" Text='<%# Eval("ORM24") %>'></asp:Literal></td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>


            </div>



        </div>
    </div>
    <script>
        $(function () {
            $("#mc02").addClass("select");
        })
    </script>--%>


    <!-- content star -->
    <content style="margin-top: 140px; display: block;">
        <!-- 會員區 左邊導覽＋右邊顯示 -->
        <section class="am-container am-cf member-wrapper">
            <!--  左邊導覽 -->
          <uc1:memberleftclass runat="server" ID="memberleftclass" />
            <!--  右邊導覽 -->
            <div class="am-fl member-rightmenu">
                <div class="am-tabs" data-am-tabs  >
                    <!-- 訂單tab 開始 -->
                    <ul class="am-tabs-nav am-nav am-nav-tabs am-avg-sm-2">
                        <li class="am-active"><a href="#tab1">好物市集</a></li>
                        <li><a href="#tab2">限時團購</a></li>
                    </ul>
                    <!-- 訂單tab 結束 -->

                    <div class="am-tabs-bd">
                        <!-- 好物市集的panel 開始 -->
                        <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                            <div id="none_order">
                            <ul class="invoice-ul">
                            <!-- 一筆li一筆訂單 -->                 
                                <li class="order-empty">
                                    Oops！你還沒有任何訂單！<a href="index.aspx">趕快去購物吧</a>
                                </li>
                            </ul>
                            </div>
                            <div id="display_order">
                                  <table class="am-table am-table-bordered am-table-radius am-table-striped" style="background-color:white">
                                <thead>
                                    <tr>
                                        <th>訂購日期</th>
                                        <th>訂單編號</th>
                                        <th>付款方式</th>
                                        <th>訂單金額</th>
                                        <th>出貨單號</th>
                                        <th>付款狀態</th>
                                        <th>訂單狀態</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="rp_order_list" runat="server" OnItemDataBound="rp_order_list_ItemDataBound">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%# Convert.ToDateTime(Eval("ORM03").ToString()).ToString("yyyy-MM-dd HH:mm:ss") %></td>
                                                <td><a href="memberorderdetail.aspx?oid=<%# Eval("ORM01") %>"><%# Eval("ORM02") %></a></td>
                                                <td>
                                                    <asp:Literal ID="lit_ORM12" runat="server" Text='<%# Eval("ORM12") %>'></asp:Literal></td>
                                                <td><span style="font-size: 12px">RM</span> <%# Eval("ORM08") %></td>
                                                <td>
                                                    <asp:Literal ID="lit_ORM25" runat="server" Text='<%# Eval("ORM25") %>'></asp:Literal></td>
                                                <td>
                                                    <asp:Literal ID="lit_ORM19" runat="server" Text='<%# Eval("ORM19") %>'></asp:Literal></td>
                                                <td>
                                                    <asp:Literal ID="lit_ORM24" runat="server" Text='<%# Eval("ORM24") %>'></asp:Literal></td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </tbody>
                            </table>
                         </div>                           
                        </div>
                        <!-- 好物市集的panel 結束 -->
                        <!-- 限時團購的panel -->

                        <div class="am-tab-panel am-fade" id="tab2">
                             <div id="none_group_order">
                            <ul class="invoice-ul">
                            <!-- 一筆li一筆訂單 -->                 
                                <li class="order-empty">
                                    Oops！你還沒有任何訂單！<a href="group.aspx">趕快去購物吧</a>
                                </li>
                            </ul>
                            </div>
                            <div id="display_group_order">
                              <table class="am-table am-table-bordered am-table-radius am-table-striped" style="background-color:white">
                                <thead>
                                    <tr>
                                        <th>訂購日期</th>
                                        <th>訂單編號</th>
                                        <th>付款方式</th>
                                        <th>訂單金額</th>
                                        <th>出貨單號</th>
                                        <th>付款狀態</th>
                                        <th>訂單狀態</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="rp_group_order_list" runat="server"  OnItemDataBound="rp_group_order_list_ItemDataBound">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%# Convert.ToDateTime(Eval("ORM03").ToString()).ToString("yyyy-MM-dd HH:mm:ss") %></td>
                                                <td><a href="memberorderdetail.aspx?oid=<%# Eval("ORM01") %>"><%# Eval("ORM02") %></a></td>
                                                <td>
                                                    <asp:Literal ID="lit_group_ORM12" runat="server" Text='<%# Eval("ORM12") %>'></asp:Literal></td>
                                                <td><span style="font-size: 12px">RM</span> <%# Eval("ORM08") %></td>
                                                <td>
                                                    <asp:Literal ID="lit_group_ORM25" runat="server" Text='<%# Eval("ORM25") %>'></asp:Literal></td>
                                                <td>
                                                    <asp:Literal ID="lit_group_ORM19" runat="server" Text='<%# Eval("ORM19") %>'></asp:Literal></td>
                                                <td>
                                                    <asp:Literal ID="lit_group_ORM24" runat="server" Text='<%# Eval("ORM24") %>'></asp:Literal></td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </tbody>
                            </table>
                            </div>
                        </div>
                        <!-- 限時團購的panel 結束 -->
                    </div>
                </div>
            </div>
            <!--  右邊導覽 結束 -->
        </section>
        <!-- 會員區 左邊導覽＋右邊顯示 結束 -->
         </content>
    <script>
        $(function () {
            $('#member-order-tab-wrapper').tabs();
        })
    </script>
    <script>
        function del(v) {
       

            switch (v) {

                case 0:
                    {
                        $("#none_order").remove();
                        $("#none_group_order").remove();
                        break;
                    }
                case 1:
                    {
                        $("#none_order").remove();
                        $("#display_group_order").remove();
                        break;
                    }
                case 2:
                    {
                        $("#display_order").remove();
                        $("#none_group_order").remove();
                        break;
                    }
                case 3:
                    {
                 
                        $("#display_order").remove();
                        $("#display_group_order").remove();
                        break;
                    }
            }
        }
    </script>
</asp:Content>

