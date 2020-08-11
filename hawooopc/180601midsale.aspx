<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180601midsale.aspx.cs" Inherits="_180601midsale" MasterPageFile="~/user/user.master" %>

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
            width: 900px;
            background-color: #a273df;
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
            top: 20%;
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
    </style>
    <script>
        function check() {
            var bool = '<%=Session["Login"] %>';
            if (bool == 'true') {
                $.ajax({
                    type: 'post',
                    url: '180601midsale.aspx/CheckUser',
                    data: '{}',
                    datatype: "json",
                    contentType: "application/json; charset=utf-8",
                    success: function (response) {
                        alert2url(response.d, "https://www.hawooo.com/user/180601midsale.aspx");
                    },
                    error:
                    function (response) {
                        alert2url("Oh No,系統好像出現了問題,若多次無法使用請麻煩與客服聯繫。", "https://www.hawooo.com/user/180601midsale.aspx");
                    }
                })
            }
            else {
                doLogin('180601midsale.aspx')
            }
        }
    </script>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--神奇圖層區開始-->
    <div style="width: 100%; position: relative; width: 999px; z-index: 1; margin: 0 auto">
        <img id="gotop" src="https://www.hawooo.com/images/ftp/20180601/edm_01.png" alt="年中慶part2" style="width: 100%">
        <div style="display: inline; position: absolute; z-index: 2; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">
            <img src="https://www.hawooo.com/images/ftp/20180601/001.png" alt="150滿額贈" style="position: absolute; top: 14%; margin: auto; width: 44%; left: 80%;" />
            <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180601/002.png" alt="399滿額贈" style="position: absolute; top: 14%; margin: auto; width: 36%; left: 115%;" onclick="check();" />
        </div>
    </div>

    <div style="width: 100%; position: relative; width: 999px; z-index: 1; margin: 0 auto">
        <a id="gosale0" href="https://www.hawooo.com/user/search.aspx?stxt=Pixy" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180601/edm_02.png" alt="pixy" style="width: 333px; float: left;"></a>
        <a href="https://www.hawooo.com/user/productdetail.aspx?id=14259" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180601/edm_03.png" alt="醇養妍" style="width: 333px; float: left;"></a>
        <a href="https://www.hawooo.com/user/productdetail.aspx?id=14490" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180601/edm_04.png" alt="running goods" style="width: 333px; float: left;"></a>


        <div style="display: inline; position: absolute; z-index: 2; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">

            <a href="https://www.hawooo.com/user/search.aspx?stxt=Pixy" target="_blank">
                <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180601/a.png" alt="美型包款報到" style="position: absolute; top: 150px; margin: auto; width: 25%; left: 30%;" />
            </a>
            <a href="https://www.hawooo.com/user/productdetail.aspx?id=14259" target="_blank">
                <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180601/b.png" alt="首批補貨入倉" style="position: absolute; top: 120px; margin: auto; width: 25%; left: 080%;" />
            </a>
            <a href="https://www.hawooo.com/user/brands.aspx?bid=167" target="_blank">
                <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180601/c.png" alt="演藝圈最多推薦" style="position: absolute; top: 55px; margin: auto; width: 25%; left: 105%;" />
            </a>
        </div>

    </div>
    <!--hot videos start-->
    <div style="width: 100%; position: relative; width: 999px; z-index: 1; margin: 0 auto">
        <a href="https://www.hawooo.com/user/productdetail.aspx?id=14433" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180601/edm_05.png" alt="谷阿莫鳳梨酥禮盒" style="width: 333px; float: left;"></a>
        <a href="https://www.hawooo.com/user/productdetail.aspx?id=14609" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180601/edm_06.png" alt="qmomo" style="width: 333px; float: left;"></a>
        <a href="https://www.hawooo.com/user/productdetail.aspx?id=13148" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180601/edm_07.png" alt="Q.T.COAT" style="width: 333px; float: left;"></a>

        <div style="display: inline; position: absolute; z-index: 2; width: 60%; top: 630px; left: 40px;">
            <iframe width="265" src="https://www.youtube.com/embed/YTsCJ1_scg4" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>


        <div style="display: inline; position: absolute; z-index: 2; width: 60%; top: 630px; left: 370px;">
            <iframe width="265" src="https://www.youtube.com/embed/KYt7im58FK4" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>

        <div style="display: inline; position: absolute; z-index: 2; width: 60%; top: 630px; left: 695px;">
            <iframe width="265" src="https://www.youtube.com/embed/T5TM__NJ1Gs" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>

    </div>
    <!--神奇圖層區掰掰-->

    <!--第一塊-->
    <div style="width: 999px; margin: 0 auto; background-color: #FFD44F;">
        <img id="gosale1" src="https://www.hawooo.com/images/ftp/20180601/edm_08.png" alt="Get 1 free" style="width: 100%; float: left;">
        <div class="am-cf sale1">
            <div id="div1" style="padding: 0 0px; float: left; width: 100%; z-index: 3;">
                <ul class="am-avg-sm-4">
                    <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl hvr-float" style="width: 23%; background: white; padding: 2%; margin: 1% 1%;">
                                <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' style="width: 100%;" class="lazyload am-img-responsive" />
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

    <!--第二塊-->
    <div style="width: 1000px; margin: 0 auto; background-color: #FFD44F;">
        <img id="gosale2" src="https://www.hawooo.com/images/ftp/20180601/edm_10.png" alt="save up to 300" style="width: 100%;">
        <div class="am-cf sale2">
            <div id="div2" style="padding: 0 0px; float: left; width: 100%; z-index: 3;">
                <ul class="am-avg-sm-4">
                    <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl hvr-float" style="width: 23%; background: white; padding: 2%; margin: 1% 1%;">
                                <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' style="width: 100%;" class="lazyload am-img-responsive" />
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


    <!--第3塊-->
    <div style="width: 1000px; margin: 0 auto; background-color: #FFD44F;">
        <img id="gosale3" src="https://www.hawooo.com/images/ftp/20180601/edm_12.png" alt="save up to 50%" style="width: 100%;">
        <div class="am-cf sale1">
            <div id="div3" style="padding: 0 0px; float: left; width: 100%; z-index: 3;">
                <ul class="am-avg-sm-4">
                    <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl hvr-float" style="width: 23%; background: white; padding: 2%; margin: 1% 1%;">
                                <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' style="width: 100%;" class="lazyload am-img-responsive" />
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

    <!--更多品牌影片-->

    <div style="width: 100%; position: relative; width: 999px; z-index: 1; margin: 0 auto">

        <a href="https://www.hawooo.com/user/brands.aspx?bid=184" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180601/edm_14.png" alt="妍霓絲" style="width: 333px; float: left;"></a>

        <a href="https://www.hawooo.com/user/search.aspx?stxt=FreshO2" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180601/edm_15.png" alt="Fresh O2" style="width: 333px; float: left;"></a>

        <a href="https://www.hawooo.com/user/brands.aspx?bid=186" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180601/edm_16.png" alt="BC" style="width: 333px; float: left;"></a>


        <div style="display: inline; position: absolute; z-index: 2; width: 60%; top: 78px; left: 40px;">
            <iframe width="265" src="https://www.youtube.com/embed/WV8XbdD6N_8" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>


        <div style="display: inline; position: absolute; z-index: 2; width: 60%; top: 78px; left: 370px;">
            <iframe width="265" src="https://www.youtube.com/embed/nS7gIFKNKuE" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>

        <div style="display: inline; position: absolute; z-index: 2; width: 60%; top: 78px; left: 695px;">
            <iframe width="265" src="https://www.youtube.com/embed/tq571JXCoZ4" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>
    </div>

    <div style="width: 100%; position: relative; width: 999px; z-index: 1; margin: 0 auto">

        <a href="https://www.hawooo.com/user/search.aspx?stxt=%E6%84%9B%E5%BA%B7" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180601/edm_17.png" alt="愛康" style="width: 333px; float: left;"></a>

        <a href="https://www.hawooo.com/user/brands.aspx?bid=212" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180601/edm_18.png" alt="台酒" style="width: 333px; float: left;"></a>

        <a href="https://www.hawooo.com/user/brands.aspx?bid=170" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180601/edm_19.png" alt="kgcheck" style="width: 333px; float: left;"></a>


        <div style="display: inline; position: absolute; z-index: 2; width: 60%; top: 275px; left: 40px;">
            <iframe width="265" src="https://www.youtube.com/embed/cZZBMjGjY5k" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>


        <div style="display: inline; position: absolute; z-index: 2; width: 60%; top: 275px; left: 370px;">
            <iframe width="265" src="https://www.youtube.com/embed/F6zI28geVqA" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>

        <div style="display: inline; position: absolute; z-index: 2; width: 60%; top: 275px; left: 695px;">
            <iframe width="265" src="https://www.youtube.com/embed/FZiKRn7O2io" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>
    </div>
    <!--活動辦法等ivy,footer開始-->

    <div style="width: 1000px; margin: 0 auto; z-index: 10; position: relative">
        <a href="http://www.hawooo.com/user/market.aspx?cid=16">
            <img src="https://www.hawooo.com/images/ftp/20180601/PC_01.png" alt="彩妝" style="width: 333px; float: left;"></a>

        <a href="http://www.hawooo.com/user/market.aspx?cid=43">
            <img src="https://www.hawooo.com/images/ftp/20180601/PC_02.png" alt="保健" style="width: 334px; float: left;"></a>

        <a href="http://www.hawooo.com/user/market.aspx?cid=42">
            <img src="https://www.hawooo.com/images/ftp/20180601/PC_03.png" alt="美體" style="width: 333px; float: left;"></a>



        <a href="http://www.hawooo.com/user/market.aspx?cid=44">
            <img src="https://www.hawooo.com/images/ftp/20180601/PC_04.png" alt="服裝" style="width: 333px; float: left;"></a>

        <a href="http://www.hawooo.com/user/market.aspx?cid=46">
            <img src="https://www.hawooo.com/images/ftp/20180601/PC_05.png" alt="包包" style="width: 334px; float: left;"></a>

        <a href="http://www.hawooo.com/user/market.aspx?cid=45">
            <img src="https://www.hawooo.com/images/ftp/20180601/PC_06.png" alt="鞋子" style="width: 333px; float: left;"></a>



        <a href="http://www.hawooo.com/user/market.aspx?cid=47">
            <img src="https://www.hawooo.com/images/ftp/20180601/PC_07.png" alt="美食" style="width: 333px; float: left;"></a>

        <a href="http://www.hawooo.com/user/market.aspx?cid=48">
            <img src="https://www.hawooo.com/images/ftp/20180601/PC_08.png" alt="生活" style="width: 334px; float: left;"></a>

        <a href="http://www.hawooo.com/user/market.aspx?cid=49">
            <img src="https://www.hawooo.com/images/ftp/20180601/PC_09.png" alt="媽咪" style="width: 333px; float: left;"></a>


    </div>

    <div style="width: 100%; position: relative; width: 999px; margin: 0 auto">

        <table width="999" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="8%" bgcolor="#000000"></td>

                    <td width="84%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 13px; text-transform: uppercase; color: #f8d1dd; padding: 20px 0px; line-height: 20px">MID TERM ROUND 2<br>
                        <span style="color: white;">• 會員需於6.1(FRI.)-6.17(SUN.)內完成訂購與付款即有機會獲得以下額外好康，先搶先贏，送完不補喔！
                        <br>
                            •    	Extra Gift! TTM浸潤補水黑面膜（限量1000份）
