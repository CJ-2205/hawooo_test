<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="wordcupsales.aspx.cs" Inherits="user_wordcupsales" %>

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
            width: 810px;
            background-color: #1b1b1b;
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

        .btnnss {
            /*display: block;
            position: absolute;
            width: 250px;
            height: 50px;
            top: 380px;
            right: 65px;*/
            display: inline-block;
            position: absolute;
            width: 15%;
            height: 8%;
            right: 0px;
            left: 19%;
            cursor: pointer;
            top: 61%;
            z-index: 99999 !important;
        }
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--神奇圖層區開始-->
    <div style="width: 100%; position: relative; width: 900px; z-index: 1; margin: 0 auto">

        <div class="btnnn btnnss" data-clipboard-text="Worldcup20"></div>

        <img id="gotop2" src="https://www.hawooo.com/images/ftp/20180620/pro/edm_01.png" alt="年中慶part2" style="width: 100%">


        <div style="display: inline; position: absolute; z-index: 2; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">

            <a href="https://www.hawooo.com/user/WorldCupSpin.aspx" target="_blank">
                <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180620/32/btn_01.png" alt="399滿額贈" style="position: absolute; top: 78%; margin: auto; width: 75%; left: 8%;" />
            </a>

            <a href="https://www.hawooo.com/user/18worldcup.aspx" target="_blank">
                <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180620/pro/btn_03.png" alt="150滿額贈" style="position: absolute; top: 78%; margin: auto; width: 75%; left: 72%;" />
            </a>



        </div>

    </div>


    <!--第一塊-->

    <div style="width: 900px; margin: 0 auto; background-color: #000b04;">
        <img id="gosale1" src="https://www.hawooo.com/images/ftp/20180620/pro/edm_02.png" alt="熬夜看足球" style="width: 100%; float: left;">


        <div class="am-g sale1">
            <div id="div2" style="padding: 0 0px; float: left; width: 100%;">
                <ul class="am-avg-sm-4 " style="padding: 2px">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <li class="am-fl hvr-float" style="width: 23%; background: white; padding:2px ; margin: 1% 1%;">
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

           <a href="https://www.hawooo.com/user/market.aspx?cid=48" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180620/pro/06.png" alt="生活看更多" style="width: 300px; float: left;"></a>

        <a href="https://www.hawooo.com/user/market.aspx?cid=43" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180620/pro/07.png" alt="保健看更多" style="width: 300px; float: left;"></a>

        <a href="https://www.hawooo.com/user/market.aspx?cid=47" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180620/pro/08.png" alt="美食看更多" style="width: 300px; float: left;"></a>




    </div>

    <!--第二塊-->
    <div style="width: 900px; margin: 0 auto; background-color: #000b04;">
        <img id="gosale2" src="https://www.hawooo.com/images/ftp/20180620/pro/edm_04.png" alt="自然系美女" style="width: 100%; float: left;">


       <div class="am-g sale1">
            <div id="div3" style="padding: 0 0px; float: left; width: 100%;">
                <ul class="am-avg-sm-4 " style="padding: 2px">
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <li class="am-fl hvr-float" style="width: 23%; background: white; padding: 2px; margin: 1% 1%;">
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


        
        <a href="https://www.hawooo.com/user/market.aspx?cid=42" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180620/pro/01.png" alt="保養看更多" style="width: 50%; float: left;"></a>

        <a href="https://www.hawooo.com/user/market.aspx?cid=16" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180620/pro/02.png" alt="美妝看更多" style="width: 50%; float: left;"></a>


     

    </div>



    <!--第3塊-->

    <div style="width: 900px; margin: 0 auto; background-color: #000b04;">
        <img id="gosale3" src="https://www.hawooo.com/images/ftp/20180620/pro/edm_06.png" alt="運動風混搭" style="width: 100%; float: left;">


        <div class="am-g sale1">
            <div id="div4" style="padding: 0 0px; float: left; width: 100%;">
                <ul class="am-avg-sm-4 " style="padding: 2px">
                    <asp:Repeater ID="Repeater3" runat="server">
                        <ItemTemplate>
                            <li class="am-fl hvr-float" style="width: 23%; background: white; padding: 2px; margin: 1% 1%;">
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
    <div style="width: 900px; margin: 0 auto; position: relative; z-index: 10;">



           <a href="https://www.hawooo.com/user/market.aspx?cid=44" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180620/pro/03.png" alt="內衣看更多" style="width: 300px; float: left;"></a>

        <a href="https://www.hawooo.com/user/market.aspx?cid=46" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180620/pro/04.png" alt="包包看更多" style="width: 300px; float: left;"></a>

        <a href="https://www.hawooo.com/user/market.aspx?cid=45" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180620/pro/05.png" alt="鞋子看更多" style="width: 300px; float: left;"></a>


     
    </div>


    <!--活動辦法等ivy,footer開始-->


    <div style="width: 100%; position: relative; width: 900px; margin: 0 auto">

