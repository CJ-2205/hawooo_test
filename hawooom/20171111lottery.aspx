<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true"
    CodeFile="20171111lottery.aspx.cs" Inherits="mobile_20171111lottery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .beauty {
            background: url(https://www.hawooo.com/images/ftp/20171012/edmm_07.png)no-repeat;
            background-size: 100%;
            margin: 0px auto;
            padding: 0px;
        }

        .supplement {
            background: url(https://www.hawooo.com/images/ftp/20171012/edmm_10.png)no-repeat;
            background-size: 100%;
            height: 768px;
            margin: 0px auto;
            padding: 0px;
        }

        .life {
            background: url(https://www.hawooo.com/images/ftp/20171012/edmm_13.png)no-repeat;
            background-size: 100%;
            height: 760px;
            margin: 0px auto;
            padding: 0px;
        }

        .fashion {
            background: url(https://www.hawooo.com/images/ftp/20171012/edmm_16.png)no-repeat;
            background-size: 100%;
            height: 760px;
            margin: 0px auto;
            padding: 0px;
        }

        .mom {
            background: url(https://www.hawooo.com/images/ftp/20171012/edmm_19.png)no-repeat;
            background-size: 100%;
            height: 758px;
            margin: 0px auto;
            padding: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../2017motherday/assets/css/newyearmom.css" rel="stylesheet" />
    <script>
        $(function () {
            $("#body").removeClass("am-container");
        })
    </script>


    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;"><a href="https://www.facebook.com/hawooohawooo" target="_blank">
                <img alt="禮物天天抽 11/30公佈粉絲團中獎名單" src="https://www.hawooo.com/images/ftp/20171101/edmm_01.png" style="float: left; display: block; width: 100%;" /></a></li>

            <li style="margin: 0;">
                <img alt="禮物天天抽" src="https://www.hawooo.com/images/ftp/20171101/edmm_02.png" style="float: left; display: block; width: 100%;" /></li>

            <asp:Panel ID="Panel1" runat="server">
                <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/brand_1.aspx?bid=101" target="_blank">
                    <img alt="婦潔" src="https://www.hawooo.com/images/ftp/20171101/edmm_03.png" style="float: left; display: block; width: 100%;" /></a></li>



                <li style="margin: 0;"><a href="http://www.hawooo.com/user/productdetail.aspx?id=9810" target="_blank">
                    <img alt="【婦潔VIGILL】私密清潔旅行3件組" src="https://www.hawooo.com/images/ftp/20171101/edmm_04.png" style="float: left; display: block; width: 100%;" /></a></li>


                <li style="margin: 0;"><a href="http://www.hawooo.com/user/productdetail.aspx?id=9820" target="_blank">
                    <img alt="【婦潔VIGILL慕斯經典組" src="https://www.hawooo.com/images/ftp/20171101/edmm_05.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a href="http://www.hawooo.com/user/productdetail.aspx?id=9809" target="_blank">
                    <img alt="【婦潔VIGILL】私密守護補充組-1組" src="https://www.hawooo.com/images/ftp/20171101/edmm_06.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a href="http://www.hawooo.com/user/productdetail.aspx?id=9810" target="_blank">
                    <img alt="【婦潔VIGILL】私密清潔旅行3件組" src="https://www.hawooo.com/images/ftp/20171101/edmm_07.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a href="http://www.hawooo.com/user/productdetail.aspx?id=9820" target="_blank">
                    <img alt="【婦潔VIGILL慕斯經典組" src="https://www.hawooo.com/images/ftp/20171101/edmm_08.png" style="float: left; display: block; width: 100%;" /></a></li>
            </asp:Panel>
        </ul>
    </div>




    <%--    第二塊  時間沒到--%>
    <asp:Panel ID="Panel2" runat="server">
        <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
                <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=%E6%A9%98%E5%AD%90%E5%B7%A5%E5%9D%8A" target="_blank">
                    <img alt="橘子工坊coming soon" src="https://www.hawooo.com/images/ftp/20171101/edmmnew_09.png" style="float: left; display: block; width: 100%;" /></a></li>
            </ul>
        </div>
    </asp:Panel>


    <!--第二塊  時間到了解除束縛-->
    <asp:Panel ID="Panel3" runat="server">
        <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
            <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">


                <li style="margin: 0;"><a href="http://www.hawooo.com/mobile/search.aspx?stxt=%E6%A9%98%E5%AD%90%E5%B7%A5%E5%9D%8A" target="_blank">
                    <img alt="橘子工坊" src="https://www.hawooo.com/images/ftp/20171101/edmm_09.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=10771" target="_blank">
                    <img alt="橘子工坊 衣物類天然濃縮洗衣精1800ml-制菌活力" src="https://www.hawooo.com/images/ftp/20171101/edmm_10.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=10770" target="_blank">
                    <img alt="橘子工坊 衣物類天然濃縮洗衣精1800ml-低敏親膚" src="https://www.hawooo.com/images/ftp/20171101/edmm_11.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=10765" target="_blank">
                    <img alt="橘子工坊 重油汙碗盤洗滌液 500ml" src="https://www.hawooo.com/images/ftp/20171101/edmm_12.png" style="float: left; display: block; width: 100%;" /></a></li>

                <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=10764" target="_blank">
                    <img alt="橘子工坊 溫和護手碗盤洗滌液 500ml" src="https://www.hawooo.com/images/ftp/20171101/edmm_13.png" style="float: left; display: block; width: 100%;" /></a></li>




                <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=10769" target="_blank">
                    <img alt="橘子工坊 領袖衣領精 480ml" src="https://www.hawooo.com/images/ftp/20171101/edmm_14.png" style="float: left; display: block; width: 100%;" /></a></li>

            </ul>
        </div>
    </asp:Panel>




    <!--footer開始-->

    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px;">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;">
                <img alt="禮物天天抽 備註說明" src="https://www.hawooo.com/images/ftp/20171101/edmm_15.png" style="float: left; display: block; width: 100%;" /></li>

            <li style="margin: 0;"><a href="https://www.facebook.com/hawooohawooo" target="_blank">
                <img alt="禮物天天抽第二波 中獎名單要公佈了" src="https://www.hawooo.com/images/ftp/20171101/edmm_16.png" style="float: left; display: block; width: 100%;" /></a></li>


        </ul>
    </div>


    <!--[if (gte IE 9)|!(IE)]><!-->
    <script src="assets/js/jquery.min.js"></script>
    <!--<![endif]-->
    <script src="assets/js/amazeui.min.js"></script>
    <script>
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
    </script>

</asp:Content>
