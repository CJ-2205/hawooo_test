<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true"
    CodeFile="uwsale.aspx.cs" Inherits="mobile_uwsale" %>

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


            <div style="position: relative;">
                <img id="imgM" src="https://www.hawooo.com/images/ftp/20180809/u_edmm_01.png" runat="server" style="width: 100%" />
                <div style="position: absolute; width: 30%; bottom: 5%; right: 3%;" class="btnn btnns" data-clipboard-text="summer10">
                    <img src="https://www.hawooo.com/images/ftp/20180809/u_coupon.png" width="100%">
                </div>
            </div>


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




        <%--       <script>
            function SetSelClass(id) {
                $("li[name='select']").removeClass('select');
                $("#_" + id).addClass('select');
            }
        </script>--%>

        <div class="am-g am-slider am-slider-default am-slider-carousel">

            <ul class="am-avg-sm-12 style1 am-slides" style="width: 100%; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">

                <%--<li class="" id="_0" name="select" style="display: none;"></li>--%>

                <li id="_1" name="select" style="width: 25%; float: left; display: block; margin: 0; border: 0">
                    <a href="uwsale.aspx?did=1">
                        <img src="https://www.hawooo.com/images/ftp/20180809/u_iocn_01.png" draggable="false">
                    <%--    <span><br/>RM 45.90 up</span>--%>
                            <span><br/>性感迷人</span>
                    </a>
                </li>
                <li id="_2" name="select" style="width: 25%; float: left; display: block; margin: 0; border: 0">
                    <a href="uwsale.aspx?did=2">
                        <img src="https://www.hawooo.com/images/ftp/20180809/u_iocn_02.png" draggable="false">
                    <%--    <span><br/>RM 22.50 up</span>--%>
                            <span><br/>舒適自在</span>
                    </a>
                </li>
                <li id="_3" name="select" style="width: 25%; float: left; display: block; margin: 0; border: 0">
                    <a href="uwsale.aspx?did=3">
                        <img src="https://www.hawooo.com/images/ftp/20180809/u_iocn_03.png" draggable="false">
                    <%--    <span><br/>RM 39.90 up</span>--%>
                             <span><br/>運動塑身</span>
                    </a>
                </li>
                     <li id="_4" name="select" style="width: 25%; float: left; display: block; margin: 0; border: 0">
                    <a href="uwsale.aspx?did=4">
                        <img src="https://www.hawooo.com/images/ftp/20180809/u_iocn_04.png" draggable="false">
                      <%--  <span><br/>RM 42.90 up</span>--%>
                             <span><br/>晚安好夢</span>
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
                //$('.am-slider').flexslider({
                //    itemWidth: 100,
                //    itemMargin: 5,
                //    slideshow: false,
                //    controlNav: false,
                //    //keyboard: false,
                //    animationLoop: false,
                //    //startAt: id - 1

                //    // options
                //});


                //var other = $("#_0");
                //$("#_" + id).after(other.after(other).clone());
                //other.after($("#_" + id)).remove();


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
                  <%--  <div class="index-section-title" style="padding: 5px 0px; font-size: 14px">
                        <i class="icon-mic-outline"></i>
                        <asp:Literal ID="lit_title" runat="server"></asp:Literal>
                    </div>--%>
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

        <img style="width: 100%" src="https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" />
    </div>

    <%--  <script>
        function copy(s) {
            var clip_area = document.createElement('textarea');
            clip_area.textContent = s;

            document.body.appendChild(clip_area);
            clip_area.select();

            document.execCommand('copy');
            clip_area.remove();
        }
    </script>--%>

    <%--   <script>
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
    </script>--%>
    <script src="assets/js/clipboard.min.js"></script>
    <script>
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
    </script>
</asp:Content>
