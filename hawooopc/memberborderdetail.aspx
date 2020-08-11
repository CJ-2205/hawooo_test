<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="memberborderdetail.aspx.cs" Inherits="user_memberborderdetail" %>

<%@ Register Src="~/user/control/memberclass.ascx" TagPrefix="uc1" TagName="memberclass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../assets/css/table.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container" style="padding-top: 20px">
        <div class="am-u-sm-2">
            <uc1:memberclass runat="server" ID="memberclass" />
        </div>
        <div class="am-u-sm-10" style="padding-left: 0px">
            <div class="am-panel boxshadow">
                <legend style="padding: 15px; background-color: #ffffff; margin-bottom: 1px;"><a href="memberborder.aspx"><i class="am-icon-step-backward"></i></a>&nbsp; 返回代購單管理</legend>
                <div class="am-panel" style="padding: 20px; font-weight: 900; font-size: 20px;">
                    <asp:HiddenField ID="hf_BORM01" runat="server" />
                    代購單編號：<asp:Literal ID="lit_BORM20" runat="server"></asp:Literal><br />
                    最後付款日：<span style="color: #C00;"><asp:Literal ID="lit_BORM21" runat="server"></asp:Literal></span><br />
                    代購單匯率：<asp:Literal ID="lit_BORM13" runat="server"></asp:Literal>
                </div>

                <table class="hw-table">
                    <thead>
                        <tr>
                            <th style="width: 430px">商品/規格</th>
                            <th>數量</th>
                            <th>運費</th>
                            <th>價格</th>
                            <th style="width: 160px">小計</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rp_cart_list" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <a href='<%# Eval("BORD03") %>' target="_blank">
                                            <%# Eval("BORD02") %>/<%# Eval("BORD11") %></a></td>
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
                        <i class="am-icon-paypal"></i>&nbsp;  付款方式-Payment : 
                         <asp:Literal ID="lit_BORM23" runat="server"></asp:Literal>
                    </div>

                </div>
                <br />
                <div class="am-g">

                    <div class="am-u-sm-12" style="background-color: #EEE; height: 50px; color: #6d6b6b; padding-top: 10px;">
                        <i class="am-icon-car"></i>&nbsp;  貨運資訊-Shipping info：出貨日期(<asp:Literal ID="lit_BORM27" runat="server"></asp:Literal>) 貨運單號：
                          <asp:Literal ID="lit_BORM28" runat="server"></asp:Literal>
                    </div>
                </div>
                <br />
                <div class="am-g">

                    <div class="am-u-sm-12" style="background-color: #EEE; height: 50px; color: #6d6b6b; padding-top: 10px;">
                        <i class="am-icon-info"></i>&nbsp; 訂購資訊-Order info

                    </div>

                    <div class="am-u-sm-6" style="padding-top: 10px">
                        <div class="am-form">
                            <fieldset>
                                <div class="am-form-group">
                                    <label><span style="color: #ff0000">*</span>姓名 | name</label>
                                    <asp:TextBox ID="txt_BORM04" runat="server" MaxLength="50" placeholder="" Enabled="false"></asp:TextBox>
                                </div>

                                <div class="am-form-group">
                                    <label>電話 | Tel</label>
                                    <asp:TextBox ID="txt_BORM05" runat="server" MaxLength="30" placeholder="" Enabled="false"></asp:TextBox>

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
                                            <asp:TextBox ID="txt_State1" runat="server" Enabled="false"></asp:TextBox>

                                        </div>
                                        <div class="am-u-sm-4" style="padding-left: 0px">
                                            <asp:TextBox ID="txt_BORM07" runat="server" MaxLength="5" placeholder="" Enabled="false"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="am-form-group">
                                    <label><span style="color: #ff0000">*</span>City | Address</label>
                                    <div class="am-g">
                                        <div class="am-u-sm-4" style="padding-right: 5px">
                                            <asp:TextBox ID="txt_BORM08" runat="server" MaxLength="30" placeholder="" Enabled="false"></asp:TextBox>
                                        </div>
                                        <div class="am-u-sm-8" style="padding-left: 0px">
                                            <asp:TextBox ID="txt_BORM11" runat="server" MaxLength="500" placeholder="" Enabled="false"></asp:TextBox>
                                        </div>
                                    </div>

                                </div>

                                <div class="am-form-group">
                                    <label>備註 | Note</label>
                                    <asp:TextBox ID="txt_BORM12" runat="server" MaxLength="500" placeholder="" Enabled="false"></asp:TextBox>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        $(function () {
            $("#mc09").addClass("select");
        })
    </script>
</asp:Content>

