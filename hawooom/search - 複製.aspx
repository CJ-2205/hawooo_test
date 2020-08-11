<%@ Page Title="" Language="C#" MasterPageFile="mobile.master" AutoEventWireup="true"
    CodeFile="search.aspx.cs" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container">
        <div class="page-main" style="margin-top: 20px">
            <div class="page-menu-Box">
                <p class="pagelink">
                    搜尋 >
                    <asp:Literal ID="lit_stxt" runat="server"></asp:Literal>
                </p>
            </div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Panel ID="p_non_result" runat="server">
                        <div style="background-color: #e2e2e2; text-align: center; width: 100%; margin-top: 30px">
                            <p style="font-size: 20px; color: #717171; padding-top: 50px; font-weight: 600">
                                找不到與
                                <asp:Literal ID="lit_non_txt" runat="server"></asp:Literal>
                                有關的結果
                            </p>
                            <p style="padding: 15px 5px 0px 5px; font-size: 18px; color: #717171; font-weight: 600">
                                請檢查是否有錯字，或試者重新搜尋其他的字詞吧!</p>
                            <p style="padding: 20px 0px 50px 0px; font-size: 14px; color: #717171; font-weight: 400">
                                你可以逛逛:<a href="shop.aspx">好物市集</a>、<a href="group.aspx">限時團購</a>
                            </p>
                        </div>
                    </asp:Panel>
                    <ul class="index-hotBox" id="plist" style="margin-top: 10px">
                        <asp:Repeater ID="p_list" runat="server">
                            <ItemTemplate>
                                <li><a href='<%# "product.aspx?id=" + Eval("WP01") %>' style="display: block; height: 160px">
                                    <img src='<%# "https://www.hawooo.com/images/webimgs/" + Eval("WP08_1") %>' style="height: 160px;
                                        width: 160px" />
                                    <div class="productInfor">
                                        <p class="hotTitle">
                                            <%# Eval("WP02") %>
                                        </p>
                                        <p class="hotLeft">
                                            <span class="hotPrcieS">
                                                <%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())) %></span>
                                            <span class="hotPrcieB">
                                                <%# "RM" + hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                        </p>
                                        <%--   <p class="hotCartBut"><a href='<%# "product.aspx?id=" + Eval("WP01") %>' title=""><i class="am-icon-flash"></i>&nbsp;&nbsp;BUY</a></p>--%>
                                    </div>
                                </a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                    <asp:Literal ID="lit_message" runat="server"></asp:Literal>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
