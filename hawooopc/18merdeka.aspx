<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="18merdeka.aspx.cs" Inherits="user_18merdeka" %>

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
                <img id="imgM" src="https://www.hawooo.com/images/ftp/20180814/edm_01.png" runat="server" style="width: 100%" />
                <div style="position: absolute; width: 27%; bottom: 50%; right: 15.3%;" class="btnn btnns" data-clipboard-text="merdeka21">
                    <img src="https://www.hawooo.com/images/ftp/20180814/21.png" width="100%">
                </div>
                <div style="position: absolute; width: 27%; bottom: 1.5%; right: 15.2%;" class="btnn btnns" data-clipboard-text="merdeka31">
                    <img src="https://www.hawooo.com/images/ftp/20180814/31.png" width="100%">
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
        <div class="am-g am-slider am-slider-default am-slider-carousel" style="margin-bottom: 0">

            <%--        <div data-am-widget="slider" class="am-slider am-slider-default" data-am-slider='{&quot;animation&quot;:&quot;slide&quot;,&quot;animationLoop&quot;:false,&quot;itemWidth&quot;:200,&quot;itemMargin&quot;:5}'>--%>
            <%-- </div>--%>
            <ul class="am-avg-sm-12 style1 am-slides" >
                <li id="_1" name="select" style="width: 50%; float: left; display: block; margin: 0; border: 0">
                    <a href="18merdeka.aspx?did=1">
                        <img src="https://www.hawooo.com/images/ftp/20180814/edm_02.png" draggable="false" style="padding: 0" id="img1" runat="server">
                        <%--           <span>RM 39.90 up</span>--%>
                    </a>
                </li>
                <li id="_2" name="select" style="width: 50%; float: left; display: block; margin: 0; border: 0">
                    <a href="18merdeka.aspx?did=2">
                        <img src="https://www.hawooo.com/images/ftp/20180814/edm_03.png" draggable="false" style="padding: 0;width:500px" id="img2" runat="server">
                        <%--  <span>RM 45.90 up</span>--%>
                    </a>
                </li>

            </ul>
        </div>
        <%--      <script>
            function SetSelClass(id) {
                $("li[name='select']").removeClass('select');
                $("#_" + id).addClass('select');
            }
        </script>--%>
        <div class="am-g" id="panel" >
            <ul class="am-avg-sm-4 am-gallery-bordered product" style="padding: 2px">
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



        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="5%" bgcolor="#000000"></td>

                    <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: small; color: #f8d1dd; padding: 20px 0px; line-height: normal;">活動期間：<br />
                        <span style="color: white;">． 即日起～2018年8月31日<br>
                        </span>
                        <br />
                        活動介紹：<br>
                        <span style="color: white;">． 特別推出「UP TO 66% OFF 限量商品」，數量有限，依實際結帳成功之訂單順序作為購買資格認定<br />
                            ． 商品消費金額達RM190可折價RM21，請於結帳時輸入折扣序號「merdeka21」<br />
                            ． 商品消費金額達RM250可折價RM31，請於結帳時輸入折扣序號「merdeka31」<br />
                        </span>
                        <br />
                        注意事項：<span style="color: white;">
                            ※ 活動折扣序號不適用於「UP TO 66% OFF 限量商品」及品牌BHK’s、DR.CINK、Dr.Lady和UNIQMAN
                        </span></td>

                    <td width="5%" bgcolor="#000000"></td>

                </tr>
            </tbody>
        </table>

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
    <script>
        //for (var i = 1; i <= 10; i++) {
        //    var j = i - 1;
        //    $('#imgdivHot' + j).append('<img id=' + i + 'A src="https://www.hawooo.com/images/ftp/20180523/top' + i + '.gif" style="position: absolute; top: 0; margin: auto; width: 40%; left: 0;" />')
        //}
        function hot12() {
            for (var i = 1; i <= 12; i++) {
                var j = i - 1;
                $('#imgdivHot' + j).append('<img id=' + i + 'A src="https://www.hawooo.com/images/ftp/20180814/hot.png" style="position: absolute; top: 0; margin: auto; width: 45%; left: 0;" />')
            }
        };
        function up55(c) {
             var change = [21,22,23,24,5,18,19,20,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,1,2,3,4,41,42,7,8,43,10,11,12,13,14,15,16]
            for (var i = 1; i <= c; i++) {
                var j = i - 1;         
                $('#imgdivHot' + j).append('<img id=' + i + 'A src="https://www.hawooo.com/images/ftp/20180814/' + pad(change[j], 3) + '.png" style="position: absolute; top: 0; margin: auto; width: 45%; left: 0;" />')
            }
        };

        function pad(str, max) {
            str = str.toString();
            return str.length < max ? pad("0" + str, max) : str;
        }
    </script>
    <script src="assets/js/clipboard.min.js"></script>
    <script>

        function opacityImg(id, c) {
            //$("#_" + id).css("opacity", "0.8");
            if (id == 1)
                up55(c);
            else
                hot12();
            backcolorchange(id);
        };

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

        function backcolorchange(i) {
            var color = "#f7c701";
            if (i == 2)
                color = "#00b5b5";
            $("#panel").css("background-color", color);
        }
    </script>
</asp:Content>

