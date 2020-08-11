<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true" CodeFile="membergold2.aspx.cs" Inherits="usercode_membergold" %>

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

    <content style="margin-top: 140px; display: block;">

       <section class="am-container am-cf member-wrapper">    
            <uc1:memberleftclass runat="server" ID="memberleftclass" />

    
        <div class="am-fl member-rightmenu">

           
            <!-- 購物金可用標題 voucher-left-title start -->
                <section class="member-left-title">
                    <div class="voucher-left-title">
                        <span>
                        <asp:Literal ID="lit_total" runat="server"></asp:Literal>
                      </span>
                        <h4>可用購物金</h4>
                    </div>
                </section>
            <!-- 購物金可用標題 voucher-left-title end -->
            <!-- 購物金明細標題＆購物金明細 voucher-title & voucher-list start -->
                <section class="member-list-wrapper">
                    <div class="member-no-tab">
                        購物金明細
                    </div>
                    <!-- 購物金獲得紀錄 開始 -->
                    <div class="am-u-sm-12 am-cf member-info m-voucher">
                    <table class="member-table voucher-table">
                        <tbody>
                            <asp:Repeater ID="rp_list" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td class="voucher-content">
                                            <h4>
                                            <asp:Literal ID="lit_AD02" runat="server" Text='<%# Convert.ToDateTime( Eval("AD02")).ToString("dd/MM/yyyy") %>'></asp:Literal>
                                                 </h4>    
                                             <p>
                                            <asp:Literal ID="lit_AD09" runat="server" Text='<%# "備註 : "+ Eval("AD09") %>'></asp:Literal>
                                             </p>
                                        </td>
                                        <td class="voucher-price">
                                            <asp:Literal ID="lit_AD06" runat="server" Text='<%# Eval("AD03").ToString().Equals("0")?"+"+ Eval("AD06") :"-"+ Eval("AD06")  %>'></asp:Literal>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                  
                    </table>
                  </div>
                </section>
        </div>
        </section>          
            </content>



    <script>
        $(function () {
            $("#mc03").addClass("select");
        })
    </script>
</asp:Content>

