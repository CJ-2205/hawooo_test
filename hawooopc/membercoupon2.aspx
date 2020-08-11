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
            <ul class="am-tabs-nav am-nav am-nav-tabs am-avg-sm-2">
                    <li class="am-active"><a href="#tab1">獲取的折扣卷</a></li>
                    <li><a href="#tab2">過期/使用的折扣卷</a></li>
                    <%--<li><a href="#tab3">輸入折扣卷</a></li>--%>
                </ul>
                <!-- 訂單tab 結束 -->

                <%--獲取紀錄--%>
                <div class="am-tabs-bd">
                    <div class="am-panel boxshadow am-tab-panel am-active" id="tab1">
                     <div class="coupon-list">
                        <table>                         
                            <tbody>
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <h4>折扣卷編號 : 
                                                <asp:Literal ID="lit_GA01" runat="server" Text='<%# Eval("GA01") %>'></asp:Literal>
                                                </h4>
                                           
                                                <p>使用低消 : 
                                                    <asp:Literal ID="lit_GA07" runat="server" Text='<%# "RM "+ Eval("GA07") %>'></asp:Literal>
                                                </p>
                                              
                                                <p>期限 : 
                                                 <asp:Literal ID="lit_GA05" runat="server" Text='<%#Convert.ToDateTime(Eval("GA11")).ToString("yyyy/MM/dd")+"~"+Convert.ToDateTime(Eval("GA12")).ToString("yyyy/MM/dd") %>'></asp:Literal>
                                               <p>

                                            </td>
                                            <td  class="coupon-price">
                                              RM 
                                                    <asp:Literal ID="lit_GA02" runat="server" Text='<%# Eval("GA02") %>'></asp:Literal>
                                            
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>

                        </table>
                 </div>
                        <div style="padding-left: 20px; padding-bottom: 20px">
                            <asp:Literal ID="lit_get_coupon" runat="server"></asp:Literal>
                        </div>
                    </div>
                    <%--過期/使用的折扣卷--%>
                    <div class="am-panel boxshadow am-tab-panel" id="tab2">
                           <div class="coupon-list">
                        <table>                         
                            <tbody>
                                <asp:Repeater ID="rp_list" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <h4>折扣卷編號 : 
                                                <asp:Literal ID="lit_GA01" runat="server" Text='<%# Eval("GA01") %>'></asp:Literal>
                                                </h4>
                                               
                                                <p>使用低消 : 
                                                    <asp:Literal ID="lit_GA07" runat="server" Text='<%#"RM "+ Eval("GA07") %>'></asp:Literal>
                                                </p>
                                           
                                                <p>期限 : 
                                                 <asp:Literal ID="lit_GA05" runat="server" Text='<%#Convert.ToDateTime(Eval("GA11")).ToString("yyyy/MM/dd")+"~"+Convert.ToDateTime(Eval("GA12")).ToString("yyyy/MM/dd") %>'></asp:Literal>
                                                </p>
                                            
                                                <p>使用訂單 : 
                                                <asp:Literal ID="lit_ORM02" runat="server" Text='<%# Eval("ORM02") %>'></asp:Literal>
                                                </p>
                                            </td>
                                            <td class="coupon-price">
                                            
                                                    <asp:Literal ID="lit_GA02" runat="server" Text='<%#"RM"+  Eval("GA02") %>'></asp:Literal>
                                      
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>

</div>
                        <div style="padding-left: 20px; padding-bottom: 20px">
                            <asp:Literal ID="lit_no_coupon" runat="server"></asp:Literal>
                        </div>

                    </div>

                         <div class="am-panel boxshadow am-tab-panel" id="tab3">

                            <div class="entercoupon">
                                <p>請輸入您獲得的折扣券號<a href="#"><i class="am-icon-question-circle"></i></a>：</p>
                                <input type="" name="">
                                <button class="am-btn fuchsia-o-btn" type="submit">確定</button>
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

