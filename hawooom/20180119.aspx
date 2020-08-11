<%@ Page Language="C#" AutoEventWireup="true" CodeFile="20180119.aspx.cs" Inherits="_20180119" MasterPageFile="~/mobile/mobile.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <%--  <link href="../2017motherday/assets/css/newyearmom.css" rel="stylesheet" />
    <script>
        $(function () {
            $("#body").removeClass("am-container");
            $("#body").attr("onscroll", "twoYearsSideHide()");
        })
    </script>--%>
    <link rel="stylesheet" href="assets/css/newyearmom.css">
<style>
    .slogan {
        margin: 5px 5px;
        height: 20px;
        overflow: hidden;
        font-size: small;
        line-height: 20px;
        color: #ff0060;
        text-align: center;
    }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <script>
        $(function () {
            $("#body").removeClass("am-container");
        })
    </script>

    <!--edm開始-->
    <div class="am-cf" style="width:100%;margin:0 auto;float:center;display:block;max-width:650px;">
        <ul style="float:left;margin:0;padding:0;list-style-type:none;font-size:0;width:100%;">

            <li style="margin:0;"><a href="javascript:void(0)" onclick="GoID('goq1')">
                <img alt="2018星座開運秘技" src="https://www.hawooo.com/images/ftp/20180119/edmmail_01.gif" style="float:left;display:block;width:100%;" /></a></li>
        </ul>
    </div>

    <!--Q1開始-->
    <div class="am-cf" style="width:100%;margin:0 auto;float:center;display:block;max-width:650px;">
        <ul style="float:left;margin:0;padding:0;list-style-type:none;font-size:0;width:100%;">


            <li style="margin:0;"><a id="goq1"><img alt="和朋友吵架" src="https://www.hawooo.com/images/ftp/20180119/edmm_02.png" style="float:left;display:block;width:100%;" /></a></li>

            <li style="margin:0;"><a href="javascript:void(0)" onclick="GoID('goq2')"><img alt="不表現出來" src="https://www.hawooo.com/images/ftp/20180119/edmm_03.png" style="float:left;display:block;width:50%;" /></a></li>

            <li style="margin:0;"><a href="javascript:void(0)" onclick="GoID('goq3')"><img alt="當面說出來" src="https://www.hawooo.com/images/ftp/20180119/edmm_04.png" style="float:left;display:block;width:50%;" /></a></li>
        </ul>
    </div>

    <!--Q2開始-->
    <div class="am-cf" style="width:100%;margin:0 auto;float:center;display:block;max-width:650px;">
        <ul style="float:left;margin:0;padding:0;list-style-type:none;font-size:0;width:100%;">


            <li style="margin:0;"><a id="goq2"><img alt="第一次約會希望地點" src="https://www.hawooo.com/images/ftp/20180119/edmm_05.png" style="float:left;display:block;width:100%;" /></a></li>

            <li style="margin:0;"><a href="javascript:void(0)" onclick="GoID('goq5')"><img alt="遊樂場" src="https://www.hawooo.com/images/ftp/20180119/edmm_06.png" style="float:left;display:block;width:50%;" /></a></li>

            <li style="margin:0;"><a href="javascript:void(0)" onclick="GoID('goq4')"><img alt="餐廳或郊遊" src="https://www.hawooo.com/images/ftp/20180119/edmm_07.png" style="float:left;display:block;width:50%;" /></a></li>
        </ul>
    </div>

    <!--Q3開始-->
    <div class="am-cf" style="width:100%;margin:0 auto;float:center;display:block;max-width:650px;">
        <ul style="float:left;margin:0;padding:0;list-style-type:none;font-size:0;width:100%;">


            <li style="margin:0;"><a id="goq3"><img alt="身邊朋友類型" src="https://www.hawooo.com/images/ftp/20180119/edmm_08.png" style="float:left;display:block;width:100%;" /></a></li>

            <li style="margin:0;"><a href="javascript:void(0)" onclick="GoID('goC')"><img alt="和自己互補" src="https://www.hawooo.com/images/ftp/20180119/edmm_09.png" style="float:left;display:block;width:50%;" /></a></li>

            <li style="margin:0;"><a href="javascript:void(0)" onclick="GoID('goB')"><img alt="和自己接近" src="https://www.hawooo.com/images/ftp/20180119/edmm_10.png" style="float:left;display:block;width:50%;" /></a></li>
        </ul>
    </div>


    <!--Q4開始-->
    <div class="am-cf" style="width:100%;margin:0 auto;float:center;display:block;max-width:650px;">
        <ul style="float:left;margin:0;padding:0;list-style-type:none;font-size:0;width:100%;">


            <li style="margin:0;"><a id="goq4"><img alt="發現折扣的反應" src="https://www.hawooo.com/images/ftp/20180119/edmm_11.png" style="float:left;display:block;width:100%;" /></a></li>

            <li style="margin:0;"><a href="javascript:void(0)" onclick="GoID('goA')"><img alt="邊逛邊想" src="https://www.hawooo.com/images/ftp/20180119/edmm_12.png" style="float:left;display:block;width:50%;" /></a></li>

            <li style="margin:0;"><a href="javascript:void(0)" onclick="GoID('goB')"><img alt="機會難得" src="https://www.hawooo.com/images/ftp/20180119/edmm_13.png" style="float:left;display:block;width:50%;" /></a></li>
        </ul>
    </div>


    <!--Q5開始-->
    <div class="am-cf" style="width:100%;margin:0 auto;float:center;display:block;max-width:650px;">
        <ul style="float:left;margin:0;padding:0;list-style-type:none;font-size:0;width:100%;">


            <li style="margin:0;"><a id="goq5"><img alt="好友失戀怎麼辦" src="https://www.hawooo.com/images/ftp/20180119/edmm_14.png" style="float:left;display:block;width:100%;" /></a></li>

            <li style="margin:0;"><a href="javascript:void(0)" onclick="GoID('goC')"><img alt="同一陣線" src="https://www.hawooo.com/images/ftp/20180119/edmm_15.png" style="float:left;display:block;width:50%;" /></a></li>

            <li style="margin:0;"><a href="javascript:void(0)" onclick="GoID('goA')"><img alt="讓他冷靜" src="https://www.hawooo.com/images/ftp/20180119/edmm_16.png" style="float:left;display:block;width:50%;" /></a></li>
        </ul>
    </div>


    <!--A開始-->
    <div class="am-cf" style="width:100%;margin:0 auto;float:center;display:block;max-width:650px;background-color:#F9201F;">
        <ul style="float:left;margin:0;padding:0;list-style-type:none;font-size:0;width:100%;">

            <li style="margin:0;"><a id="goA"><img alt="A type" src="https://www.hawooo.com/images/ftp/20180119/am1_01.png" style="float:left;display:block;width:100%;" /></a></li>

            <li style="margin:0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=9146" target="_blank"><img alt="INNER SKIN 毛孔緊緻調理精華 50ml 3入 送 茶樹調理控油洗面乳" src="https://www.hawooo.com/images/ftp/20180119/am1_02.png" style="float:left;display:block;width:100%;" /></a></li>

            <li style="margin:0;"><a href="http://www.hawooo.com/user/productdetail.aspx?id=12166" target="_blank"><img alt="【妍霓絲煥白保濕組】極淨透碳深層喚白黑凍膜＋極肌潤玫瑰花保濕晶凍" src="https://www.hawooo.com/images/ftp/20180119/am1_03.png" style="float:left;display:block;width:100%;" /></a></li>

            <li style="margin:0;"><a href="http://www.hawooo.com/user/productdetail.aspx?id=10701" target="_blank"><img alt="天藍小舖 Skyblue質感側鍊條肩背斜背包中包" src="https://www.hawooo.com/images/ftp/20180119/am1_04.png" style="float:left;display:block;width:100%;" /></a></li>

            <li style="margin:0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=12240" target="_blank"><img alt="【Messa米莎專櫃女鞋】MIT時尚極簡風側空漆皮低跟尖頭鞋 (2色)" src="https://www.hawooo.com/images/ftp/20180119/am1_05.png" style="float:left;display:block;width:100%;" /></a></li>

        </ul>


            <div style="position: relative; max-width: 650px;float: center;margin: 0 auto;">
                <div style="top:0;bottom: 0;left:0;right:0;margin: auto;background-color: green;height: auto;">

                    <ul style="height: 50%;list-style-type:none;margin:0px 6%;padding: 0;">

                              <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                        <li class="am-fl" style="width:calc(50% - 10px);background: white;padding: 5px;margin: 5px;height: calc(100% - 20px);">
                               
                                        <a href="product.aspx?id=<%# Eval(" WP01") %>">
                                             <h4 class="slogan"><asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4  style="margin: 5px 5px;height: 40px;overflow: hidden;font-size:medium;line-height: 20px;color:#535252"><a href="product.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 10px 5px 0 5px; font-size:small; color: red">RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px;color:dimgrey;font-size:smaller;margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                            </p>
                                        </a>
                                    </li>

                                </ItemTemplate>
                            </asp:Repeater>                  
                    </ul>           
                </div>
            </div>
  </div>

    <!--B開始-->
    <div class="am-cf" style="width:100%;margin:0 auto;float:center;display:block;max-width:650px;background-color:#86D7DA;">
        <ul style="float:left;margin:0;padding:0;list-style-type:none;font-size:0;width:100%;">

            <li style="margin:0;"><a id="goB"><img alt="B type" src="https://www.hawooo.com/images/ftp/20180119/bm1_01.png" style="float:left;display:block;width:100%;" /></a></li>

            <li style="margin:0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=12301" target="_blank"><img alt="Miss Hana 花娜小姐 不暈染水眼線膠筆 送 嘣啾豐唇蜜" src="https://www.hawooo.com/images/ftp/20180119/bm1_02.png" style="float:left;display:block;width:100%;" /></a></li>

            <li style="margin:0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=11986" target="_blank"><img alt="【買1送2】Nature Tree 完美無瑕氣墊粉底(12g)★送氣墊粉芯*2入" src="https://www.hawooo.com/images/ftp/20180119/bm1_03.png" style="float:left;display:block;width:100%;" /></a></li>

            <li style="margin:0;"><a href="http://www.hawooo.com/user/search.aspx?stxt=%E5%8C%97%E6%AD%90%E5%AD%B8%E9%99%A2%E9%A2%A8%E7%84%A1%E5%B8%B6%E6%A3%89%E8%B3%AA%E5%8F%AF%E5%BD%8E%E6%8A%98%E6%87%B6%E4%BA%BA&tcode=fm180111N&utm_source=fb_ads&utm_medium=20180111_fashion_fm_%E5%8C%97%E6%AD%90%E5%AD%B8%E9%99%A2%E9%A2%A8%E7%84%A1%E5%B8%B6%E6%A3%89%E8%B3%AA%E5%8F%AF%E5%BD%8E%E6%8A%98%E6%87%B6%E4%BA%BA%E5%8C%85%E9%9E%8B&utm_content=M0002" target="_blank"><img alt="FM Shoes 韓-北歐學院風無帶棉質可彎折懶人包鞋" src="https://www.hawooo.com/images/ftp/20180119/bm1_04.png" style="float:left;display:block;width:100%;" /></a></li>

            <li style="margin:0;"><a href="http://www.hawooo.com/user/productdetail.aspx?id=8198" target="_blank"><img alt="天藍小舖 skyblue自訂方型皮質後背包" src="https://www.hawooo.com/images/ftp/20180119/bm1_05.png" style="float:left;display:block;width:100%;" /></a></li>


        </ul>

   
            <div style="position: relative; max-width: 650px;float: center;margin: 0 auto;">
                <div style="top:0;bottom: 0;left:0;right:0;margin: auto;background-color: green;height: auto;">

                    <ul style="height: 50%;list-style-type:none;margin:0px 6%;padding: 0;">

                              <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                        <li class="am-fl" style="width:calc(50% - 10px);background: white;padding: 5px;margin: 5px;height: calc(100% - 20px);">
                               
                                        <a href="product.aspx?id=<%# Eval(" WP01") %>">
                                             <h4 class="slogan"><asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4  style="margin: 5px 5px;height: 40px;overflow: hidden;font-size:medium;line-height: 20px;color:#535252"><a href="product.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 10px 5px 0 5px; font-size:small; color: red">RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px;color:dimgrey;font-size:smaller;margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                            </p>
                                        </a>
                                    </li>

                                </ItemTemplate>
                            </asp:Repeater>                  
                    </ul>           
                </div>
            </div>

    </div>


    <!--C開始-->
    <div class="am-cf" style="width:100%;margin:0 auto;float:center;display:block;max-width:650px;background-color:#F7931E;">
        <ul style="float:left;margin:0;padding:0;list-style-type:none;font-size:0;width:100%;">

            <li style="margin:0;"><a id="goC"><img alt="C type" src="https://www.hawooo.com/images/ftp/20180119/cm1_01.png" style="float:left;display:block;width:100%;" /></a></li>

            <li style="margin:0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=12306" target="_blank"><img alt="【甜美女孩必備眉唇妝】完美持色雙用眉筆 0.2g + 甜心女孩唇頰彩 2.2g" src="https://www.hawooo.com/images/ftp/20180119/cm1_02.png" style="float:left;display:block;width:100%;" /></a></li>

            <li style="margin:0;"><a href="http://www.hawooo.com/user/productdetail.aspx?id=10681" target="_blank"><img alt="天藍小舖 Skyblue多背法輕巧磨砂皮斜背後背包" src="https://www.hawooo.com/images/ftp/20180119/cm1_03.png" style="float:left;display:block;width:100%;" /></a></li>

            <li style="margin:0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=12305" target="_blank"><img alt="UNT 魔幻水指彩之魔幻變妝技(7ml) 乾燥花系列3入組" src="https://www.hawooo.com/images/ftp/20180119/cm1_04.png" style="float:left;display:block;width:100%;" /></a></li>

            <li style="margin:0;"><a href="http://www.hawooo.com/user/productdetail.aspx?id=5035&cid=45" target="_blank"><img alt=" 韓-浪漫復古網紗雕花踝扣尖頭包鞋 36-41" src="https://www.hawooo.com/images/ftp/20180119/cm1_05.png" style="float:left;display:block;width:100%;" /></a></li>

        </ul>

            <div style="position: relative; max-width: 650px;float: center;margin: 0 auto;">
                <div style="top:0;bottom: 0;left:0;right:0;margin: auto;background-color: green;height: auto;">

                    <ul style="height: 50%;list-style-type:none;margin:0px 6%;padding: 0;">

                              <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                        <li class="am-fl" style="width:calc(50% - 10px);background: white;padding: 5px;margin: 5px;height: calc(100% - 20px);">
                               
                                        <a href="product.aspx?id=<%# Eval(" WP01") %>">
                                             <h4 class="slogan"><asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4  style="margin: 5px 5px;height: 40px;overflow: hidden;font-size:medium;line-height: 20px;color:#535252"><a href="product.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 10px 5px 0 5px; font-size:small; color: red">RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px;color:dimgrey;font-size:smaller;margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                            </p>
                                        </a>
                                    </li>

                                </ItemTemplate>
                            </asp:Repeater>                  
                    </ul>           
                </div>
            </div>

    </div>


    <div class="am-cf" style="width:100%;margin:0 auto;float:center;display:block;max-width:650px;">
        <ul style="float:left;margin:0;padding:0;list-style-type:none;font-size:0;width:100%;">
            <li style="margin:0;"><img alt="hawooo.com" src="https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float:left;display:block;width:100%;" /></li>

        </ul>
    </div>


    <!--[if (gte IE 9)|!(IE)]><!-->
    <script src="assets/js/jquery.min.js"></script>
    <!--<![endif]-->
    <script src="assets/js/amazeui.min.js"></script>
    <script type="text/javascript" src="assets/js/171128.js"></script>
    <script>

        $(function () {
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
        }

        function success(result, context, method) {
            if (method == 'GetCP') {
                alert(result);
                if (result == "請先登入會員") {
                    doLogin(window.location.href);
                }
            }
        }
        function GetCoupone(stime, etime, gb01) {
            PageMethods.GetCP(stime, etime, gb01, success, null);
        }


        function getThisId(e) {
            var thisHref = $(e).attr("data-id").split("#")[1];
            var thisDivTop = $("body").find("#" + thisHref).offset().top - 100;
            //var thisDivTop = $("body").find("#" + thisHref).offset().top;
            $("body,html").stop(true, false).animate({ scrollTop: thisDivTop }, 500);
        }
    </script>
</asp:Content>