<%--        <table width="900" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="8%" bgcolor="#000000"></td>

                    <td width="84%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 13px; font-weight: bold; text-transform: uppercase; color: #f8d1dd; padding: 20px 0px; line-height: 18px">什麼是HA幣？HA幣是什麼？<br>
                        <span style="color: white;">HA幣是HAWOOO專屬的貨幣喲，<span class="highlight">100 HA幣可以直接抵扣RM 1元</span>，沒有消費門檻限制喔，可以累積多次以後一起使用，不過要記得在領取<span class="highlight">三個月內使用完畢</span>，不然好可惜唷。</span>

                        <br>
                        <br>
                        好想要～我該怎麼得到呢<span style="color: white;"><br>
                            為了回饋HAWOOO的朋友們，讓您<span class="highlight">花多少馬幣就賺多少HA幣</span>，例如您這筆訂單買了RM300，您在隔月1號就能直接獲得300 HA幣，以此類推。當然新朋友我們也沒忘記給你見面禮，每位消費者都能在<span class="highlight">首次加入會員時免費獲得1500 HA幣</span>唷。</span>

                        <br>
                        <br>
                        偷偷跟我說HA幣使用祕技吧！<span style="color: white;"><br>
                            噓～小秘密喲！HA幣還能用來<span class="highlight">抵一趟國際運費</span>喔，超划算！還可以拿來測試你的好運氣，每天上線登入後，您都可以來<span class="highlight">[HA幣天天轉轉樂]</span>直接玩遊戲，人人都有獎，<span class="highlight">每次只要100 HA幣，就有機會賺RM100</span>，現在就開始吧！<br>
                            1• 每次玩都只需要100 HA幣，一天限玩3次，但是天天都歡迎您回來看看我們喔。<br>
                            2• 獎項系統隨機抽出，人人都有機會中大獎。最大獎有機會獲得RM 100購物金，直接等同現金抵扣訂單金額。<br>
                            3• 若您獲得折扣券(COUPON)，要記得在<span class="highlight">三天內使用完畢</span> (E.G. 16/5拿到，18/5前要用完)。<br>
                            4• 天有不測風雲，如果有天災意外或是大停電，HAWOOO.COM 保有活動最後解釋權，謝謝大家體諒我們喔。<br>
                        </span>
                    </td>

                    <td width="8%" bgcolor="#000000"></td>

                </tr>
            </tbody>
        </table>--%>
        <img class="twoyearbottom" src="https://www.hawooo.com/images/ftp/20180312/footer.png" alt="hawooo.com" style="width: 100%;">
    </div>



    <!-- 一個看不見的div 高度0-->
    <div class="invisible" style="z-index: 50;">
        <!-- box是固定的nav-->
        <div class="box">
            <a href="javascript:void(0)" onclick="GoID('gotop2')">
                <img src="https://www.hawooo.com/images/ftp/20180620/pro/sidebar_01.png" style="width: 150px; margin-bottom: -1px" alt="menu"></a>


            <a href="javascript:void(0)" onclick="GoID('gosale1')">
                <img src="https://www.hawooo.com/images/ftp/20180620/pro/sidebar_02.png" style="width: 150px; margin-bottom: -1px" alt="熬夜看足球"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale2')">
                <img src="https://www.hawooo.com/images/ftp/20180620/pro/sidebar_03.png" style="width: 150px; margin-bottom: -1px" alt="自然系美女"></a>

            <a href="javascript:void(0)" onclick="GoID('gosale3')">
                <img src="https://www.hawooo.com/images/ftp/20180620/pro/sidebar_04.png" style="width: 150px; margin-bottom: -1px" alt="運動風混搭"></a>

            <a href="https://www.hawooo.com/user/18worldcup.aspx" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180620/pro/sidebar_05.png" style="width: 150px; margin-bottom: -1px" alt="猜8強拿獎金"></a>

            <a href="https://www.hawooo.com/user/WorldCupSpin.aspx" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180620/pro/sidebar_06.png" style="width: 150px; margin-bottom: -1px" alt="HA幣足球賽"></a>


            <a href="javascript:void(0)" onclick="GoID('gotop2')">
                <img src="https://www.hawooo.com/images/ftp/20180620/pro/sidebar_07.png" style="width: 150px; margin-bottom: -1px" alt="go top"></a>


        </div>
    </div>


    <script src="js/jquery.url.js"></script>

    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/clipboard.min.js"></script>

    <script>

        $(function () {

            $("#gotop").remove();

            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);

            };


            //$(window).scroll(function () {
            //    $("#gotop").hide()
            //});         //藏gotop的icon
        });

        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
        };


        var clipboard = new ClipboardJS('.btnnn');

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


</asp:Content>

