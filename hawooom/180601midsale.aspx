<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180601midsale.aspx.cs" Inherits="_180601midsale" MasterPageFile="~/mobile/mobile.master" %>

<%@ Import Namespace="hawooo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        .pnamem {
            margin: 5px 5px;
            height: 40px;
            overflow: hidden;
            font-size: medium;
            line-height: 20px;
            color: #535252;
        }

        .deletepricem {
            line-height: 28px;
            color: dimgrey;
            font-size: smaller;
            margin-bottom: -20px;
        }

        .discountpricem {
            margin: 5px 5px 0 5px;
            font-size: small;
            color: red;
        }

        .box {
            width: calc(50% - 10px);
            background: white;
            padding: 1%;
            margin: 5px;
            height: calc(100% - 20px);
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
                        debugger;
                        alert2url(response.d, "https://www.hawooo.com/mobile/180601midsale.aspx");
                    },
                    error:
                    function (response) {
                        debugger;
                        alert2url("Oh No,系統好像出現了問題,若多次無法使用請麻煩與客服聯繫。", "https://www.hawooo.com/mobile/180601midsale.aspx");
                    }
                })
            }
            else {
                window.location = "login.aspx?rurl=180601midsale.aspx";
            }
        }
    </script>


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        $(function () {
            hiddenFooterMenu();     //藏menu bar
            $(window).scroll(function () {
                $("#gotop").hide()
            });         //藏gotop的icon
        })
    </script>

    <!--5大類別小選單開始-->
    <div class="am-u-sm-centered" style="position: fixed; bottom: 0; left: 50%; max-width: 650px; text-align: center; transform: translate(-50%); z-index: 10000; max-height: 122px; padding: 0;">
        <ul class="am-avg-sm-5 am-cf" style="list-style-type: none; padding: 0; margin: 0;">
            <li class="am-fl">

                <a href="javascript:void(0)" onclick="sideGoTop()">
                    <img src="https://www.hawooo.com/images/ftp/20180601/sidebarM_01.png" style="width: 100%; max-height: 90px;" alt="top"></a></li>

            <li class="am-fl">
                <img src="https://www.hawooo.com/images/ftp/20180601/sidebarM_02.png" style="width: 100%; max-height: 90px;" alt="名人推薦" onclick="GoID('gosale0')"></li>

            <li class="am-fl">
                <img src="https://www.hawooo.com/images/ftp/20180601/sidebarM_03.png" style="width: 100%; max-height: 90px;" alt="多一件" onclick="GoID('gosale1')"></li>

            <li class="am-fl">
                <img src="https://www.hawooo.com/images/ftp/20180601/sidebarM_04.png" style="width: 100%; max-height: 90px;" alt="save up" onclick="GoID('gosale2')"></li>

            <li class="am-fl">
                <img src="https://www.hawooo.com/images/ftp/20180601/sidebarM_05.png" style="width: 100%; max-height: 90px;" alt="save up" onclick="GoID('gosale3')"></li>
        </ul>
    </div>
    <!--5大類別小選單再見-->


    <!--edm開始-->

    <!--神奇圖層區開始-->
    <div style="width: 100%; position: relative; max-width: 650px; z-index: 1; margin: 0 auto; margin-bottom: -1px;">
        <img src="https://www.hawooo.com/images/ftp/20180601/edmmall_01.png" style="width: 100%">
        <div style="display: inline; position: absolute; z-index: 2; width: 70%; top: 0; bottom: 0; left: 0; right: 0;">
            <img src="https://www.hawooo.com/images/ftp/20180601/003.png" alt="150滿額贈" style="position: absolute; top: 57%; margin: auto; width: 74%; left: 5%;" />
            <img src="https://www.hawooo.com/images/ftp/20180601/002.png" alt="399滿額贈" style="position: absolute; top: 40%; margin: auto; width: 52%; left: 80%;" onclick="check();" />
        </div>
    </div>


    <!--神奇圖層區掰掰-->


    <!--名人推薦-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: black;">
        <a id="gosale0" href="https://www.hawooo.com/mobile/search.aspx?stxt=pixy" target="_blank">
            <img alt="pixy" src="https://www.hawooo.com/images/ftp/20180601/edmm_02.png" style="float: left; display: block; width: 100%;" /></a>
        <a href="https://www.hawooo.com/mobile/product.aspx?id=14259" target="_blank">
            <img alt="醇養妍" src="https://www.hawooo.com/images/ftp/20180601/edmm_03.png" style="float: left; display: block; width: 100%;" /></a>
        <a href="https://www.hawooo.com/mobile/product.aspx?id=14490" target="_blank">
            <img alt="running goods 行李箱" src="https://www.hawooo.com/images/ftp/20180601/edmm_04.png" style="float: left; display: block; width: 100%;" /></a>
    </div>
    <!--名人推薦掰-->

    <!--hot videos開始-->
    <div style="width: 100%; position: relative; max-width: 650px; z-index: 1; margin: 0 auto; margin-bottom: -1px;">
        <a href="https://www.hawooo.com/mobile/product.aspx?id=14433" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180601/edmm_05.png" style="width: 100%" alt="谷阿莫鳳梨酥"></a>
        <div style="display: inline; position: absolute; z-index: 2; width: 50%; top: 30%; bottom: 0; left: 47%; right: 0;">
            <iframe height="90%" width="90%" src="https://www.youtube.com/embed/YTsCJ1_scg4" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>
    </div>

    <div style="width: 100%; position: relative; max-width: 650px; z-index: 1; margin: 0 auto; margin-bottom: -1px;">
        <a href="https://www.hawooo.com/mobile/product.aspx?id=14609" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180601/edmm_06.png" style="width: 100%" alt="qmomo"></a>
        <div style="display: inline; position: absolute; z-index: 2; width: 50%; top: 10%; bottom: 0; left: 47%; right: 0;">
            <iframe height="90%" width="90%" src="https://www.youtube.com/embed/KYt7im58FK4" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>
    </div>

    <div style="width: 100%; position: relative; max-width: 650px; z-index: 1; margin: 0 auto; margin-bottom: -1px;">
        <a href="https://www.hawooo.com/mobile/product.aspx?id=13148" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180601/edmm_07.png" style="width: 100%" alt="Q.T.COAT奇蹟美白瞬效面膜"></a>
        <div style="display: inline; position: absolute; z-index: 2; width: 50%; top: 10%; bottom: 0; left: 47%; right: 0;">
            <iframe height="90%" width="90%" src="https://www.youtube.com/embed/T5TM__NJ1Gs" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>
    </div>
    <!--hot videos掰掰-->
    <!--Sale1 start-->

    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #a272de">
        <img id="gosale1" alt="Get 1 free" src="https://www.hawooo.com/images/ftp/20180601/edmm_08.png" style="float: left; display: block; width: 100%;" />
        <div id="div1" style="position: relative; max-width: 600px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <div class="product_item_pic">
                                    <img src="../images/webimgs/<%# Eval("WP08_1").ToString() %>">
                                </div>
                                <div class="product_item_text">
                                    <div class="product_item_block am-cf">
                                        <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                    </div>
                                    <div class="product_item_block am-cf">

                                        <h4 class="am-fl">RM <%# PbClass.CashRate(Eval("WPA06").ToString() ,Application["mycashrate"].ToString())%></h4>

                                        <span class="product_item_dis"><%# decimal.Parse(Eval("WPA10").ToString()) > decimal.Parse(Eval("WPA06").ToString()) ? "省" + PbClass.CashRate((decimal.Parse(Eval("WPA10").ToString()) - decimal.Parse(Eval("WPA06").ToString())).ToString(),Application["mycashrate"].ToString()) : ""  %></span>
                                    </div>
                                    <div class="product_item_block am-cf">
                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>"><span class="product-items-tag"><%# Eval("WP30").ToString()  %></span></p>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>

    <!--Sale2 start-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #d979cd">
        <img id="gosale2" alt="save up to RM300" src="https://www.hawooo.com/images/ftp/20180601/edmm_10.png" style="float: left; display: block; width: 100%;" />

        <div id="div2" style="position: relative; max-width: 600px; margin: 0 auto;">

            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <div class="product_item_pic">
                                    <img src="../images/webimgs/<%# Eval("WP08_1").ToString() %>">
                                </div>
                                <div class="product_item_text">
                                    <div class="product_item_block am-cf">
                                        <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                    </div>
                                    <div class="product_item_block am-cf">

                                        <h4 class="am-fl">RM <%# PbClass.CashRate(Eval("WPA06").ToString() ,Application["mycashrate"].ToString())%></h4>

                                        <span class="product_item_dis"><%# decimal.Parse(Eval("WPA10").ToString()) > decimal.Parse(Eval("WPA06").ToString()) ? "省" + PbClass.CashRate((decimal.Parse(Eval("WPA10").ToString()) - decimal.Parse(Eval("WPA06").ToString())).ToString(),Application["mycashrate"].ToString()) : ""  %></span>
                                    </div>
                                    <div class="product_item_block am-cf">
                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>"><span class="product-items-tag"><%# Eval("WP30").ToString()  %></span></p>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>


        </div>

    </div>

    <!--Sale3 start-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #a272de">
        <img id="gosale3" alt="save up to 50%" src="https://www.hawooo.com/images/ftp/20180601/edmm_12.png" style="float: left; display: block; width: 100%;" />
        <div id="div3" style="position: relative; max-width: 600px; margin: 0 auto;">
            <ul style="height: 50%; list-style-type: none; margin: 0 4%; padding: 0;">
                <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                    <ItemTemplate>
                        <li class="am-fl box">
                            <a href="product.aspx?id=<%# Eval("WP01") %>">
                                <div class="product_item_pic">
                                    <img src="../images/webimgs/<%# Eval("WP08_1").ToString() %>">
                                </div>
                                <div class="product_item_text">
                                    <div class="product_item_block am-cf">
                                        <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                    </div>
                                    <div class="product_item_block am-cf">

                                        <h4 class="am-fl">RM <%# PbClass.CashRate(Eval("WPA06").ToString() ,Application["mycashrate"].ToString())%></h4>

                                        <span class="product_item_dis"><%# decimal.Parse(Eval("WPA10").ToString()) > decimal.Parse(Eval("WPA06").ToString()) ? "省" + PbClass.CashRate((decimal.Parse(Eval("WPA10").ToString()) - decimal.Parse(Eval("WPA06").ToString())).ToString(),Application["mycashrate"].ToString()) : ""  %></span>
                                    </div>
                                    <div class="product_item_block am-cf">
                                        <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                        <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>"><span class="product-items-tag"><%# Eval("WP30").ToString()  %></span></p>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>

    <!--更多hot videos-->
    <div style="width: 100%; position: relative; max-width: 650px; z-index: 1; margin: 0 auto; margin-bottom: -1px;">
        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=184" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180601/edmm_14.png" style="width: 100%" alt="妍霓絲"></a>
        <div style="display: inline; position: absolute; z-index: 2; width: 50%; top: 35%; bottom: 0; left: 47%; right: 0;">
            <iframe height="90%" width="90%" src="https://www.youtube.com/embed/WV8XbdD6N_8" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>
    </div>


    <div style="width: 100%; position: relative; max-width: 650px; z-index: 1; margin: 0 auto; margin-bottom: -1px;">
        <a href="https://www.hawooo.com/mobile/search.aspx?stxt=fresho2" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180601/edmm_15.png" style="width: 100%" alt="Fresh O2"></a>
        <div style="display: inline; position: absolute; z-index: 2; width: 50%; top: 10%; bottom: 0; left: 47%; right: 0;">
            <iframe height="90%" width="90%" src="https://www.youtube.com/embed/nS7gIFKNKuE" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>

    </div>

    <div style="width: 100%; position: relative; max-width: 650px; z-index: 1; margin: 0 auto; margin-bottom: -1px;">
        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=186" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180601/edmm_16.png" style="width: 100%" alt="BC"></a>
        <div style="display: inline; position: absolute; z-index: 2; width: 50%; top: 10%; bottom: 0; left: 47%; right: 0;">
            <iframe height="90%" width="90%" src="https://www.youtube.com/embed/tq571JXCoZ4" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>

    </div>

    <div style="width: 100%; position: relative; max-width: 650px; z-index: 1; margin: 0 auto; margin-bottom: -1px;">
        <a href="https://www.hawooo.com/mobile/search.aspx?stxt=%E6%84%9B%E5%BA%B7" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180601/edmm_17.png" style="width: 100%" alt="愛康"></a>
        <div style="display: inline; position: absolute; z-index: 2; width: 50%; top: 10%; bottom: 0; left: 47%; right: 0;">
            <iframe height="90%" width="90%" src="https://www.youtube.com/embed/cZZBMjGjY5k" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>
    </div>


    <div style="width: 100%; position: relative; max-width: 650px; z-index: 1; margin: 0 auto; margin-bottom: -1px;">
        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=212" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180601/edmm_18.png" style="width: 100%" alt="台酒"></a>
        <div style="display: inline; position: absolute; z-index: 2; width: 50%; top: 10%; bottom: 0; left: 47%; right: 0;">
            <iframe height="90%" width="90%" src="https://www.youtube.com/embed/F6zI28geVqA" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>
    </div>

    <div style="width: 100%; position: relative; max-width: 650px; z-index: 1; margin: 0 auto; margin-bottom: -1px;">
        <a href="https://www.hawooo.com/mobile/brand_1.aspx?bid=170" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180601/edmm_19.png" style="width: 100%" alt="KGcheck"></a>
        <div style="display: inline; position: absolute; z-index: 2; width: 50%; top: 10%; bottom: 0; left: 47%; right: 0;">
            <iframe height="90%" width="90%" src="https://www.youtube.com/embed/FZiKRn7O2io" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>
    </div>
    <!--hot videos掰掰-->
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">


        <a href="http://www.hawooo.com/mobile/shop.aspx?cid=16" target="_blank">
            <img alt="彩妝" src="https://www.hawooo.com/images/ftp/20180601/mb_01.png" style="float: left; display: block; width: 50%;" /></a>

        <a href="http://www.hawooo.com/mobile/shop.aspx?cid=43" target="_blank">
            <img alt="保健" src="https://www.hawooo.com/images/ftp/20180601/mb_02.png" style="float: left; display: block; width: 50%;" /></a>

        <a href="http://www.hawooo.com/mobile/shop.aspx?cid=42" target="_blank">
            <img alt="美體" src="https://www.hawooo.com/images/ftp/20180601/mb_03.png" style="float: left; display: block; width: 50%;" /></a>

        <a href="http://www.hawooo.com/mobile/shop.aspx?cid=44" target="_blank">
            <img alt="內衣" src="https://www.hawooo.com/images/ftp/20180601/mb_04.png" style="float: left; display: block; width: 50%;" /></a>

        <a href="http://www.hawooo.com/mobile/shop.aspx?cid=46" target="_blank">
            <img alt="包包" src="https://www.hawooo.com/images/ftp/20180601/mb_05.png" style="float: left; display: block; width: 50%;" /></a>

        <a href="http://www.hawooo.com/mobile/shop.aspx?cid=45" target="_blank">
            <img alt="鞋子" src="https://www.hawooo.com/images/ftp/20180601/mb_06.png" style="float: left; display: block; width: 50%;" /></a>

        <a href="http://www.hawooo.com/mobile/shop.aspx?cid=47" target="_blank">
            <img alt="美食" src="https://www.hawooo.com/images/ftp/20180601/mb_07.png" style="float: left; display: block; width: 50%;" /></a>

        <a href="http://www.hawooo.com/mobile/shop.aspx?cid=48" target="_blank">
            <img alt="生活" src="https://www.hawooo.com/images/ftp/20180601/mb_08.png" style="float: left; display: block; width: 50%;" /></a>


    </div>


    <!--公告開始喔-->

    <div style="max-width: 650px; margin: 0 auto;">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="5%" bgcolor="#000000"></td>

                    <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: small; text-transform: uppercase; color: #f8d1dd; padding: 20px 0px; line-height: normal;">MID TERM ROUND 2<br>
                        <span style="color: white;">• 會員需於6.1(FRI.)-6.17(SUN.)內完成訂購與付款即有機會獲得以下額外好康，先搶先贏，送完不補喔！<br>
                            •Extra Gift! TTM浸潤補水黑面膜（限量1000份）
