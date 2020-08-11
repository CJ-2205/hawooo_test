<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20171111lottery.aspx.cs" Inherits="user_20171111lottery" %>

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
                    window.location.href = "https://www.hawooo.com/mobile/20171111lottery.aspx";
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
                <a href="https://www.facebook.com/hawooohawooo" target="_blank">
                    <img alt="好禮天天抽 將在11/30公佈得獎名單" src="https://www.hawooo.com/images/ftp/20171101/edm_01.png" style="width: 100%;" /></a>

                <img alt="好禮天天抽 買一次一次中獎機會" src="https://www.hawooo.com/images/ftp/20171101/edm_02.PNG" style="width: 100%;" />

                <asp:Panel ID="Panel1" runat="server">
                    <a href="https://www.hawooo.com/user/brands.aspx?bid=101" target="_blank">
                        <img alt="婦潔" src="https://www.hawooo.com/images/ftp/20171101/edm_03.png" style="width: 100%;" /></a>


                    <a href="http://www.hawooo.com/user/productdetail.aspx?id=9810" target="_blank">
                        <img alt="【婦潔VIGILL】私密清潔旅行3件組" src="https://www.hawooo.com/images/ftp/20171101/edm_04.png" style="width: 20%;" /></a>

                    <a href="http://www.hawooo.com/user/productdetail.aspx?id=9820" target="_blank">
                        <img alt="【婦潔VIGILL慕斯經典組" src="https://www.hawooo.com/images/ftp/20171101/edm_05.png" style="width: 20%;" /></a>

                    <a href="http://www.hawooo.com/user/productdetail.aspx?id=9809" target="_blank">
                        <img alt="【婦潔VIGILL】私密守護補充組-1組" src="https://www.hawooo.com/images/ftp/20171101/edm_06.png" style="width: 20%;" /></a>

                    <a href="http://www.hawooo.com/user/productdetail.aspx?id=9810" target="_blank">
                        <img alt="【婦潔VIGILL】私密清潔旅行3件組" src="https://www.hawooo.com/images/ftp/20171101/edm_07.png" style="width: 20%;" /></a>

                    <a href="http://www.hawooo.com/user/productdetail.aspx?id=9820" target="_blank">
                        <img alt="【婦潔VIGILL慕斯經典組" src="https://www.hawooo.com/images/ftp/20171101/edm_08.png" style="width: 20%;" /></a>


                </asp:Panel>
            </div>
        </div>
    </div>



    <%-- 第二塊  時間沒到--%>
    <asp:Panel ID="Panel2" runat="server">
        <div class="minbox">
            <div class="content-full">
                <div class="listbox-full">
                    <a href="https://www.hawooo.com/user/search.aspx?stxt=%E6%A9%98%E5%AD%90%E5%B7%A5%E5%9D%8A" target="_blank">
                        <img alt="橘子工坊" src="https://www.hawooo.com/images/ftp/20171101/edmnew_09.png" style="width: 1180px;" /></a>
                </div>
            </div>
        </div>
    </asp:Panel>


    <!--第二塊  時間到了解除束縛-->
    <asp:Panel ID="Panel3" runat="server">
        <div class="minbox">
            <div class="content-full">
                <div class="listbox-full">
                    <a href="https://www.hawooo.com/user/search.aspx?stxt=%E6%A9%98%E5%AD%90%E5%B7%A5%E5%9D%8A" target="_blank">
                        <img alt="橘子工坊" src="https://www.hawooo.com/images/ftp/20171101/edm_09.png" style="width: 100%;" /></a>

                    <a href="https://www.hawooo.com/user/productdetail.aspx?id=10771" target="_blank">
                        <img alt="橘子工坊 衣物類天然濃縮洗衣精1800ml-制菌活力" src="https://www.hawooo.com/images/ftp/20171101/edm_10.png" style="width: 20%;" /></a>

                    <a href="https://www.hawooo.com/user/productdetail.aspx?id=10770" target="_blank">
                        <img alt="橘子工坊 衣物類天然濃縮洗衣精1800ml-低敏親膚" src="https://www.hawooo.com/images/ftp/20171101/edm_11.png" style="width: 20%;" /></a>

                    <a href="https://www.hawooo.com/user/productdetail.aspx?id=10765" target="_blank">
                        <img alt="橘子工坊 重油汙碗盤洗滌液 500ml" src="https://www.hawooo.com/images/ftp/20171101/edm_12.png" style="width: 20%;" /></a>

                    <a href="https://www.hawooo.com/user/productdetail.aspx?id=10764" target="_blank">
                        <img alt="橘子工坊 溫和護手碗盤洗滌液 500ml" src="https://www.hawooo.com/images/ftp/20171101/edm_13.png" style="width: 20%;" /></a>

                    <a href="https://www.hawooo.com/user/productdetail.aspx?id=10769" target="_blank">
                        <img alt="橘子工坊 領袖衣領精 480ml" src="https://www.hawooo.com/images/ftp/20171101/edm_14.png" style="width: 20%;" /></a>


                </div>
            </div>
        </div>
    </asp:Panel>


    <!--下面footer開始-->
    <div class="minbox">
        <div class="content-full">
            <div class="listbox-full">

                <img alt="禮物天天抽備註" src="https://www.hawooo.com/images/ftp/20171101/edm_15.png" style="width: 100%;" />

                <a href="https://www.facebook.com/hawooohawooo" target="_blank">
                    <img alt="第二波 禮物天天抽 公佈名單" src="https://www.hawooo.com/images/ftp/20171101/edm_16.png" style="width: 100%;" /></a>

            </div>
        </div>
    </div>

</asp:Content>

