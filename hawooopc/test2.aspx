<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test2.aspx.cs" Inherits="test2" MasterPageFile="~/user/user.master"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>

        $(function () {

            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    window.location.href = "https://www.hawooo.com/mobile/20180110.aspx";
                }
            }
        }
         )
    </script>
    <script id="mcjs">!function(c,h,i,m,p){m=c.createElement(h),p=c.getElementsByTagName(h)[0],m.async=1,m.src=i,p.parentNode.insertBefore(m,p)}(document,"script","https://chimpstatic.com/mcjs-connected/js/users/0512828f9e67a2f3bceae483b/f45b81da43c8b0c921e3fb5ff.js");</script>

    <link rel="stylesheet" href="assets/css/newyearmom.css">

    <style type="text/css">
        body {
            position: relative;
            height: 200vh;
        }

        .invisible {
            position: fixed;
            bottom: 5px;
            left: 0;
            right: 0;
            margin: 0 auto;
            width: 1080px;
            height: 2px;
        }

        .box {
            position: fixed;
            top: 15%;
            right: 6%;
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
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
	<div style="width:100%;margin:0 auto;display:block;width:900px;">
    <ul style="float:left;list-style-type:none;font-size:0;width:100%;">
               
               <li><a id="gotop"></a><img alt="新年禮籃" src="https://www.hawooo.com/images/ftp/20180111/edm_01.png" style="width:100%;" /></li>
               
               <li><a href="https://www.hawooo.com/user/productdetail.aspx?id=12233" target="_blank"><img alt="188新年禮籃" src="https://www.hawooo.com/images/ftp/20180111/edm_02.png" style="width:100%;" /></a></li>
                           
               <li><a href="https://www.hawooo.com/user/productdetail.aspx?id=12232" target="_blank"><img alt="388新年禮籃" src="https://www.hawooo.com/images/ftp/20180111/edm_03.png" style="width:100%;" /></a></li>
               
               <li><a href="https://www.hawooo.com/user/productdetail.aspx?id=12231" target="_blank"><img alt="588新年禮籃" src="https://www.hawooo.com/images/ftp/20180111/edm_04.png" style="width:100%;" /></a></li>             
               
               <li><a href="https://www.hawooo.com/user/productdetail.aspx?id=12230" target="_blank"><img alt="888新年禮籃" src="https://www.hawooo.com/images/ftp/20180111/edm_05.png" style="width:100%;" /></a></li>    
               
                 <li><a href="#" target="_blank" id="twoyearbottom"><img alt="新年快樂" src="https://www.hawooo.com/images/ftp/20180111/edm_06.png" style="width:100%;" /></a></li> 
              </ul></div>
               
   
        
	<!-- 一個看不見的div 高度0 -->
    <div class="invisible" style="z-index: 13;">
        <!-- box是固定的nav -->
        <div class="box" >
            <a href="javascript:void(0)" onclick="GoID('gotop')">
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


    <script src="assets/js/jquery.url.js"></script>
    <script type="text/javascript">

        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 120 }, 500);
        }

        function twoYearsSideHide(e) {
            var sidebottom = $(".invisible").offset().top - 100;
            var yearbodybot = $("#twoyearbottom").offset().top + $("#twoyearbottom").height();
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


        $(function () {
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })

    </script>

</asp:Content>

