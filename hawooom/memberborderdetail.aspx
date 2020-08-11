<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="memberborderdetail.aspx.cs" Inherits="mobile_memberborderdetail" %>

<%@ Register Src="member_class.ascx" TagPrefix="uc1" TagName="member_class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <!-- 內容區 START -->
        <div>
            <uc1:member_class runat="server" ID="member_class" />

            <!-- 購物車資訊區域 Start-->
            <div class="cart-infor-box" style="margin-top: 10px">
                <asp:UpdatePanel ID="up_cart_list" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:HiddenField ID="hf_BORM01" runat="server" />
                        <div style="text-align: center; height: 100px; padding-top: 10px; font-size: 18px">
                            代購單編號：<asp:Literal ID="lit_BORM20" runat="server"></asp:Literal><br />
                            最後付款日：<asp:Literal ID="lit_BORM21" runat="server"></asp:Literal><br />
                            代購單匯率：
                            <asp:Literal ID="lit_BORM13" runat="server"></asp:Literal>
                        </div>
                        <!-- 購物清單 Start-->
                        <table class="am-table" style="font-size: 13px; padding: 10px">
                            <tr style="color: #808080">
                                <th>商品名稱</th>
                                <th style="width: 50px">數量</th>
                                <th style="width: 50px">運費</th>
                                <th style="width: 50px">價格</th>
                            </tr>
                            <asp:Repeater ID="rp_cart_list" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <a href='<%# Eval("BORD03") %>' target="_blank">
                                                <%# Eval("BORD02") %>-<%# Eval("BORD11") %></a>
                                        </td>
                                        <td>
                                            <%# Eval("BORD04") %>
                                        </td>
                                        <td>NTD <%# Convert.ToInt32(Eval("BORD12").ToString()) %>
                                        </td>
                                        <td>NTD <%# Eval("BORD07").ToString().Split('.')[0].ToString()  %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" style="text-align: right">小計: RM <%# Eval("BORD14").ToString()  %></td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </table>
                        <!-- 購物清單 End-->
                        <!-- 結帳區 Start-->
                        <ul class="orderCalculate">

                            <li>
                                <span class="spanText1">商品金額：</span><span class="spanText2">RM&nbsp;
                                    <asp:Literal ID="lit_BORM33" runat="server"></asp:Literal>
                                </span>
                            </li>
                            <li><span class="spanText1">運費：</span><span class="spanText2">RM&nbsp;
                                 <asp:Literal ID="lit_BORM15" runat="server"></asp:Literal></span></li>

                            <li><span class="spanText1">服務費：數量( 
                                <asp:Literal ID="lit_BORM14" runat="server"></asp:Literal>)</span><span class="spanText2">RM&nbsp;
                                 <asp:Literal ID="lit_BORM30" runat="server"></asp:Literal></span></li>
                            <li><span class="spanText1">銀行手續費(3%)：</span><span class="spanText2">RM&nbsp;
                                 <asp:Literal ID="lit_BORM24" runat="server"></asp:Literal></span></li>
                            <li style="background-color: #f8ee9a; text-align: center; font-size: 130%;">總計：<span style="color: #ee1867">RM&nbsp;
                                <asp:Literal ID="lit_BORM16" runat="server"></asp:Literal></li>
                        </ul>
                        <!-- 結帳區 End-->
                    </ContentTemplate>

                </asp:UpdatePanel>
                <hr />
                <!-- 付款方式標題 -->
                <div class="am-g" style="padding: 15px">

                    <!-- 訂購資料區 -->
                    <div class="am-g">
                        <!-- 訂購資料區 標題-->
                        <div class="am-u-sm-12" style="background-color: #EEE; color: #6d6b6b; padding: 2%;">
                            <i class="am-icon-info"></i>&nbsp; 訂購資訊
                        </div>
                        <asp:UpdatePanel ID="up_user_info" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <!-- 訂購資料表單 Start -->
                                <div class="am-u-sm-12" style="padding-top: 10px; margin: 0px">
                                    <div class="am-form">
                                        <fieldset>
                                            <div class="am-form-group">
                                                <label>
                                                    <span style="color: #ff0000"></span>付款方式
                                                </label>
                                                <asp:TextBox ID="txt_BORM23" runat="server" Enabled="false"></asp:TextBox>

                                            </div>
                                            <div class="am-form-group">
                                                <label>
                                                    <span style="color: #ff0000"></span>出貨日期
                                                </label>
                                                <asp:TextBox ID="txt_BORM27" runat="server" Enabled="false"></asp:TextBox>
                                            </div>
                                            <div class="am-form-group">
                                                <label>
                                                    <span style="color: #ff0000"></span>出貨單號
                                                </label>
                                                <asp:TextBox ID="txt_BORM28" runat="server" Enabled="false"></asp:TextBox>
                                            </div>
                                            <div class="am-form-group">
                                                <label>
                                                    <span style="color: #ff0000">*</span>姓名 | name
                                                </label>
                                                <asp:TextBox ID="txt_BORM04" runat="server" MaxLength="50" placeholder="請輸入姓名" Enabled="false"></asp:TextBox>
                                            </div>
                                            <div class="am-form-group">
                                                <label>
                                                    電話 | Tel
                                                </label>
                                                <asp:TextBox ID="txt_BORM05" runat="server" MaxLength="30" placeholder="請輸入聯繫電話" Enabled="false"></asp:TextBox>
                                            </div>

                                            <div class="am-form-group">
                                                <label>
                                                    <span style="color: #ff0000">*</span>電子郵件 | E-Mail
                                                </label>
                                                <asp:TextBox ID="txt_BORM06" runat="server" Enabled="false"></asp:TextBox>
                                            </div>
                                            <div class="am-form-group">
                                                <label>
                                                    <span style="color: #ff0000">*</span>State 
                                                </label>

                                                <table style="width: 100%;">
                                                    <tr>
                                                        <td>
                                                            <asp:TextBox ID="txt_State1" runat="server" Enabled="false"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding-top: 10px">
                                                            <asp:TextBox ID="txt_State2" runat="server" Enabled="false"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>

                                            </div>
                                            <div class="am-form-group">
                                                <label>
                                                    <span style="color: #ff0000">*</span>Postcode
                                                </label>
                                                <asp:TextBox ID="txt_BORM07" runat="server" MaxLength="5" placeholder="請輸入Postcode" Enabled="false"></asp:TextBox>
                                            </div>
                                            <div class="am-form-group">
                                                <label>
                                                    <span style="color: #ff0000">*</span>City
                                                </label>
                                                <asp:TextBox ID="txt_BORM08" runat="server" MaxLength="30" placeholder="請輸入City" Enabled="false"></asp:TextBox>
                                            </div>
                                            <div class="am-form-group">
                                                <label>
                                                    <span style="color: #ff0000">*</span>收件地址 | Address
                                                </label>
                                                <asp:TextBox ID="txt_BORM11" runat="server" MaxLength="500" placeholder="請輸入收件地址(東馬加收RM 10)" Enabled="false"></asp:TextBox>
                                            </div>
                                            <div class="am-form-group">
                                                <label>
                                                    備註 | Note
                                                </label>
                                                <asp:TextBox ID="txt_BORM12" runat="server" TextMode="MultiLine" Height="200px" MaxLength="500" placeholder="請輸入備註(EX:上午到貨/下午到貨)" Enabled="false"></asp:TextBox>
                                            </div>
                                        </fieldset>
                                    </div>
                                </div>
                            </ContentTemplate>

                        </asp:UpdatePanel>
                        <!-- 訂購資料表單 End-->
                    </div>
                    <!-- 訂購資料區 -->
                </div>
            </div>
            <!-- 購物車資訊區域 End-->
        </div>
    </div>
</asp:Content>

