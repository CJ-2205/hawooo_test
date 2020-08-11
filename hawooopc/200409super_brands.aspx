<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200409super_brands.aspx.cs" Inherits="user_static_200409super_brands" %>

<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/200409hw_staraward.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-g main-contain">

        <div id="top">
            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200409/bbn_01.png" alt="主banner" />
        </div>
        <div class="am-container">
           <%-- <div class="am-margin-vertical-lg">
                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200409/bb_00.png" alt="" />
            </div>--%>
            <%--===================== Best Skin Care Start =====================--%>
            <section class="block1 am-margin-vertical-lg" id="p1">
                <div>
                    <a href="#!">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200409/bb_01.png"  alt="bb_02" />
                    </a>
                </div>
                <div class="am-padding-sm bg1 brands-wrapper" id="logo1">
                    <ul class="am-avg-sm-5">
                        <asp:Repeater ID="rp1" runat="server">
                            <ItemTemplate>
                                <li class="am-fl am-padding-xs">
                                    <a href='<%# Eval("_url") %>' target="_blank">
                                        <div class="am-padding item-text">
                                            <h6><%# Eval("_info") %></h6>
                                        </div>
                                        <div class="brand-logo">
                                            <div class="award">
                                                <img data-sizes="auto" src='<%# Eval("_rankImage") %>'>
                                            </div>
                                            <div>
                                                <img data-sizes="auto" src='<%# Eval("_image") %>'>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </section>
            <%--===================== Best Skin Care End ===========================--%>

            <%--===================== Best Home& Living&Mum Start =====================--%>
            <section class="block1 am-margin-vertical-lg" id="p2">
                <div>
                    <a href="#!">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200409/bb_02.png" alt="bb_03" />
                    </a>
                </div>
                <div class="am-padding-sm bg1 brands-wrapper" id="logo2">
                    <ul class="am-avg-sm-5">
                         <asp:Repeater ID="rp2" runat="server">
                            <ItemTemplate>
                                <li class="am-fl am-padding-xs">
                                    <a href='<%# Eval("_url") %>' target="_blank">
                                        <div class="am-padding item-text">
                                            <h6><%# Eval("_info") %></h6>
                                        </div>
                                        <div class="brand-logo">
                                            <div class="award">
                                                <img data-sizes="auto" src='<%# Eval("_rankImage") %>'>
                                            </div>
                                            <div>
                                                <img data-sizes="auto" src='<%# Eval("_image") %>'>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </section>
            <%--===================== Best Home& Living&Mum End =====================--%>

            <%--===================== Best Supplement Start =========================--%>
            <section class="block1 am-margin-vertical-lg" id="p3">
                <div>
                    <a href="#!">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200409/bb_03.png" alt="bb_04" />
                    </a>
                </div>
                <div class="am-padding-sm bg1 brands-wrapper" id="logo3">
                    <ul class="am-avg-sm-5">
                         <asp:Repeater ID="rp3" runat="server">
                            <ItemTemplate>
                                <li class="am-fl am-padding-xs">
                                    <a href='<%# Eval("_url") %>' target="_blank">
                                        <div class="am-padding item-text">
                                            <h6><%# Eval("_info") %></h6>
                                        </div>
                                        <div class="brand-logo">
                                            <div class="award">
                                                <img data-sizes="auto" src='<%# Eval("_rankImage") %>'>
                                            </div>
                                            <div>
                                                <img data-sizes="auto" src='<%# Eval("_image") %>'>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </section>
            <%--===================== Best Supplement End =====================--%>
            <%--===================== Best Cosmetic Start ======================--%>
            <section class="block1 am-margin-vertical-lg" id="p4">
                <div>
                    <a href="#!">
                        <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200409/bb_04.png" alt="bb_05" />
                    </a>
                </div>
                <div class="am-padding-sm bg1 brands-wrapper" id="logo4">
                    <ul class="am-avg-sm-5">
                         <asp:Repeater ID="rp4" runat="server">
                            <ItemTemplate>
                                <li class="am-fl am-padding-xs">
                                    <a href='<%# Eval("_url") %>' target="_blank">
                                        <div class="am-padding item-text">
                                            <h6><%# Eval("_info") %></h6>
                                        </div>
                                        <div class="brand-logo">
                                            <div class="award">
                                                <img data-sizes="auto" src='<%# Eval("_rankImage") %>'>
                                            </div>
                                            <div>
                                                <img data-sizes="auto" src='<%# Eval("_image") %>'>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </section>
            <%--===================== Best Cosmetic End ============ ======--%>
            <%--===================== Best Food Start =====================--%>
            <section class="block1 am-margin-vertical-lg" id="p5">
                <div>
                    <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20200409/bb_05.png" alt="bb_06" />
                </div>
                <div class="am-padding-sm bg1 brands-wrapper" id="logo5">
                    <ul class="am-avg-sm-5">
                         <asp:Repeater ID="rp5" runat="server">
                            <ItemTemplate>
                                <li class="am-fl am-padding-xs">
                                    <a href='<%# Eval("_url") %>' target="_blank">
                                        <div class="am-padding item-text">
                                            <h6><%# Eval("_info") %></h6>
                                        </div>
                                        <div class="brand-logo">
                                            <div class="award">
                                                <img data-sizes="auto" src='<%# Eval("_rankImage") %>'>
                                            </div>
                                            <div>
                                                <img data-sizes="auto" src='<%# Eval("_image") %>'>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </section>


            <%--===================== Best Food End =====================--%>
        </div>
    </div>
    <%--=======================活動辦法 Start ===========================--%>
    <footer class="activity-method am-padding-vertical-lg">
        <div class="am-container">
            <p>
                Terms & Conditions<br />
                HaWooo Star Award<br />
                1. Sales period: 9th April 2020 12:00 - 21st April 2020 23:59<br />
                2. Super brands & Super Items : Top 5 Brands & Items voted by HA fans from 1st April 2020 - 8th April 2020<br />
                3. HaWooo reserves the sole right to alter, modify, add to or otherwise vary these HaWooo Star Award terms from time to time, and in such manner as Hawooo deems appropriate.
            </p>
        </div>
    </footer>
    <%--=======================活動辦法 End============================--%>
   
    <script type="text/javascript">


    </script>
</asp:Content>

