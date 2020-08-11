<%@ Page Language="C#" AutoEventWireup="true" CodeFile="180418.aspx.cs" Inherits="_180418" MasterPageFile="~/mobile/mobile.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
  <style>
	.pnamem{
  margin: 5px 5px;
		height: 40px;
		overflow: hidden;
		font-size:medium;
		line-height: 20px;
		color:#535252	
	}
	
	.deletepricem{
		line-height: 28px;
		color:dimgrey;
		font-size:smaller;
		margin-bottom: -20px;
	}
	.discountpricem{
		margin: 5px 5px 0 5px;
		font-size:small;
		color:red;
	}
	
	.box{
	    width:calc(50% - 10px);
		background: white;
		padding:3%;
		margin: 5px;
		height: calc(100% - 20px);
		border-radius: 30px;	
	}
</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block; max-width: 650px; background-color: #FBEA1F">
        <img alt="台灣年貨大街" src="https://www.hawooo.com/images/ftp/20180418/edmm_01.png" style="float: left; display: block; width: 100%;" />

        <!--系統開始帶商品-->
        <!--下方商品-->
        <div style="position: relative; max-width: 650px; float: center; margin: 0 auto;">
            <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto; height: auto;">
                <ul style="height: 50%; list-style-type: none; margin: 0px 6%; padding: 0; background-color: #FBEA1F">

                    <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                        <ItemTemplate>
                            <li class="am-fl box">
                                <a href="product.aspx?id=<%# Eval("WP01") %>">
                                    <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                    <h4 class="pnamem"><a style="color: #535252;" href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                        <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                    <p class="discountpricem">
                                        RM<span style="font-size: medium; letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px; color: dimgrey; font-size: smaller; margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                    </p>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
        <!--footer-->

        <footer class="fullBanner am-show-sm">
            <img src="https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" alt="HaWooo.com">
        </footer>

    </div>

    <script type="text/javascript" src="171027.js"></script>
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


        function getThisId(e) {
            var thisHref = $(e).attr("data-id").split("#")[1];
            var thisDivTop = $("body").find("#" + thisHref).offset().top - 100;
            //var thisDivTop = $("body").find("#" + thisHref).offset().top;
            $("body,html").stop(true, false).animate({ scrollTop: thisDivTop }, 500);
        }
    </script>
</asp:Content>
