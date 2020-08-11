<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true"
    CodeFile="newarrivals1.aspx.cs" Inherits="mobile_newarrivals1" %>

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
                white-space: nowrap;
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

        .am-avg-sm-5 > li {
            width: 20%;
            overflow: hidden;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="background-color: #ffffff;">
        <div class="am-g" style="position: relative">


<%--            <div id="cpM" runat="server" class="getSpend" onclick="RedeemCoupon();" visible="false">
                <img style="width: 50%" id="idCoupon" src="https://www.hawooo.com/images/ftp/newarivls-week1/new99.gif" />
            </div>--%>


            <a id="hrefM" runat="server" href="#">
                <img id="imgM" src="https://www.hawooo.com/images/ftp/newarivls-week1/edmm_01.png" runat="server" style="width: 100%" />
            </a>


        </div>

       <%-- <script>
            function RedeemCoupon() {
                var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
                if (u != null)
                    $("#<%= button1.ClientID %>").click();
                else
                    location.href = 'login.aspx?rurl=newarrivals1.aspx';
            }
  
        </script>
        <asp:UpdatePanel ID="up_add" runat="server">
            <ContentTemplate>
                <asp:Button runat="server" Text="Button" Style="display: none;" ID="button1" OnClick="button1_Click"></asp:Button>
         
            </ContentTemplate>
        </asp:UpdatePanel>--%>



        <%--        <div class="am-g">
            <ul class="am-avg-sm-5 style1">
                <li class="select" id="_1" name="select">
                    <a href="newarrivals1.aspx?did=1">
                        <img src="https://www.hawooo.com/images/ftp/newarivls-week1/edm_05.png" width="100%" />
                        <span>新品排行榜</span>
                    </a>
                </li>
                <li id="_2" name="select">
                    <a href="newarrivals1.aspx?did=2">
                        <img src="https://www.hawooo.com/images/ftp/newarivls-week1/edm_06.png" width="100%" />
                        <span>愛斯德瑪</span>
                    </a>
                </li>
                <li id="_3" name="select">
                    <a href="newarrivals1.aspx?did=3">
                        <img src="https://www.hawooo.com/images/ftp/newarivls-week1/edm_07.png" width="100%" />
                        <span>第一化粧品</span>
                    </a>
                </li>
                <li id="_4" name="select">
                    <a href="newarrivals1.aspx?did=4">
                        <img src="https://www.hawooo.com/images/ftp/newarivls-week1/edm_08.png" width="100%" />
                        <span>PON PON</span>
                    </a>
                </li>
                <li id="_5" name="select">
                    <a href="newarrivals1.aspx?did=5">
                        <img src="https://www.hawooo.com/images/ftp/newarivls-week1/edm_09.png" width="100%" />
                        <span>更多新品</span>
                    </a>
                </li>
            </ul>
        </div>
        <script>
            function SetSelClass(id) {
                $("li[name='select']").removeClass('select');
                $("#_" + id).addClass('select');
            }
        </script>--%>

        <div class="am-g am-slider am-slider-default am-slider-carousel">
            <%--        <div data-am-widget="slider" class="am-slider am-slider-default" data-am-slider='{&quot;animation&quot;:&quot;slide&quot;,&quot;animationLoop&quot;:false,&quot;itemWidth&quot;:200,&quot;itemMargin&quot;:5}'>--%>
            <%-- </div>--%>
            <ul class="am-avg-sm-11 style1 am-slides">
                <%--      <ul class="am-avg-sm-2 style1 am-slides">--%>

                <li class="select" id="_0" name="select" style="display: none"></li>

                <li class="select" id="_1" name="select">
                    <a href="newarrivals1.aspx?did=1">
                        <img src="https://www.hawooo.com/images/ftp/newarivls-week1/icon_01.png" />
                        <span>新品排行榜</span>
                    </a>
                </li>

                <li id="_2" name="select">
                    <a href="newarrivals1.aspx?did=2">
                        <img src="https://www.hawooo.com/images/ftp/newarivls-week1/icon_02.png" />
                        <span>保健食品</span>
                    </a>
                </li>
                <li id="_3" name="select">
                    <a href="newarrivals1.aspx?did=3">
                        <img src="https://www.hawooo.com/images/ftp/newarivls-week1/icon_03.png" />
                        <span>美體保養</span>
                    </a>
                </li>
                <li id="_4" name="select">
                    <a href="newarrivals1.aspx?did=4">
                        <img src="https://www.hawooo.com/images/ftp/newarivls-week1/icon_04.png" />
                        <span>服裝內衣</span>
                    </a>
                </li>
                <li id="_5" name="select">
                    <a href="newarrivals1.aspx?did=5">
                        <img src="https://www.hawooo.com/images/ftp/newarivls-week1/icon_05.png" />
                        <span>生活用品</span>
                    </a>
                </li>
                <li id="_6" name="select">
                    <a href="newarrivals1.aspx?did=6">
                        <img src="https://www.hawooo.com/images/ftp/newarivls-week1/icon_06.png" />
                        <span>時尚彩妝</span>
                    </a>
                </li>
                <li id="_7" name="select">
                    <a href="newarrivals1.aspx?did=7">
                        <img src="https://www.hawooo.com/images/ftp/newarivls-week1/icon_07.png" />
                        <span>品味美食</span>
                    </a>
                </li>
                <li id="_8" name="select">
                    <a href="newarrivals1.aspx?did=8">
                        <img src="https://www.hawooo.com/images/ftp/newarivls-week1/brand_01.png" />
                        <span>DV笛絲薇夢</span>
                    </a>
                </li>
                <li id="_9" name="select">
                    <a href="newarrivals1.aspx?did=9">
                        <img src="https://www.hawooo.com/images/ftp/newarivls-week1/brand_02.png" />
                        <span>H&J</span>
                    </a>
                </li>
                <li id="_10" name="select">
                    <a href="newarrivals1.aspx?did=10">
                        <img src="https://www.hawooo.com/images/ftp/newarivls-week1/brand_03.png" />
                        <span>sNug</span>
                    </a>
                </li>
            </ul>
        </div>
        <script>

            //function methodFive(id) {

            //    var c = $("am-slides li").siblings(); //以对象集合的形式返回被选元素的所有同胞元素
            //    $(c[id - 1]).insertBefore("li:first");
            //    for (var i = 0; i < c.length; i++) {
            //        if (i != (id - 1))
            //            $(c[i]).insertBefore("li:first"); //第一个li标签的选择器为li:first，而不用ul:first-child
            //    }
            //}



            function SetSelClass(id) {
                $("li[name='select']").removeClass('select');
                $("#_" + id).addClass('select');
                $('.am-slider').flexslider({
                    itemWidth: 100,
                    itemMargin: 5,
                    slideshow: false,
                    controlNav: false,
                    //keyboard: false,
                    animationLoop: false,
                    //startAt: id - 1

                    // options
                });



                var other = $("#_0");
                $("#_" + id).after(other.after(other).clone());
                other.after($("#_" + id)).remove();



                //$('.am-slider').slick({
                //    initialSlide:id-1
                //});
                //$("#_" + id).index(-99);
                //methodFive(id);
                //$('.am-slider').slickGoTo(id, true);
            }
        </script>


        <div class="am-g">
            <section class="am-container" id="pnews" runat="server">
                <div class="am-u-sm-12 index-section-wrapper hot-sale am-margin-top-0">
                    <div class="index-section-title" style="padding: 5px 0px; font-size: 14px">
                        <i class="icon-mic-outline"></i>
                        <asp:Literal ID="lit_title" runat="server"></asp:Literal>
                    </div>
                    <!--  一筆li一筆商品 star -->
                    <ul class="am-cf">
                        <asp:Repeater ID="rp_product_list" runat="server">
                            <ItemTemplate>
                                <li class="am-fl">
                                    <a href="product.aspx?id=<%# Eval("WP01") %>">
                                        <div class="product_item_pic">
                                            <div id="<%#"imgdivHot"+ Container.ItemIndex  %>">
                                                <img src="../images/webimgs/<%# Eval("WP08_1").ToString() %>">
                                            </div>
                                        </div>
                                        <div class="product_item_text">
                                            <div class="product_item_block">
                                                <h3><%# Eval("WP02").ToString() %></h3>
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
        function top10()
        {
            for (var i = 1; i <= 10; i++) {
                var j = i - 1;
                $('#imgdivHot' + j).append('<img id=' + i + 'A src="https://www.hawooo.com/images/ftp/20180523/top' + i + '.gif" style="position: absolute; top: 0; margin: auto; width: 40%; left: 0;" />')
            }
        }
    </script>
</asp:Content>
