<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="labeausales.aspx.cs" Inherits="user_labeausales" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style type="text/css">
        body {
            position: relative;
            height: auto;
        }


        .pname {
            margin: 10px 5px;
            height: 40px;
            overflow: hidden;
            font-size: 14px;
            line-height: 20px;
            color: #535252;
        }

        .discountprice {
            margin: 5px 5px 0 5px;
            font-size: 10px;
            color: red;
        }

        .deleteprice {
            line-height: 37px;
            color: dimgrey;
            font-size: small;
            margin-bottom: -20px;
        }

        .sale1 {
            width: 950px;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }

        .sale2 {
            width: 900px;
            background-color: #d979cd;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }




        /*商品跳起來吧*/
        .hvr-float {
            display: inline-block;
            vertical-align: middle;
            -webkit-transform: perspective(1px) translateZ(0);
            transform: perspective(1px) translateZ(0);
            box-shadow: 0 0 1px transparent;
            -webkit-transition-duration: .3s;
            transition-duration: .3s;
            -webkit-transition-property: transform;
            transition-property: transform;
            -webkit-transition-timing-function: ease-out;
            transition-timing-function: ease-out;
        }

            .hvr-float:active, .hvr-float:focus, .hvr-float:hover {
                -webkit-transform: translateY(-8px);
                transform: translateY(-8px);
            }
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div style="width: 100%; position: relative; width: 1000px; z-index: 1; margin: 0 auto">

        <img  src="https://www.hawooo.com/images/ftp/20180710/edm_01.png" alt="年中慶part2" style="width: 100%">
    </div>

    <!--第一塊-->

    <div style="width: 1000px; margin: 0 auto; background-color: #79cfff;">
        <div class="am-g sale1">
            <div id="div2" style="padding: 0 0px; float: left; width: 100%;">
                <ul class="am-avg-sm-4 " style="padding: 2px">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <li class="am-fl hvr-float" style="width: 23%; background: #79cfff; padding: 2px; margin: 1% 1%;">
                                <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                    <div class="p-style">
                                        <div class="p-style-pic">
                                            <div id="<%#"imgdivHot"+ Container.ItemIndex  %>">
                                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                    class="lazyload am-img-responsive" />
                                                <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                            </div>
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
                <%--    <ul class="am-pagination am-pagination-right">
                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                </ul>--%>
            </div>
        </div>

       

    </div>





    <!--活動辦法等ivy,footer開始-->


    <div style="width: 100%; position: relative; width: 1000px; margin: 0 auto">

  
        <img class="twoyearbottom" src="https://www.hawooo.com/images/ftp/20180312/footer.png" alt="hawooo.com" style="width: 100%;">
    </div>




    <script src="js/jquery.url.js"></script>

    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/clipboard.min.js"></script>

      

</asp:Content>