活動期間單筆訂單結帳金額滿150，免登記即可獲得TTM浸潤補水黑面膜，只有限量1000份，贈品發送完畢將不另行通知也不會提供其他贈品喔。<br />
                            • 	Extra Bonus! 購物金20 （限量300份）
活動期間單筆訂單結帳金額滿RM399，請記得回到原活動頁完成登記即可獲得購物金RM 20，只有限量300份，Hawooo.com將於7.2(Mon.)統一歸戶，取消/修改/未符合資格者恕不另行通知。
                                           <br />
                            • 部分商品不參與滿額贈活動。   
                       
                        </span>

                        <br>
                        <br>
                        其他：<span style="color: white;"><br>
                            • 參加本活動者即同意受本活動辦法及注意事項之規範，如有違反本活動辦法及注意事項者，本公司得取消其參加或兌換資格，並對於任何破壞本活動之⾏為保留法律追訴權。其他明顯違反活動公平性之⽅式，意圖混淆或影響活動結果者，⼀經本公司發現或經第三⼈檢舉經查證屬實，本公司有權⽴即取消其得獎資格，除追回獎品外，並對於任何破壞本活動之⾏為保留法律追訴權。<br />
                            • 本公司保留活動與贈品變更以及擁有修改及取消此活動的權利，無需事前通知，同時有對此活動之所有事宜有最終解釋與裁決權。

                        </span>
                    </td>

                    <td width="8%" bgcolor="#000000"></td>

                </tr>
            </tbody>
        </table>
        <img class="twoyearbottom" src="https://www.hawooo.com/images/ftp/20180312/footer.png" alt="hawooo.com" style="width: 100%;">
    </div>


    <!-- 一個看不見的div 高度0-->
    <div class="invisible" style="z-index: 50;">
        <!-- box是固定的nav-->
        <div class="box">
            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180601/sidebar_01.png" style="width: 150px; margin-bottom: -1px" alt="menu"></a>
            <a href="javascript:void(0)" onclick="GoID('gosale0')">
                <img src="https://www.hawooo.com/images/ftp/20180601/sidebar_02.png" style="width: 150px; margin-bottom: -1px" alt="名人推薦"></a>
            <a href="javascript:void(0)" onclick="GoID('gosale1')">
                <img src="https://www.hawooo.com/images/ftp/20180601/sidebar_04.png" style="width: 150px; margin-bottom: -1px" alt="送一"></a>
            <a href="javascript:void(0)" onclick="GoID('gosale2')">
                <img src="https://www.hawooo.com/images/ftp/20180601/sidebar_05.png" style="width: 150px; margin-bottom: -1px" alt="省300"></a>
            <a href="javascript:void(0)" onclick="GoID('gosale3')">
                <img src="https://www.hawooo.com/images/ftp/20180601/sidebar_06.png" style="width: 150px; margin-bottom: -1px" alt="省50%"></a>
            <a href="javascript:void(0)" onclick="GoID('gotop')">
                <img src="https://www.hawooo.com/images/ftp/20180601/sidebar_08.png" style="width: 150px; margin-bottom: -1px" alt="go top"></a>
        </div>
    </div>

    <script src="assets/js/jquery.url.js"></script>
    <script type="text/javascript">

        $(function () {
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
        }

        function twoYearsSideHide(e) {
            var sidebottom = $(".invisible").offset().top - 100;
            var yearbodybot = $(".twoyearbottom").offset().top + $(".twoyearbottom").height();
            if (sidebottom > yearbodybot) {
                $(".box").fadeOut();
            } else {
                $(".box").fadeIn();
            }
        }
        $(document).ready(function () {
            $(window).scroll(function () {
                twoYearsSideHide();
            })
        })
    </script>
</asp:Content>
