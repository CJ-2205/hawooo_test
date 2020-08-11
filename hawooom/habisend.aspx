<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="habisend.aspx.cs" Inherits="mobile_habisend" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- 內容區 START -->
    <!-- 開始驗證 著陸圖 開始-->
    <!-- css在main.css裡面 -->
    <section class="am-container">
        <div class="habi-send-wrapper">
            <h3>驗證信已寄到你的信箱</h3>
            <div class="habi-send-text">
                <h5>完成驗證立刻享國際免運1次</h5>
                <p>
                    你挑台灣好物，我出國際運費<br>
                    我不對你好，誰來對你好呢<br>
                    放到過期絕對可惜唷!
                </p>
                <span>沒收到驗證信？<a style="color: #0e90d2" href="https://www.hawooo.com/mobile/memberinfo.aspx">點我重新發送</a></span>
            </div>
            <div class="habi-send-btn">
                <!-- 去首頁 -->
                <%--  <button class="am-btn grey-btn" >繼續購物</button>
                    <button class="am-btn fuchsia-o-btn">去購物車</button>--%>
                <a href="https://www.hawooo.com/mobile/index.aspx" class="am-btn grey-btn" style="padding-top: 10px">繼續購物</a>
                <a href="https://www.hawooo.com/mobile/cart1.aspx?ctype=1" class="am-btn fuchsia-o-btn" style="padding-top: 10px">去購物車</a>

            </div>
        </div>
    </section>
    <!-- 開始驗證 著陸圖 結束-->

    <style>
        .habi-send-wrapper {
            background: white;
            text-align: center;
            height: calc(100vh - 380px);
            min-height: 300px;
        }

            .habi-send-wrapper h3 {
                margin: 0;
                padding: 20px 0;
                color: #ff0068;
                font-size: 1.2em;
                font-weight: 600;
            }

        .habi-send-text {
            margin: 0 0 1.2em 0;
        }

            .habi-send-text h5 {
                margin: 0;
                color: #565656;
                font-size: 1em;
                font-weight: normal;
            }

            .habi-send-text p {
                margin: 1rem 0;
                color: #565656;
                font-size: .9em;
            }

            .habi-send-text span {
                font-size: .8em;
                color: #999999;
            }

            .habi-send-text a {
                text-decoration: underline;
            }

        .habi-send-btn {
            padding: 0 0 1em 0;
        }

            .habi-send-btn button {
                width: 100px;
                margin: 0 10px;
                font-size: .8em;
            }

            .habi-send-btn .grey-btn {
                border: 1px solid #737373;
            }
    </style>
</asp:Content>
