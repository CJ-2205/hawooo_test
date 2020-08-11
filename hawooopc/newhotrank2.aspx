<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newhotrank2.aspx.cs" Inherits="_newhotrank" MasterPageFile="~/user/user.master" %>

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
            background-color: #ffd4d5;
            padding: 10px;
            height: auto;
            list-style-type: none;
            margin: 0 auto;
        }


        .invisible {
            position: fixed;
            bottom: 5px;
            left: 0;
            right: 0;
            margin: 0 auto;
            width: 1080px;
            height: 2px;
            z-index: 3;
        }

        .box {
            position: fixed;
            top: 15%;
            right: 6%;
            width: 100px;
            height: 1530px;
        }

        /*滑過去變小一點*/
        .go_bt {
            -webkit-transition: all 0.3s ease;
            -moz-transition: all 0.3s ease;
            -ms-transition: all 0.3s ease;
            -o-transition: all 0.3s ease;
            transition: all 0.3s ease;
        }

            .go_bt:hover {
                -webkit-transform: scale(0.95);
                -moz-transform: scale(0.95);
                -ms-transform: scale(0.95);
                -o-transform: scale(0.95);
                transform: scale(0.95);
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


        .btnn {
            position: absolute;
            top: 8%;
            margin: auto;
            width: 35%;
            left: 108%;
        }
    </style>


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--神奇圖層區開始-->
    <div style="width: 100%; position: relative; max-width: 1000px; z-index: 1; margin: 0 auto">
        <img id="gotop" src="https://www.hawooo.com/images/ftp/nhr-week2/edm_01.png" alt="新品排行" style="width: 100%">
        <asp:UpdatePanel ID="up_product_coupon" runat="server">
            <ContentTemplate>
                <div style="display: inline; position: absolute; z-index: 2; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">
                    <asp:ImageButton runat="server" ImageUrl="https://www.hawooo.com/images/ftp/20180514/new99.gif" CssClass="go_bt btnn" OnClick="CpnBtn_Click" />
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>

    </div>


    <!--神奇圖層區掰掰-->



    <!--第一塊-->
    <div style="width: 1000px; margin: 0 auto; background-color: #840a53;">
        <img id="gosale1" src="https://www.hawooo.com/images/ftp/nhr-week2/edm_02.png" alt="新品排行" style="width: 100%;">
        <div class="am-cf sale1">
            <div id="div1" style="padding: 0 0px; float: left; width: 100%; z-index: 3;">

                <ul class="am-avg-sm-5">
                    <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl hvr-float" style="width: 18%; background: white; padding: 1%; margin: 1% 1%;">
                                <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    <div id="<%#"imgdivHot"+ Container.ItemIndex  %>" style="display: inline; position: absolute; z-index: 2; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">
                                        <%--<img src="https://www.hawooo.com/images/ftp/nhr-week2/hot.gif" style="position: absolute; top: 0; margin: auto; width: 50%; left: 0;" />--%>
                                    </div>
                                    <h4 class="pname">
                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                    <p class="discountprice">
                                        RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deleteprice"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                                    </p>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
    </div>


    <div style="width: 100%; position: relative; width: 1000px; z-index: 5; margin: 0 auto">

        <img src="https://www.hawooo.com/images/ftp/nhr-week2/edm_04.png" alt="hawooo.com" style="width: 100%;">

        <a href="https://www.hawooo.com/user/helloday2.aspx?tid=gosale1" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/nhr-week2/edm_05.png" alt="hawooo.com" style="width: 333px; height: 281px; float: left;"></a>

        <a href="https://www.hawooo.com/user/helloday2.aspx?tid=gosale2" target="_blank">
            <img class="twoyearbottom" src="https://www.hawooo.com/images/ftp/nhr-week2/edm_06.png" alt="hawooo.com" style="width: 333px; height: 281px; float: left;"></a>

        <a href="https://www.hawooo.com/user/helloday2.aspx?tid=gosale3" target="_blank">
            <img class="twoyearbottom" src="https://www.hawooo.com/images/ftp/nhr-week2/edm_07.png" alt="hawooo.com" style="width: 334px; height: 281px; float: left;"></a>

    </div>

    <!--第二塊-->
    <div style="width: 1000px; margin: 0 auto; background-color: #840a53;">
        <img id="gosale2" src="https://www.hawooo.com/images/ftp/nhr-week2/edm_03.png" alt="更多新品" style="width: 100%;">
        <div class="am-cf sale1">
            <div id="div2" style="padding: 0 0px; float: left; width: 100%; z-index: 3;">

                <ul class="am-avg-sm-5">
                    <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl hvr-float" style="width: 18%; background: white; padding: 1%; margin: 1% 1%;">
                                <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    <h4 class="pname">
                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></h4>
                                    <p class="discountprice">
                                        RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr deleteprice"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString())).Replace("RM","")  %>'></asp:Literal></del>
                                    </p>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
    </div>


    <!--footer-->
    <!--下面帶活動說明-->

    <div style="width: 100%; position: relative; width: 1000px; z-index: 5; margin: 0 auto">
        <img class="twoyearbottom" src="https://www.hawooo.com/images/ftp/20180312/footer.png" alt="hawooo.com" style="width: 100%;">
    </div>

    <script src="assets/js/jquery.url.js"></script>
    <script src="assets/js/clipboard.min.js"></script>


    <script>
        //複製折扣卷fucntion
        var clipboard = new ClipboardJS('.btnn');

        clipboard.on('success', function (e) {
            console.info('Action:', e.action);
            console.info('Text:', e.text);
            alert("已複製，請記得在結帳時輸入喔～");
            e.clearSelection();
        });

        clipboard.on('error', function (e) {
            console.error('Action:', e.action);
            console.error('Trigger:', e.trigger);
        });

    </script>
    <script>
        for (var i = 1; i <= 10; i++) {
            var j = i - 1;
            $('#imgdivHot' + j).append('<img id=' + i + 'A src="https://www.hawooo.com/images/ftp/20180523/top' + i + '.gif" style="position: absolute; top: 0; margin: auto; width: 50%; left: 0;" />')
        }
    </script>
    <script type="text/javascript">
        $(function () {
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 160 }, 500);
        }
    </script>
</asp:Content>
