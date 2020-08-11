<%@ Control Language="C#" AutoEventWireup="true" CodeFile="articlemenu.ascx.cs" Inherits="mobile_control_articlemenu" %>

<section class="am-g brand-catalog-title-w" >
    <div class="brand-catalog-title  am-cf">
        <div class="am-btn am-btn-primary b-collapse-title" data-am-collapse="{target: '#brands-nav'}">
            <h3 class="am-fl">網友推薦
                <asp:Literal ID="lit_b_class" runat="server"></asp:Literal>
            </h3>
            <i class="am-icon-caret-down am-fr"></i>
        </div>
    </div>
    <nav class="brand-catalog-nav">
        <ul id="brands-nav" class="am-nav am-collapse">
            <asp:Literal ID="lit_class" runat="server" ViewStateMode="Disabled"></asp:Literal>
        </ul>
    </nav>
</section>

