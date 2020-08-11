<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="dpaevent3.aspx.cs" Inherits="user_dpaevent3" %>

<%@ Import Namespace="hawooo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .getCoupon {
            display: inline-block;
            position: absolute;
            width: 450px;
            height: 73px;
            top: 232px;
            right: 284px;
            cursor: pointer;
        }

        .style1 li {
            border-right: 1px solid #ececec;
            border-bottom: 1px solid #ececec;
        }

            .style1 li:last-child {
                border-right: 0px;
                padding-right: 1px;
            }

            .style1 li span {
                font-size: 18px;
                margin: 0px auto;
                /* position: relative; */
                display: table;
                padding-bottom: 10px;
                font-weight: 700;
            }

            .style1 li a {
                cursor: pointer;
            }

            .style1 li img {
                width: 100%;
                display: block;
            }

        .select {
            position: absolute;
            left: 0px;
            top: 0px;
            width: 100%;
            height: 100%;
            background-color: #F0F0F0;
            opacity: 0.3;
            border-bottom: 3px solid #EE5984 !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container" style="background-color: #ffffff; width: 1000px">
        <div class="am-g" style="position: relative">

            <img src="../images/ftp/dpa3/edm_01.png" width="100%" />
            <div class="getCoupon" onclick="RedeemCoupon();">
            </div>
        </div>
        <asp:UpdatePanel ID="up_add" runat="server">
            <ContentTemplate>
                <asp:Button runat="server" Text="Button" Style="display: none;" ID="button1" OnClick="button1_Click"></asp:Button>
            </ContentTemplate>
        </asp:UpdatePanel>

        <div class="am-g">
            <ul class="am-avg-sm-5 style1">
                <li>
                    <a href="dpaevent3.aspx?did=1">
                        <div style="position: relative;">
                            <img id="_1" src="../images/ftp/dpa3/dpa01.gif" style="width: 82%; margin: 0px 15px" />
                            <div id="d1">
                            </div>
                        </div>

                    </a>
                </li>
                <li>
                    <a href="dpaevent3.aspx?did=2">
                        <div style="position: relative;">
                            <img id="_2" src="../images/ftp/dpa3/dpa02.png" style="width: 82%; margin: 0px 15px" />
                            <div id="d2">
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="dpaevent3.aspx?did=3">
                        <div style="position: relative;">
                            <img id="_3" src="../images/ftp/dpa3/dpa03.png" style="width: 82%; margin: 0px 15px" />
                            <div id="d3">
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="dpaevent3.aspx?did=4">
                        <div style="position: relative;">
                            <img id="_4" src="../images/ftp/dpa3/dpa04.png" style="width: 82%; margin: 0px 15px" />
                            <div id="d4">
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="dpaevent3.aspx?did=5">
                        <div style="position: relative;">
                            <img id="_5" src="../images/ftp/dpa3/dpa05.png" style="width: 82%; margin: 0px 15px" />
                            <div id="d5">
                            </div>
                        </div>
                    </a>
                </li>
            </ul>
        </div>

        <div class="am-g">
            <ul class="am-avg-sm-5 am-gallery-bordered product" style="padding: 2px">
                <asp:Repeater ID="rp_product_list" runat="server">
                    <ItemTemplate>
                        <li>
                            <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                <div class="p-style">
                                    <div class="p-style-pic">
                                        <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                            class="lazyload am-img-responsive" />
                                        <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                    </div>
                                    <div class="p-style-text">

                                        <h4>
                                            <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                        <span class="p-style-line"></span>
                                        <div class="am-cf price-discount">
                                            <h5 class="am-fl">
                                                <p>
                                                    RM 
                                                <asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal>
                                                </p>
                                            </h5>
                                            <%# WPFactory.DeskLikeDisPriceStr(Eval("WPA06").ToString(),Eval("WPA10").ToString()) %>
                                        </div>

                                    </div>
                                </div>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
            <ul class="am-pagination am-pagination-right">
                <asp:Literal ID="lit_page" runat="server"></asp:Literal>
            </ul>
        </div>
    </div>
    <script>
        function RedeemCoupon() {
            var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
            if (u != null)
                $("#<%= button1.ClientID %>").click();
            else
                doLogin('dpaevent3.aspx');
        }

        function SelectedImg(id){
            if(id==1){
                $('#_'+id).attr('src','../images/ftp/dpa3/dpa_0'+id+'.gif') ;
                console.log(id);
            }else{
                $('#_'+id).attr('src','../images/ftp/dpa3/dpa_0'+id+'.png')   ;   };          
        }      
        function SetSelClass(id) {
            $("#d" + id).addClass('select');
        }
    </script>

</asp:Content>

