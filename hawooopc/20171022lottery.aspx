<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20171022lottery.aspx.cs" Inherits="user_20171022lottery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="../2017motherday/assets/css/newyearmom.css" rel="stylesheet" />

    <script>
        $(function () {
            $("#body").removeClass("am-container");
        })
    </script>


     <script>

        $(function () {

            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    window.location.href = "https://www.hawooo.com/mobile/20171022lottery.aspx";
                }
            }
        }
         )
    </script>

    <link rel="stylesheet" href="assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="assets/css/app.css" />
    <link rel="stylesheet" href="assets/css/newyearmom.css" />

    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
        }

        .minbox {
            margin: 0 auto;
            width: 1180px;
        }

        .content-full {
            margin: 0 auto;
            padding: 0;
            width: 1180px;
        }

        .listbox-full {
            float: center;
            display: block;
            font-size: 0;
            margin: 0;
            width: 1180px;
        }

            .listbox-full img {
                float: left;
                display: block;
                margin: 0;
                padding: 0;
                font-size: 0;
            }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="minbox">
        <div class="content-full">
            <div class="listbox-full">
              	<img alt="好禮天天抽第二波" src="https://www.hawooo.com/images/ftp/20171013/w2/edm_01.png" style="width:1180px;" />

                <asp:Panel ID="Panel1" runat="server">
                    	<a href="https://www.hawooo.com/user/productdetail.aspx?id=7098" target="_blank"><img alt="INNER SKIN 毛孔緊緻調理精華50ml" src="https://www.hawooo.com/images/ftp/20171013/w2/edm_02.PNG" style="width:236px;" /></a>
         		
         		<a href="https://www.hawooo.com/user/productdetail.aspx?id=7091" target="_blank"><img alt="INNERSKIN淨化不息煥膚水凝膜110ml" src="https://www.hawooo.com/images/ftp/20171013/w2/edm_03.png" style="width:236px;" /></a>
         	
         		
         		<a href="https://www.hawooo.com/user/productdetail.aspx?id=8854" target="_blank" ><img alt="INNER SKIN 茶樹控油收斂化妝水 150ml" src="https://www.hawooo.com/images/ftp/20171013/w2/edm_04.png" style="width:236px;" /></a>
         		
         		<a href="https://www.hawooo.com/user/productdetail.aspx?id=394" target="_blank" ><img alt="INNER SKIN 8不得 修護凝膠10ml" src="https://www.hawooo.com/images/ftp/20171013/w2/edm_05.png" style="width:236px;" /></a>
         		
         		<a href="https://www.hawooo.com/user/productdetail.aspx?id=8856" target="_blank"  ><img alt="INNER SKIN 茶樹控油礦物保養蜜粉 8g" src="https://www.hawooo.com/images/ftp/20171013/w2/edm_06.png" style="width:236px;" /></a>
                 
                
                </asp:Panel>
            </div>
        </div>
    </div>



    <%-- 第二塊  時間沒到--%>
    <asp:Panel ID="Panel2" runat="server">
        <div class="minbox">
            <div class="content-full">
                <div class="listbox-full">
                  <a href="http://www.hawooo.com/user/brands.aspx?bid=154" target="_blank"    ><img alt="UNT" src="https://www.hawooo.com/images/ftp/20171013/w2/edmcs_07.png" style="width:1180px;" /></a>     
                </div>
            </div>
        </div>
    </asp:Panel>


    <!--第二塊  時間到了解除束縛-->
    <asp:Panel ID="Panel3" runat="server">
        <div class="minbox">
            <div class="content-full">
                <div class="listbox-full">
                   <a href="http://www.hawooo.com/user/brands.aspx?bid=154" target="_blank"><img alt="玻尿酸長效保濕化妝水 150ml+玻尿酸長效保濕精華液 35ml " src="https://www.hawooo.com/images/ftp/20171013/w2/edm_07.png" style="width:236px;" /></a>
         		        
         		<a href="http://www.hawooo.com/user/brands.aspx?bid=154" target="_blank" ><img alt="抗痘煥膚調理精華液 35ml+UNT｜抗痘凝乳 10ml" src="https://www.hawooo.com/images/ftp/20171013/w2/edm_08.png" style="width:236px;" /></a>
         		
         		<a href="http://www.hawooo.com/user/brands.aspx?bid=154" target="_blank" ><img alt="狠狠吻我玫瑰絲絨唇釉 5g+甜心女孩唇頰彩 2.2g" src="https://www.hawooo.com/images/ftp/20171013/w2/edm_09.png" style="width:236px;" /></a>
         		
         		<a href="http://www.hawooo.com/user/brands.aspx?bid=154" target="_blank" ><img alt="魔幻水指彩之魔幻變妝技 5" src="https://www.hawooo.com/images/ftp/20171013/w2/edm_10.png" style="width:236px;" /></a>
         		
         		<a href="http://www.hawooo.com/user/brands.aspx?bid=154" target="_blank" ><img alt="傳明酸清透煥白保濕乳液 60ml+傳明杏仁酸急效美白精華液 35ml " src="https://www.hawooo.com/images/ftp/20171013/w2/edm_11.png" style="width:236px;" /></a>


                </div>
            </div>
        </div>
    </asp:Panel>


    <!--下面footer開始-->
    <div class="minbox">
        <div class="content-full">
            <div class="listbox-full">

               <img alt="禮物天天抽備註" src="https://www.hawooo.com/images/ftp/20171013/w2/edm_12.png" style="width:1180px;" />
         		
         		<a href="https://www.hawooo.com/user/20171012lottery.aspx" target="_blank" ><img alt="第二波 禮物天天抽 上禮拜" src="https://www.hawooo.com/images/ftp/20171013/w2/edm_13.png" style="width:1180px;" /></a>
         		  
         		<a href="https://www.hawooo.com/user/hawooo2yearspart2.aspx" target="_blank" ><img alt="點我逛週年慶第一波" src="https://www.hawooo.com/images/ftp/20171013/w2/edm_14.png" style="width:1180px;" /></a>
        		    		    		
         		<img alt="第二波 禮物天天抽 下禮拜" src="https://www.hawooo.com/images/ftp/20171013/w2/edm_15.png" style="width:1180px;" />

            </div>
        </div>
    </div>

</asp:Content>

