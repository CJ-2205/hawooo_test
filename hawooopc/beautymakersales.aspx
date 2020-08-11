<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="beautymakersales.aspx.cs" Inherits="user_beautymakersales" %>

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
            width: 980px;
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

        .select1 {
            position: absolute;
            background-color: rgba(0,0,0,0.15);
            width: 333px;
            height: 104px;
            z-index: 2;
        }

        .select2 {
            position: absolute;
            background-color: rgba(0,0,0,0.15);
            width: 333px;
            height: 104px;
            z-index: 2;
            right: 33.3%;
        }

        .select3 {
            position: absolute;
            background-color: rgba(0,0,0,0.15);
            width: 333px;
            height: 104px;
            z-index: 2;
            right: 0;
        }
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <!--神奇圖層區開始-->
    <div style="width: 100%; position: relative; width: 999px; z-index: 1; margin: 0 auto">

        <a href="#">
            <img id="gotop" src="https://www.hawooo.com/images/ftp/20180709/Bedm_01.png" alt="點我領折扣券" style="width: 100%"></a>
    <%--    <a href="beautymakersales.aspx?did=1">
            <img src="https://www.hawooo.com/images/ftp/20180709/edm_02.png" alt="寵愛媽咪" style="width: 333px; float: left;">
        </a>
        <a href="beautymakersales.aspx?did=2">
            <img src="https://www.hawooo.com/images/ftp/20180709/edm_03.png" alt="寵愛媽咪" style="width: 333px; float: left;">
        </a>
        <a href="beautymakersales.aspx?did=3">
            <img src="https://www.hawooo.com/images/ftp/20180709/edm_04.png" alt="寵愛媽咪" style="width: 333px; float: left;">
        </a>

        <div id="blockPl"></div>--%>
        <!--
        <div class="select2"></div>
		<div class="select3"></div>	
        -->

    </div>

    <!--神奇圖層區掰掰-->

    <!--第一塊-->

    <div style="width: 1000px; margin: 0 auto; background-color: black;">
        <div class="am-g sale1">
            <div id="div2" style="padding: 0 0px; float: left; width: 100%;">
                <ul class="am-avg-sm-4 " style="padding: 2px">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <li class="am-fl hvr-float" style="width: 23%; background-color: black; padding: 2px; margin: 1% 1%;">
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

    <script>
        function blockEvent(i) {
            var v = "";

            switch (i) {
                case 1:
                    {
                        v = "select1";
                        break;
                    }
                case 2:
                    {
                        v = "select2";
                        break;
                    }
                case 3:
                    {
                        v = "select3";
                        break;
                    }

            }
            if (v != "")
                $("#blockPl").attr("class", v);
        };
    </script>


</asp:Content>