活動期間單筆訂單結帳金額滿150，免登記即可獲得TTM浸潤補水黑面膜，只有限量1000份，贈品發送完畢將不另行通知也不會提供其他贈品喔。
                            <br>
                            •Extra Bonus! 購物金20 （限量300份）
活動期間單筆訂單結帳金額滿RM399，請記得回到原活動頁完成登記即可獲得購物金RM 20，只有限量300份，Hawooo.com將於7.2(Mon.)統一歸戶，取消/修改/未符合資格者恕不另行通知。
                            <br>
                            • 部分商品不參與滿額贈活動。   
                            <br />
                        </span>
                        <br>
                        <br>
                        其他<span style="color: white;"><br>
                            • 參加本活動者即同意受本活動辦法及注意事項之規範，如有違反本活動辦法及注意事項者，本公司得取消其參加或兌換資格，並對於任何破壞本活動之⾏為保留法律追訴權。其他明顯違反活動公平性之⽅式，意圖混淆或影響活動結果者，⼀經本公司發現或經第三⼈檢舉經查證屬實，本公司有權⽴即取消其得獎資格，除追回獎品外，並對於任何破壞本活動之⾏為保留法律追訴權。
                            <br>
                            • 本公司保留活動與贈品變更以及擁有修改及取消此活動的權利，無需事前通知，同時有對此活動之所有事宜有最終解釋與裁決權。</span> </td>
                    <td width="5%" bgcolor="#000000"></td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px;">
        <img alt="footer" src=" https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float: left; display: block; width: 100%;" />
    </div>

    <script src="assets/js/jquery.url.js"></script>
    <script src="assets/js/clipboard.min.js"></script>


    <script type="text/javascript">
        $(function () {
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 100 }, 500);
        }
    </script>


</asp:Content>
