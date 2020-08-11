<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="newdetail.aspx.cs" Inherits="mobile_newdetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
        <div class="am-panel am-panel-default">
            <div>
                <h3 style="padding-left: 10px; padding-top: 10px; margin: 0px">
                    <asp:Literal ID="lit_Title" runat="server"></asp:Literal>
                </h3>
                <hr />
                <div style="padding: 10px">
                    <asp:Literal ID="lit_Content" runat="server"></asp:Literal>
                </div>
            </div>

        </div>
    </div>
</asp:Content>

