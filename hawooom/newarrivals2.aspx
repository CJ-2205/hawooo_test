<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true"
    CodeFile="newarrivals2.aspx.cs" Inherits="mobile_newarrivals2" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .getSpend {
            display: inline-block;
            position: absolute;
            width: 50%;
            height: 28%;
            /* bottom: -10%; */
            right: 0px;
            left: 70%;
            cursor: pointer;
            top: 10%;
        }



        .style1 li {
            padding-top: 10px;
            border-right: 1px solid #ececec;
            border-bottom: 2px solid #ececec;
            width: 25%;
            margin: 0;
        }

            .style1 li:last-child {
                border-right: 0px;
                padding-right: 1px;
            }

            .style1 li span {
                font-size: 12px;
                margin: 0px auto; /* position: relative; */
                display: table;
                padding-bottom: 5px;
                font-weight: 700;
            }

            .style1 li a {
                cursor: pointer;
                color: #a3a3a3;
            }

            .style1 li img {
                width: 90%;
                display: block;
                margin: 0px auto;
            }

        .select {
            background-color: rgba(243,243,243,.85);
            border-bottom: 2px solid #EE5984 !important;
        }

        .page-main {
            margin-top: 85px;
        }

        .ul-img li {
            display: inline;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--    <div class="am-container" style="background-color: #ffffff;">--%>
    <div style="background-color: #ffffff;">

        <div class="am-g" style="position: relative">
            <a id="hrefM" runat="server" href="#">
                <img id="imgM" runat="server" src="https://www.hawooo.com/images/ftp/newarivls-week2/edmm_01.png" style="width: 100%;padding-bottom:37%;background-color:#500208" />
            </a>
          <%--  <a style="float: left; display: block; width: 50%;" class="btnn" data-clipboard-text="18XMAS30">
                <img alt="點我領30" src="https://www.hawooo.com/images/ftp/newarivls-week2/edmm_02.png" style="width: 100%">
            </a>
            <a style="float: left; display: block; width: 50%;" class="btnn" data-clipboard-text="18XMAS60">
                <img alt="點我領60" src="https://www.hawooo.com/images/ftp/newarivls-week2/edmm_03.png" style="width: 100%">
            </a>--%>
            <div class="timelineup" style="top: 38%; width: 25%">

            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20181213/freemaskm.png" alt="滿額贈" style="width: 50%;left: 25%;top: 52%;position: absolute;">
            <a class="btnn" data-clipboard-text="18XMAS25">
                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20181213/coupon1.png" alt="折價券25" style="width: 20%;position: absolute;top: 70%;left: 10%;">
            </a>

            <a class="btnn" data-clipboard-text="18XMAS40">
                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20181213/coupon2.png" alt="折價券40" style="width: 20%; left: 42%;top:70%; position: absolute">
            </a>
            <a class="btnn" data-clipboard-text="18XMAS60">
                <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/20181213/coupon3.png" alt="折價券60" style="width: 20%; left: 72%;top:70%; position: absolute">
            </a>

        </div>
        </div>


        <div class="am-g" style="background-color: #2c2136">
            <section class="am-container" id="pnews" runat="server">
                <div class="am-u-sm-12 index-section-wrapper hot-sale am-margin-top-0" style="background-color: #2c2136">
                    <%--    <div class="index-section-title" style="padding: 5px 0px; font-size: 14px">
                        <i class="icon-mic-outline"></i>
                        <asp:Literal ID="lit_title" runat="server"></asp:Literal>
                    </div>--%>
                    <!--  一筆li一筆商品 star -->
                    <ul class="am-cf">
                        <asp:Repeater ID="rp_product_list" runat="server">
                            <ItemTemplate>
                                <li class="am-fl" style="background-color: white">

                                    <a href="product.aspx?id=<%# Eval("WP01") %>">
                                        <div class="product_item_pic">
                                            <div id="<%#"imgdivHot"+ Container.ItemIndex  %>">
                                                <img data-sizes="auto"
                                                    src="../noimg.png"
                                                    data-src='<%# ConfigurationManager.AppSettings["imgUrl"] + "webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            </div>
                                        </div>
                                        <div class="product_item_text">
                                            <div class="product_item_block am-cf">
                                                <h3 class="am-fl"><%# Eval("WP02").ToString() %></h3>
                                            </div>
                                            <div class="product_item_block am-cf">

                                                <h4 class="am-fl">RM <%# PbClass.GetPrice(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></h4>
                                                <span class="product_item_dis"><%# PbClass.GetSave(Eval("WPA10").ToString(),Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %></span>
                                            </div>
                                            <div class="product_item_block am-cf">
                                                <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                    <span class="product-items-tag"><%# (!Eval("WPT07").Equals("") ? "<img src='../images/icon/" + Eval("WPT07") + "' />" : "") + Eval("WP30") %></span>
                                                </p>
                                            </div>
                                            <%--      <div class="product_item_block am-cf">
                                                <p class="am-fl"><i class="far am-icon-eye"></i>viewed <%# PbClass.ToKiloNum(Eval("WP27").ToString()) %></p>
                                                <p class="am-fr" style="<%# Eval("WP30").ToString() == "" ? "display:none;": "" %>">
                                                    <%# ((mobile) this.Master).LgType.Equals(LangType.en) ? "<img src='../images/icon/" + Eval("WP30") + "'/>" : "<span class='product-items-tag'>" + Eval("WP30") + "</span>" %>
                                                </p>
                                            </div>--%>
                                        </div>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>

                </div>
            </section>
        </div>
    </div>
    <div style="max-width: 650px; margin: 0 auto;">
        <%--        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="5%" bgcolor="#000000"></td>
                    <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: small; text-transform: uppercase; color: #f8d1dd; padding: 20px 0px; line-height: normal;">RAYA SUMMER VACTION<br>
                        <span style="color: white;">• RM20現領現用<br>
                            於活動頁點選領取RM20折價券，只要於6.5(TUE.)-6.20(WED.)內消費滿RM199即可使用並抵扣RM20，等於限時直接送現金給妳唷。
                            <br />
                            • 花蓮縣餅登記送
                            <br />
                            會員需於6.5(TUE.)-6.20(WED.)內<span style="color: yellow; text-decoration: underline;">完成訂購與付款且符合單筆滿RM299贈品門檻即可於『下單後24hr內登記』獲得花蓮縣餅
                            </span>，只有限量100份，口味隨機，贈品發送完畢將不另行通知也不會提供其他贈品喔，取消/修改/未符合資格者恕不另行通知。
                            <br />
                            • 部分商品不參與滿額贈活動。                            
                            <br />
                        </span>
                        <br>
                        <br>
                        其他<span style="color: white;"><br>
                            • 參加本活動者即同意受本活動辦法及注意事項之規範，如有違反本活動辦法及注意事項者，本公司得取消其參加或兌換資格，並對於任何破壞本活動之⾏為保留法律追訴權。其他明顯違反活動公平性之⽅式，意圖混淆或影響活動結果者，⼀經本公司發現或經第三⼈檢舉經查證屬實，本公司有權⽴即取消其得獎資格，除追回獎品外，並對於任何破壞本活動之⾏為保留法律追訴權。
                            <br>
                            • 本公司保留活動與贈品變更以及擁有修改及取消此活動的權利，無需事前通知，同時有對此活動之所有事宜有最終解釋與裁決權。</span>
                    </td>
                    <td width="5%" bgcolor="#000000"></td>
                </tr>
            </tbody>
        </table>--%>
        <img style="width: 100%" src="https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" />
    </div>
    <script>
        //for (var i = 1; i <= 10; i++) {
        //    var j = i - 1;
        //    $('#imgdivHot' + j).append('<img id=' + i + 'A src="https://www.hawooo.com/images/ftp/20180523/top' + i + '.gif" style="position: absolute; top: 0; margin: auto; width: 40%; left: 0;" />')
        //}
        function top10() {
            for (var i = 1; i <= 10; i++) {
                var j = i - 1;
                $('#imgdivHot' + j).append('<img id=' + i + 'A src="https://www.hawooo.com/images/ftp/20180523/top' + i + '.gif" style="position: absolute; top: 0; margin: auto; width: 40%; left: 0;" />')
            }
        };

        $(function () {
            top10();
        }
        );
    </script>
    <script src="assets/js/clipboard.min.js"></script>
    <script>



        var clipboard = new ClipboardJS('.btnn');

        clipboard.on('success', function (e) {
            console.info('Action:', e.action);
            console.info('Text:', e.text);
            alert("The voucher code have been copied,please enter it when you get ready to pay.");
            e.clearSelection();
        });

        clipboard.on('error', function (e) {
            console.error('Action:', e.action);
            console.error('Trigger:', e.trigger);
        });
    </script>
</asp:Content>
