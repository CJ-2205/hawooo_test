<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="border.aspx.cs" Inherits="user_border" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../assets/css/table.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container">
        <div class="am-panel boxshadow" style="margin-top: 20px">
            <div class="am-panel" style="padding: 20px; font-weight: 900; font-size: 20px;">
                <asp:HiddenField ID="hf_BORM01" runat="server" />
                代購單編號：<asp:Literal ID="lit_BORM20" runat="server"></asp:Literal><br />
                最後付款日：<span style="color: #C00;"><asp:Literal ID="lit_BORM21" runat="server"></asp:Literal></span><br />
                代購單匯率：<asp:Literal ID="lit_BORM13" runat="server"></asp:Literal>
            </div>

            <table class="hw-table">
                <thead>
                    <tr>
                        <th style="width: 550px">商品/規格</th>
                        <th style="width: 100px">數量</th>
                        <th style="width: 150px">運費</th>
                        <th style="width: 150px">價格</th>
                        <th style="width: 200px">小計</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="rp_cart_list" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <a href='<%# Eval("BORD03") %>' target="_blank">
                                        <%# Eval("BORD02") %>/<%# Eval("BORD11") %></a>
                                </td>
                                <td>
                                    <%# Eval("BORD04") %>
                                </td>
                                <td>NTD <%# Convert.ToInt32(Eval("BORD12").ToString()) %>
                                </td>
                                <td>NTD <%# Eval("BORD07").ToString().Split('.')[0].ToString()  %>
                                </td>
                                <td>RM <%# Eval("BORD14").ToString()  %></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
                <tfoot>
                    <tr style="border-top: 2px solid #CCC">
                        <th colspan="4" style="background: #FFF; text-align: right; color: #000">
                            <span style="color: #0094ff; padding-right: 5px">代購商品首件服務費<span style="color: #C00">RM 10</span>, 之後每多 1 樣商品加 <span style="color: #C00">RM&nbsp;6</span></span>
                            商品數量( <span style="color: #C00;">
                                <asp:Literal ID="lit_BORM14" runat="server"></asp:Literal>)</span>&nbsp;服務費：
                        </th>
                        <th colspan="1" style="background: #FFF; color: #C00; font-size: 20px">
                            <span class="spanText2">RM&nbsp;
                                 <asp:Literal ID="lit_BORM30" runat="server"></asp:Literal></span>
                        </th>
                    </tr>
                    <tr>
                        <th colspan="4" style="background: #F8F8F8; text-align: right; color: #000">商品金額：
                        </th>
                        <th colspan="1" style="background: #F8F8F8; color: #C00; font-size: 20px">RM
                            <asp:Literal ID="lit_BORM33" runat="server"></asp:Literal>
                        </th>
                    </tr>
                    <tr>
                        <th colspan="4" style="background: #F8F8F8; text-align: right; color: #000">運費：
                        </th>
                        <th colspan="1" style="background: #F8F8F8; color: #C00; font-size: 20px">RM
                            <asp:Literal ID="lit_BORM15" runat="server"></asp:Literal>
                        </th>
                    </tr>
                    <tr>
                        <th colspan="4" style="background: #F8F8F8; text-align: right; color: #000">銀行手續費(3%)：
                        </th>
                        <th colspan="1" style="background: #F8F8F8; color: #C00; font-size: 20px">RM
                              <asp:Literal ID="lit_BORM24" runat="server"></asp:Literal>
                        </th>
                    </tr>

                    <tr style="background: #FFF">
                        <th colspan="5" style="background: #FFFAAA; text-align: center; font-size: 20px; color: #000">總計：
                            <span style="color: #C00">RM &nbsp;  
                                <asp:Literal ID="lit_BORM16" runat="server"></asp:Literal></span>
                        </th>
                    </tr>
                </tfoot>
            </table>
            <hr />
            <style>
                .payment td {
                    padding: 10px;
                }
            </style>
            <hr data-am-widget="divider" style="" class="am-divider am-divider-default" />
            <div class="am-g">

                <div class="am-u-sm-12" style="background-color: #EEE; height: 50px; color: #6d6b6b; padding-top: 10px;">
                    <i class="am-icon-paypal"></i>&nbsp;  選擇付款方式-Payment select
                </div>
                <div class="am-u-sm-12" style="padding-left: 10px; padding-top: 10px;">
                    <asp:RadioButtonList ID="rb_payment" runat="server" CellSpacing="5" CellPadding="5" CssClass="am-monospace payment">
                        <asp:ListItem Text="MOLPAY" Value="1"></asp:ListItem>
                        <asp:ListItem Text="CIMB BANK" Value="0"></asp:ListItem>
                        <%-- <asp:ListItem Text="匯款轉帳" Value="0"></asp:ListItem>--%>
                    </asp:RadioButtonList>
                    <div style="position: absolute; top: 5px; left: 100px">
                        <img src="../images/payment/pay-list.png" class="am-img-thumbnail" style="width: 950px" />
                    </div>
                    <div style="position: absolute; top: 68px; left: 115px">
                        [ Account: 80-0327458-9 &nbsp;&nbsp; Bank: CIMB BANK  &nbsp;&nbsp; Name: PEOPLES MAP SDN. BHD. ]
                    </div>
                </div>
            </div>
            <div class="am-g">

                <div class="am-u-sm-12" style="background-color: #EEE; height: 50px; color: #6d6b6b; padding-top: 10px;">
                    <i class="am-icon-info"></i>&nbsp; 訂購資訊-Order info

                </div>

                <div class="am-u-sm-6" style="padding-top: 10px">
                    <div class="am-form">
                        <fieldset>
                            <div class="am-form-group">
                                <label><span style="color: #ff0000">*</span>姓名 | name</label>
                                <asp:TextBox ID="txt_BORM04" runat="server" MaxLength="50" placeholder="請輸入姓名"></asp:TextBox>
                            </div>

                            <div class="am-form-group">
                                <label>電話 | Tel</label>
                                <asp:TextBox ID="txt_BORM05" runat="server" MaxLength="30" placeholder="請輸入聯繫電話"></asp:TextBox>

                            </div>

                            <div class="am-form-group">
                                <label><span style="color: #ff0000">*</span>電子郵件 | E-Mail</label>
                                <asp:TextBox ID="txt_BORM06" runat="server" Enabled="false"></asp:TextBox>
                            </div>
                        </fieldset>
                    </div>

                </div>
                <div class="am-u-sm-6" style="padding-top: 10px">
                    <div class="am-form">
                        <fieldset>
                            <div class="am-form-group">
                                <label><span style="color: #ff0000">*</span>State / Postcode</label>
                                <div class="am-g">
                                    <div class="am-u-sm-8" style="padding-right: 5px">
                                        <asp:DropDownList ID="ddl_state_2" runat="server">
                                        </asp:DropDownList>
                                    </div>
                                    <div class="am-u-sm-4" style="padding-left: 0px">
                                        <asp:TextBox ID="txt_BORM07" runat="server" MaxLength="5" placeholder="請輸入Postcode"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="am-form-group">
                                <label><span style="color: #ff0000">*</span>City | Address</label>
                                <div class="am-g">
                                    <div class="am-u-sm-4" style="padding-right: 5px">
                                        <asp:TextBox ID="txt_BORM08" runat="server" MaxLength="30" placeholder="請輸入City"></asp:TextBox>
                                    </div>
                                    <div class="am-u-sm-8" style="padding-left: 0px">
                                        <asp:TextBox ID="txt_BORM11" runat="server" MaxLength="500" placeholder="請輸入收件地址"></asp:TextBox>
                                    </div>
                                </div>

                            </div>

                            <div class="am-form-group">
                                <label>備註 | Note</label>
                                <asp:TextBox ID="txt_BORM12" runat="server" MaxLength="500" placeholder="請輸入備註(EX:上午到貨/下午到貨)"></asp:TextBox>
                            </div>
                        </fieldset>
                    </div>
                </div>

            </div>
            <hr />
            <div class="am-text-center" style="height: 70px">
                <asp:UpdatePanel ID="up_step" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="am-u-sm-12" style="text-align: center">
                            <asp:Button ID="btn_next" runat="server" Text="確認送出" OnClick="btn_next_Click" CssClass="btn btn-red" Style="font-size: 18px" />
                        </div>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btn_next" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>

            </div>
        </div>
    </div>

</asp:Content>

