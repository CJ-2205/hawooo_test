<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="border.aspx.cs" Inherits="mobile_border" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container">
        <!-- 內容區 START -->
        <div class="page-main">
            <!-- 麵包屑 Start-->
            <div class="page-menu-Box">
                <p class="pagelink">代購訂單結帳</p>
            </div>
            <!-- 麵包屑 End-->
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

                        <div class="am-u-sm-12">
                            <img src="images/border_pay_flow.png" style="width: 100%" />
                        </div>

                        <!-- 結帳區 Start-->
                        <ul class="orderCalculate">
                            <li style="text-align: left; color: #008BCE;">代購商品首件服務費<span style="color: #C00">RM 10</span>, 之後每多 1 樣商品加 <span style="color: #C00">RM&nbsp;6</span></li>
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
                    <Triggers>
                    </Triggers>
                </asp:UpdatePanel>
                <hr />
                <!-- 付款方式標題 -->
                <div class="am-g" style="margin: 2%;">
                    <div class="am-u-sm-12" style="background-color: #EEE; color: #6d6b6b; padding: 2%;">
                        <i class="am-icon-paypal"></i>&nbsp; 選擇付款方式
                    </div>
                    <!-- 付款方式 Start-->
                    <div class="am-u-sm-12" style="padding-top: 3%; padding-bottom: 2%;">
                        <asp:RadioButtonList ID="rb_payment" runat="server" CellSpacing="5" CellPadding="5" CssClass="am-monospace payment">
                            <asp:ListItem Text="CIMB-銀行轉帳" Value="0" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="MOLPAY-線上付款" Value="1" Selected="True"></asp:ListItem>
                            <%-- <asp:ListItem Text="轉帳匯款" Value="0"></asp:ListItem>--%>
                        </asp:RadioButtonList>
                        <div style="margin-top: 1%; width: 100%;">
                            <img src="images/pay-list-01.png" class="am-img-thumbnail" style="width: 100%" />
                            <img src="images/pay-list-02.png" class="am-img-thumbnail" style="width: 100%" />
                        </div>
                        <%--<div style="position: absolute; top: 75px; left: 115px">
                            [ Account: 1120-5410-2519 &nbsp;&nbsp; Bank: Maybank  &nbsp;&nbsp; Name: Ng Yen Lan ]
                        </div>--%>
                    </div>
                    <!-- 付款方式 End-->
                    <!-- 訂購資料區 -->
                    <div class="am-g" style="margin: 1%;">
                        <!-- 訂購資料區 標題-->
                        <div class="am-u-sm-12" style="background-color: #EEE; color: #6d6b6b;">
                            <i class="am-icon-info"></i>&nbsp; 訂購資訊
                        </div>

                        <!-- 訂購資料表單 Start -->
                        <div class="am-u-sm-6" style="padding-top: 10px;">
                            <div class="am-form">
                                <fieldset>
                                    <div class="am-form-group">
                                        <label>
                                            <span style="color: #ff0000">*</span>姓名 | name
                                        </label>
                                        <asp:TextBox ID="txt_BORM04" runat="server" MaxLength="50" placeholder="請輸入姓名"></asp:TextBox>
                                    </div>
                                    <div class="am-form-group">
                                        <label>
                                            電話 | Tel
                                        </label>
                                        <asp:TextBox ID="txt_BORM05" runat="server" MaxLength="30" placeholder="請輸入聯繫電話"></asp:TextBox>
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
                                                    <asp:DropDownList ID="ddl_state_1" runat="server" Style="padding: 8px" Enabled="false"  >
                                                        <asp:ListItem Value="0" Text="West Malaysia"></asp:ListItem>
                                                        <asp:ListItem Value="1" Text="East Malaysia"></asp:ListItem>
                                                        <asp:ListItem Value="2" Text="Brunei"></asp:ListItem>
                                                    </asp:DropDownList>
                                                    <%--<asp:TextBox ID="txt_State1" runat="server" Enabled="false"></asp:TextBox>--%>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-top: 10px">

                                                    <asp:DropDownList ID="ddl_state_2" runat="server" Style="padding: 8px">
                                                    </asp:DropDownList>
                                                    <%--<asp:TextBox ID="txt_State2" runat="server" Enabled="false"></asp:TextBox>--%>
                                                </td>
                                            </tr>
                                        </table>

                                    </div>
                                    <div class="am-form-group">
                                        <label>
                                            <span style="color: #ff0000">*</span>Postcode
                                        </label>
                                        <asp:TextBox ID="txt_BORM07" runat="server" MaxLength="5" placeholder="請輸入Postcode"></asp:TextBox>
                                    </div>
                                    <div class="am-form-group">
                                        <label>
                                            <span style="color: #ff0000">*</span>City
                                        </label>
                                        <asp:TextBox ID="txt_BORM08" runat="server" MaxLength="30" placeholder="請輸入City"></asp:TextBox>
                                    </div>
                                    <div class="am-form-group">
                                        <label>
                                            <span style="color: #ff0000">*</span>收件地址 | Address
                                        </label>
                                        <asp:TextBox ID="txt_BORM11" runat="server" MaxLength="500" placeholder="請輸入收件地址(東馬加收RM 10)"></asp:TextBox>
                                    </div>
                                    <div class="am-form-group">
                                        <label>
                                            備註 | Note
                                        </label>
                                        <asp:TextBox ID="txt_BORM12" runat="server" TextMode="MultiLine" Height="200px" MaxLength="500" placeholder="請輸入備註(EX:上午到貨/下午到貨)"></asp:TextBox>
                                    </div>
                                </fieldset>
                            </div>
                        </div>

                        <!-- 訂購資料表單 End-->
                    </div>
                    <!-- 訂購資料區 -->

                    <asp:UpdatePanel ID="up_step" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <hr style="width: 95%" />
                            <div class="am-u-sm-12" style="text-align: center">
                                <asp:Button ID="btn_next" runat="server" Text="確認付款" OnClick="btn_next_Click" CssClass="btn btn-red" Style="font-size: 14px" />
                            </div>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btn_next" EventName="Click" />
                        </Triggers>
                    </asp:UpdatePanel>
                </div>
            </div>
            <!--購物車資訊區域 End-->
        </div>
    </div>
</asp:Content>

