<%@ Control Language="C#" AutoEventWireup="true" CodeFile="blogtop.ascx.cs" Inherits="user_control_blogtop" %>

<!-- Search Bar (Start) -->
<div class="d-flex align-items-center border w-50">
    <input class="form-control form-control-md rounded-0 border-0 w-100  px-3 py-4" type="search" placeholder="大家都在搜的文章" aria-label="Search" id="txt_blog_search">
    <a onclick="Search()"><span class="mr-2"><i class="fas fa-search"></i></span></a>
</div>
<div class="mb-3">
    <ul class="nav">
        <asp:Literal ID="lit_class" runat="server" ViewStateMode="Disabled"></asp:Literal>
    </ul>
</div>
<script>
    function Search() {
        var srhVal = $("#txt_blog_search").val();
        debugger;
        window.location.href = "blogs.aspx?txtSrh=" + srhVal;
    }
</script>














