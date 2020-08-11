<%@ Page Language="C#" AutoEventWireup="true" CodeFile="20180119.aspx.cs" Inherits="_20180119" MasterPageFile="~/user/user.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta charset="UTF-8">
    <script>

        $(function () {

            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    window.location.href = "https://www.hawooo.com/mobile/20180119.aspx";
                }
            }
        }
         )
    </script>
    <style type="text/css">
        body {
            position: relative;
            height: auto;
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
            right: 3%;
            width: 100px;
            height: 1530px;
        }

        .pic {
            position: absolute;
            left: 0;
            right: 0;
            margin: 0 auto;
            width: 900px;
            height: 100vh;
            background: #aaa;
        }

            .pic img {
                position: absolute;
                right: 0;
                width: 900px;
            }

        .gift1 {
            background-image: url(https://www.hawooo.com/images/ftp/20180119/a_08.png);
            background-size: 100%;
            height: auto;
            margin: 0px auto;
            padding: 0px;
        }

        .gift2 {
            background-image: url(https://www.hawooo.com/images/ftp/20180119/b_08.png);
            background-size: 100%;
            height: auto;
            margin: 0px auto;
            padding: 0px;
        }

        .gift3 {
            background-image: url(https://www.hawooo.com/images/ftp/20180119/c_09.png);
            background-size: 100%;
            height: auto;
            margin: 0px auto;
            padding: 0px;
        }

        .slogan {
            margin: 10px 5px;
            height: 20px;
            overflow: hidden;
            font-size: 14px;
            line-height: 20px;
            color: #ff0060;
            text-align: center;
        }

        #ul1 li, #ul2 li, #ul3 li {
            border-right: 4.5px dotted #E6EAEB;
        }

            #ul1 li:last-child, #ul1 li:nth-child(4),
            #ul2 li:last-child, #ul2 li:nth-child(4),
            #ul3 li:last-child, #ul3 li:nth-child(4) {
                border-right: 4.5px dotted white;
            }

            #ul1 li:nth-child(5), #ul1 li:nth-child(6), #ul1 li:nth-child(7), #ul1 li:nth-child(8),
            #ul2 li:nth-child(5), #ul2 li:nth-child(6), #ul2 li:nth-child(7), #ul2 li:nth-child(8),
            #ul3 li:nth-child(5), #ul3 li:nth-child(6), #ul3 li:nth-child(7), #ul3 li:nth-child(8) {
                margin-top: 30px;
            }

        .border1 {
            background: white;
            padding: 1%;
        }
    </style>

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="margin-top: 120px; display: block;">
        <div style="width: 100%; margin: 0 auto; display: block; width: 1180px;">
            <a id="gotop"></a>
            <img alt="2018星座開運秘技" src="https://www.hawooo.com/images/ftp/20180119/edm_01.gif" style="float: left; display: block; width: 100%;" />
        </div>


        <!--第1題-->
        <div style="width: 100%; margin: 0 auto; display: block; width: 1180px;">
            <img alt="朋友意見不合怎麼做" src="https://www.hawooo.com/images/ftp/20180119/edm_02.png" style="float: left; display: block; width: 393px;" />

            <a href="javascript:void(0)" onclick="GoID('goq2')">
                <img alt="不表現出來" src="https://www.hawooo.com/images/ftp/20180119/edm_03.png" style="float: left; display: block; width: 394px;" /></a>

            <a href="javascript:void(0)" onclick="GoID('goq3')">
                <img alt="當面說出來" src="https://www.hawooo.com/images/ftp/20180119/edm_04.png" style="float: left; display: block; width: 393px;" /></a>
        </div>

        <!--第2題-->
        <div style="width: 100%; margin: 0 auto; display: block; width: 1180px; font-size: 0">

            <div style="position: absolute; z-index: 10; top: 750px;"><a id="goq2"></a></div>
            <img alt="第一次約會最希望的場合在哪" src="https://www.hawooo.com/images/ftp/20180119/edm_05.png" style="float: left; display: block; width: 393px;" />

            <a href="javascript:void(0)" onclick="GoID('goq5')">
                <img alt="ktv遊樂場" src="https://www.hawooo.com/images/ftp/20180119/edm_06.png" style="float: left; display: block; width: 394px;" /></a>

            <a href="javascript:void(0)" onclick="GoID('goq4')">
                <img alt="餐廳或郊遊" src="https://www.hawooo.com/images/ftp/20180119/edm_07.png" style="float: left; display: block; width: 393px;" /></a>
        </div>


        <!--第3題-->
        <div style="width: 100%; margin: 0 auto; display: block; width: 1180px;">
            <div style="position: absolute; z-index: 10; top: 1140px;"><a id="goq3"></a></div>

            <img alt="朋友類型" src="https://www.hawooo.com/images/ftp/20180119/edm_08.png" style="float: left; display: block; width: 393px;" />

            <a href="javascript:void(0)" onclick="GoID('goC')">
                <img alt="互補" src="https://www.hawooo.com/images/ftp/20180119/edm_09.png" style="float: left; display: block; width: 394px;" /></a>

            <a href="javascript:void(0)" onclick="GoID('goB')">
                <img alt="和自己接近" src="https://www.hawooo.com/images/ftp/20180119/edm_10.png" style="float: left; display: block; width: 393px;" /></a>
        </div>

        <!--第4題-->
        <div style="width: 100%; margin: 0 auto; display: block; width: 1180px; font-size: 0">

            <div style="position: absolute; z-index: 10; top: 1530px;"><a id="goq4"></a></div>

            <img alt="發現打折的反應" src="https://www.hawooo.com/images/ftp/20180119/edm_11.png" style="float: left; display: block; width: 393px;" />

            <a href="javascript:void(0)" onclick="GoID('goA')">
                <img alt="邊逛邊想" src="https://www.hawooo.com/images/ftp/20180119/edm_12.png" style="float: left; display: block; width: 394px;" /></a>

            <a href="javascript:void(0)" onclick="GoID('goB')">
                <img alt="機會難得快搶" src="https://www.hawooo.com/images/ftp/20180119/edm_13.png" style="float: left; display: block; width: 393px;" /></a>
        </div>

        <!--第5題-->
        <div style="width: 100%; margin: 0 auto; display: block; width: 1180px; font-size: 0">

            <div style="position: absolute; z-index: 10; top: 1920px;"><a id="goq5"></a></div>

            <img alt="好友失戀怎麼做" src="https://www.hawooo.com/images/ftp/20180119/edm_14.png" style="float: left; display: block; width: 393px;" />

            <a href="javascript:void(0)" onclick="GoID('goC')">
                <img alt="同一陣線" src="https://www.hawooo.com/images/ftp/20180119/edm_15.png" style="float: left; display: block; width: 394px;" /></a>

            <a href="javascript:void(0)" onclick="GoID('goA')">
                <img alt="給你時間冷靜" src="https://www.hawooo.com/images/ftp/20180119/edm_16.png" style="float: left; display: block; width: 393px;" /></a>
        </div>


        <!--A區塊開始-->
        <div style="width: 100%; position: relative; width: 1180px; margin: 0 auto">
            <div style="position: absolute; z-index: 10; top: 2300px;"><a id="goA"></a></div>

   	
     	<a href="https://www.hawooo.com/user/productdetail.aspx?id=9146" target="_blank"><img src="https://www.hawooo.com/images/ftp/20180119/a_01.png" alt="INNER SKIN 毛孔緊緻調理精華 50ml 3入 送 茶樹調理控油洗面乳" style="width: 40%;float: left;"></a>
     	
    	<a href="https://www.hawooo.com/user/productdetail.aspx?id=12240" target="_blank"><img src="https://www.hawooo.com/images/ftp/20180119/a_02.png" alt="【Messa米莎專櫃女鞋】MIT時尚極簡風側空漆皮低跟尖頭鞋 (2色)" style="width: 20%;float: left;"> </a>
    	<img src="https://www.hawooo.com/images/ftp/20180119/a_03.png"  style="width: 40%;float: left;"> 
    	
    	<a href="http://www.hawooo.com/user/productdetail.aspx?id=12166" target="_blank"><img src="https://www.hawooo.com/images/ftp/20180119/a_04.png" alt="【妍霓絲煥白保濕組】極淨透碳深層喚白黑凍膜＋極肌潤玫瑰花保濕晶凍" style="width: 20%;float: left;"> </a>
    	
    	<img src="https://www.hawooo.com/images/ftp/20180119/a_05.png" style="width: 20%;float: left;">  
    	
    	<a href="http://www.hawooo.com/user/productdetail.aspx?id=10701" target="_blank"><img src="https://www.hawooo.com/images/ftp/20180119/a_06.png" alt="天藍小舖 Skyblue質感側鍊條肩背斜背包中包" style="width: 30%;float: left;"></a> 
    	
                	<a href="https://www.hawooo.com/user/productdetail.aspx?id=12240" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180119/a_07.png"  style="width: 30%;float: left;">     
                	</a>

     	   


            <div style="width: 100%; margin: 0 auto; display: block; width: 1180px; position: relative; float: left">
                <div class="gift1 am-cf" style="width: 1180px;">
                    <div style="padding: 50px 50px 50px 52px;">
                        <ul id="ul1" class="am-avg-sm-4">

                            <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl border1">
                                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                            <h4 class="slogan">
                                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                                <span style="font-size: 22px; letter-spacing: -2px;">RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 16px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                            </p>
                                        </a>
                                    </li>

                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>

            </div>

        </div>




        <!--B區塊開始-->
        <div style="width: 100%; position: relative; width: 1180px; margin: 0 auto; z-index: 2">
            <div style="position: absolute; z-index: 10; top: 3900px;"><a id="goB"></a></div>

            <a href="https://www.hawooo.com/user/productdetail.aspx?id=12301" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180119/b_01.png" alt="Miss Hana 花娜小姐 不暈染水眼線膠筆 送 嘣啾豐唇蜜" style="width: 30%; float: left;"></a>
          
                 <a href="https://www.hawooo.com/user/productdetail.aspx?id=11986" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180119/b_02.png" style="width: 20%; float: left;">
                <img src="https://www.hawooo.com/images/ftp/20180119/b_03.png" alt="【買1送2】Nature Tree 完美無瑕氣墊粉底(12g)★送氣墊粉芯*2入" style="width: 20%; float: left;">
            </a>

            <img src="https://www.hawooo.com/images/ftp/20180119/b_04.png" style="width: 30%; float: left;">


            <a href="http://www.hawooo.com/user/search.aspx?stxt=%E5%8C%97%E6%AD%90%E5%AD%B8%E9%99%A2%E9%A2%A8%E7%84%A1%E5%B8%B6%E6%A3%89%E8%B3%AA%E5%8F%AF%E5%BD%8E%E6%8A%98%E6%87%B6%E4%BA%BA&tcode=fm180111N&utm_source=fb_ads&utm_medium=20180111_fashion_fm_%E5%8C%97%E6%AD%90%E5%AD%B8%E9%99%A2%E9%A2%A8%E7%84%A1%E5%B8%B6%E6%A3%89%E8%B3%AA%E5%8F%AF%E5%BD%8E%E6%8A%98%E6%87%B6%E4%BA%BA%E5%8C%85%E9%9E%8B&utm_content=M0002" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180119/b_05.png" alt="FM Shoes 韓-北歐學院風無帶棉質可彎折懶人包鞋" style="width: 30%; float: left;">
            </a>

            <a href="http://www.hawooo.com/user/productdetail.aspx?id=8198" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180119/b_06.png" alt="天藍小舖 skyblue自訂方型皮質後背包" style="width: 20%; float: left;">
            <img src="https://www.hawooo.com/images/ftp/20180119/b_07.png" style="width: 50%; float: left;">


            </a>

            <div style="width: 100%; margin: 0 auto; display: block; width: 1180px; position: relative; float: left">
                <div class="gift2 am-cf" style="width: 1180px;">
                    <div style="padding: 50px 50px 50px 52px;">
                        <ul id="ul2" class="am-avg-sm-4">

                            <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl border1">
                                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                            <h4 class="slogan">
                                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                                <span style="font-size: 22px; letter-spacing: -2px;">RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 16px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                            </p>
                                        </a>
                                    </li>

                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>

            </div>
        </div>



        <!--C區塊開始-->
        <div style="width: 100%; position: relative; width: 1180px; margin: 0 auto; z-index: 2">
            <div style="position: absolute; z-index: 10; top: 5450px;"><a id="goC"></a></div>

                  <a href="https://www.hawooo.com/user/productdetail.aspx?id=12306" target="_blank">
            <img src="https://www.hawooo.com/images/ftp/20180119/c_01.png" style="width: 20%; float: left;">
            </a>

            <a href="http://www.hawooo.com/user/productdetail.aspx?id=10681" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180119/c_02.png" alt="天藍小舖 Skyblue多背法輕巧磨砂皮斜背後背包" style="width: 20%; float: left;"></a>

            <a href="https://www.hawooo.com/user/productdetail.aspx?id=12305" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180119/c_03.png" alt="UNT 魔幻水指彩之魔幻變妝技(7ml) 乾燥花系列3入組" style="width: 30%; float: left;">
            </a>

            <img src="https://www.hawooo.com/images/ftp/20180119/c_04.png" style="width: 30%; float: left;">


            <a href="https://www.hawooo.com/user/productdetail.aspx?id=12306" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180119/c_05.png" alt="【甜美女孩必備眉唇妝】完美持色雙用眉筆 0.2g + 甜心女孩唇頰彩 2.2g" style="width: 20%; float: left;">
            </a>

            <a href="http://www.hawooo.com/user/productdetail.aspx?id=10681" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180119/c_06.png" alt="天藍小舖 Skyblue多背法輕巧磨砂皮斜背後背包" style="width: 20%; float: left;"></a>

            <a href="http://www.hawooo.com/user/productdetail.aspx?id=5035&cid=45" target="_blank">
                <img src="https://www.hawooo.com/images/ftp/20180119/c_07.png" alt=" 韓-浪漫復古網紗雕花踝扣尖頭包鞋 36-41" style="width: 28%; float: left;">
            </a>

            <img src="https://www.hawooo.com/images/ftp/20180119/c_08.png" style="width: 32%; float: left;">

            <div style="width: 100%; margin: 0 auto; display: block; width: 1180px; position: relative; float: left">
                <div class="gift3 am-cf" style="width: 1180px;">
                    <div style="padding: 50px 50px 50px 52px;">
                        <ul id="ul3" class="am-avg-sm-4">

                            <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <li class="am-fl border1">
                                        <a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                            <h4 class="slogan">
                                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("WP24") %>'></asp:Literal></h4>
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px; color: #535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 5px 5px 0 5px; font-size: 13px; color: red">
                                                <span style="font-size: 22px; letter-spacing: -2px;">RM<span style="font-size: 22px; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 44px; color: dimgrey; font-size: 16px; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                            </p>
                                        </a>
                                    </li>

                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>

            </div>
        </div>



        <!--footer-->
        <div style="width: 100%; margin: 0 auto; float: center; display: block; width: 1180px;">
            <img alt="Hawooo.com" src="https://www.hawooo.com/images/ftp/20171219/bhk/footerpc.png" style="float: left; display: block; width: 100%;" />
        </div>

        <!-- 一個看不見的div 高度0 -->
        <div class="invisible" style="z-index: 13;">
            <!-- box是固定的nav -->
            <div class="box">
                <a href="https://www.hawooo.com/user/20180116.aspx" target="_blank">
                    <img src="https://www.hawooo.com/images/ftp/20180116/sidebar_01.png" style="width: 150px; margin-bottom: -1px" alt="新年紅包"></a>


                <a href="https://www.hawooo.com/user/20180116.aspx?tid=gosale1" target="_blank">
                    <img src="https://www.hawooo.com/images/ftp/20180116/sidebar_02.png" style="width: 150px; margin-bottom: -1px" alt="年貨大街"></a>

                <a href="https://www.hawooo.com/user/20180116.aspx?tid=gosale2" target="_blank">
                    <img src="https://www.hawooo.com/images/ftp/20180116/sidebar_03.png" style="width: 150px; margin-bottom: -1px" alt="氣色好桃花到"></a>

                <a href="https://www.hawooo.com/user/20180116.aspx?tid=gosale3" target="_blank">
                    <img src="https://www.hawooo.com/images/ftp/20180116/sidebar_04.png" style="width: 150px; margin-bottom: -1px" alt="養髮好運旺旺"></a>

                <a href="https://www.hawooo.com/user/20180116.aspx?tid=gosale4" target="_blank">
                    <img src="https://www.hawooo.com/images/ftp/20180116/sidebar_05.png" style="width: 150px; margin-bottom: -1px" alt="除舊佈新"></a>

                <a href="javascript:void(0)" onclick="GoID('gotop')">
                    <img src="https://www.hawooo.com/images/ftp/20180116/sidebar_06.png" style="width: 150px; margin-bottom: -1px" alt="TOP"></a>
            </div>
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
    </script>

</asp:Content>
