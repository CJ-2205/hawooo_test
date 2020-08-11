<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="uwsale.aspx.cs" Inherits="user_uwsale" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .getSpend {
            display: inline-block;
            position: absolute;
            width: 310px;
            height: 150px;
            bottom: 50%;
            cursor: pointer;
            left: 75%;
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
                width: 70%;
                display: block;
                margin: 0px auto;
                padding-top: 10px;
            }

        .select {
            background-color: rgba(243,243,243,.85);
            border-bottom: 2px solid #EE5984 !important;
        }



        /*.am-gallery-bordered > li {
            padding: 5px;
        }*/
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container" style="background-color: #ffffff; width: 1000px">
        <div class="am-g" style="position: relative">


            <%--            <div id="cpM" runat="server" class="getSpend" onclick="RedeemCoupon();" visible="false">
                <img style="width: 70%" id="idCoupon" src="https://www.hawooo.com/images/ftp/newarivls-week2/new99.gif" />
            </div>--%>



            <div style="position: relative;">
                <img id="imgM" src="https://www.hawooo.com/images/ftp/20180809/u_edm_01.png" runat="server" style="width: 100%" />
                <div style="position: absolute; width: 30%; bottom: 5%; right: 3%;" class="btnn btnns" data-clipboard-text="summer10">
                    <img src="https://www.hawooo.com/images/ftp/20180809/u_coupon.png" width="100%">
                </div>
            </div>

        </div>
        <%--   <script>
            function RedeemCoupon() {

                var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
                if (u != null)
                    $("#<%= button1.ClientID %>").click();
                else
                    doLogin('newarrivals2.aspx');
            }--%>
        <%--     function GetSpend() {

                var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
                if (u != null)
                    $("#<%= button2.ClientID %>").click();
                else
                    doLogin('dpaevent2.aspx');
            }--%>
        <%--      </script>--%>
        <%--        <div class="am-g am-slider am-slider-default am-slider-carousel" data-am-flexslider="{itemWidth: 200, itemMargin: 5, slideshow: false,controlNav:false}">--%>
        <div class="am-g am-slider am-slider-default am-slider-carousel">

            <%--        <div data-am-widget="slider" class="am-slider am-slider-default" data-am-slider='{&quot;animation&quot;:&quot;slide&quot;,&quot;animationLoop&quot;:false,&quot;itemWidth&quot;:200,&quot;itemMargin&quot;:5}'>--%>
            <%-- </div>--%>
            <ul class="am-avg-sm-12 style1 am-slides">
                <li id="_1" name="select" style="width: 25%; float: left; display: block; margin: 0; border: 0">
                    <a href="uwsale.aspx?did=1">
                        <img src="https://www.hawooo.com/images/ftp/20180809/u_iocn_01.png" draggable="false">
                  <%--      <span>
                            <br>
                            RM 45.50 up</span>--%>
                              <span><br>性感迷人</span>
                    </a>
                </li>
                <li id="_2" name="select" style="width: 25%; float: left; display: block; margin: 0; border: 0">
                    <a href="uwsale.aspx?did=2">
                        <img src="https://www.hawooo.com/images/ftp/20180809/u_iocn_02.png" draggable="false">
                   <%--     <span>
                            <br>
                            RM 22.50 up</span>--%>
                           <span><br>舒適自在</span>
                    </a>
                </li>
                <li id="_3" name="select" style="width: 25%; float: left; display: block; margin: 0; border: 0">
                    <a href="uwsale.aspx?did=3">
                        <img src="https://www.hawooo.com/images/ftp/20180809/u_iocn_03.png" draggable="false">
                 <%--       <span>
                            <br>
                            RM 39.90 up</span>--%>
                           <span><br>運動塑身</span>
                    </a>
                </li>
                <li id="_4" name="select" style="width: 25%; float: left; display: block; margin: 0; border: 0">
                    <a href="uwsale.aspx?did=4">
                        <img src="https://www.hawooo.com/images/ftp/20180809/u_iocn_04.png" draggable="false">
                      <%--  <span>
                            <br>
                            RM 42.90 up</span>--%>
                           <span><br>晚安好夢</span>
                    </a>
                </li>
            </ul>
        </div>
        <script>
            function SetSelClass(id) {
                $("li[name='select']").removeClass('select');
                $("#_" + id).addClass('select');
            }
        </script>
        <div class="am-g">
            <ul class="am-avg-sm-5 am-gallery-bordered product" style="padding: 2px">
                <asp:Repeater ID="rp_product_list" runat="server">
                    <ItemTemplate>
                        <li>
                            <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                <div class="p-style">
                                    <div class="p-style-pic" style="padding: 5px">
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
            <ul class="am-pagination am-pagination-right">
                <asp:Literal ID="lit_page" runat="server"></asp:Literal>
            </ul>
        </div>
    </div>
    <div style="width: 100%; position: relative; width: 999px; margin: 0 auto">

        <%-- <table width="999" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="8%" bgcolor="#000000"></td>

                    <td width="84%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 13px; text-transform: uppercase; color: #f8d1dd; padding: 20px 0px; line-height: 20px">RAYA SUMMER VACTION<br>
                        <span style="color: white;">• RM20現領現用     
                            <br />
                            於活動頁點選領取RM20折價券，只要於6.5(TUE.)-6.20(WED.)內消費滿RM199即可使用並抵扣RM20，等於限時直接送現金給妳唷。
                        <br />
                            •  花蓮縣餅登記送會員需於6.5(TUE.)-6.20(WED.)內<span style="color: yellow; text-decoration: underline;">完成訂購與付款且符合單筆滿RM299贈品門檻即可於『下單後24hr內登記』獲得花蓮縣餅</span>，只有限量100份，口味隨機，贈品發送完畢將不另行通知也不會提供其他贈品喔，取消/修改/未符合資格者恕不另行通知。
                           <br />
                            • 部分商品不參與滿額贈活動。                            
                        </span>
                        <br>
                        <br>
                        其他：<span style="color: white;"><br>
                            • 參加本活動者即同意受本活動辦法及注意事項之規範，如有違反本活動辦法及注意事項者，本公司得取消其參加或兌換資格，並對於任何破壞本活動之⾏為保留法律追訴權。其他明顯違反活動公平性之⽅式，意圖混淆或影響活動結果者，⼀經本公司發現或經第三⼈檢舉經查證屬實，本公司有權⽴即取消其得獎資格，除追回獎品外，並對於任何破壞本活動之⾏為保留法律追訴權。
• 本公司保留活動與贈品變更以及擁有修改及取消此活動的權利，無需事前通知，同時有對此活動之所有事宜有最終解釋與裁決權。
                        </span>
                    </td>

                    <td width="8%" bgcolor="#000000"></td>

                </tr>
            </tbody>
        </table>--%>
        <img class="twoyearbottom" src="https://www.hawooo.com/images/ftp/20180312/footer.png" alt="hawooo.com" style="width: 100%;">
    </div>
    <%--    <script>
        function top10() {
            for (var i = 1; i <= 10; i++) {
                var j = i - 1;
                $('#imgdivHot' + j).append('<img id=' + i + 'A src="https://www.hawooo.com/images/ftp/20180523/top' + i + '.gif" style="position: absolute; top: 0; margin: auto; width: 40%; left: 0;" />')
            }
        }
    </script>--%>
    <script src="assets/js/clipboard.min.js"></script>
    <script>
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
</asp:Content>

