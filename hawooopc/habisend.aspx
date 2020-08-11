<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="habisend.aspx.cs" Inherits="user_habisend" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

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
            float: left;
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
    <script>

        $(function () {

            var userAgentInfo = navigator.userAgent; //來源裝置核心

            var userAgentKeywords = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod", "MQQBrowser");

            //滿足userAgentKeywords其中一項核心，導向手機板
            for (var v = 0; v < userAgentKeywords.length; v++) {
                if (userAgentInfo.indexOf(userAgentKeywords[v]) > 0) {
                    window.location.href = "https://www.hawooo.com/mobile/habisend.aspx";
                }
            }
        }
         )
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- 開始驗證 著陸圖 開始-->
    <!-- css在main.css裡面 -->
    <section class="am-container am-text-center">
        <div class="habi-send-wrapper">
            <h3>驗證信已寄到你的信箱</h3>
            <div class="habi-send-text">
                <h5>完成驗證立刻享國際免運1次</h5>
                <p>
                    你挑台灣好物，我出國際運費<br>
                    我不對你好，誰來對你好呢<br>
                    放到過期絕對可惜唷!
                </p>
                <span>沒收到驗證信？<a href="http://www.hawooo.com/user/memberinfo.aspx">點我重新發送</a></span>
            </div>
            <div class="habi-send-btn">
                <!-- 去首頁 -->
                <a href="http://www.hawooo.com/user/index.aspx" style="padding-top: 10px" class="am-btn grey-btn">繼續購物</a>
                <a href="http://www.hawooo.com/user/cart1.aspx?ctype=1" style="padding-top: 10px" class="am-btn fuchsia-o-btn">去購物車</a>
            </div>
        </div>
    </section>
    <!-- 開始驗證 著陸圖 結束-->
    <style>
        .habi-send-wrapper {
            width: 400px;
            display: inline-block;
            background: white;
            text-align: center;
            padding: 20px;
        }

            .habi-send-wrapper h3 {
                margin: 0;
                padding: 20px 0;
                color: #ff0068;
                font-size: 1.4em;
                font-weight: 600;
            }

        .habi-send-text {
            margin: 0 0 1.2em 0;
        }

            .habi-send-text h5 {
                margin: 0;
                color: #595959;
                font-size: 15px;
                font-weight: normal;
            }

            .habi-send-text p {
                margin: 1rem 0;
                color: #595959;
                font-size: 14px;
            }

            .habi-send-text span {
                font-size: 12px;
                color: #a8a8a8;
            }

            .habi-send-text a {
                text-decoration: underline;
            }

        .habi-send-btn {
            padding: 0 0 1em 0;
        }

            .habi-send-btn .am-btn {
                width: 100px;
                margin: 0 10px;
                font-size: .8em;
            }

            .habi-send-btn .grey-btn {
                border: 1px solid #808080;
            }
    </style>
</asp:Content>

