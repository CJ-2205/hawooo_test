<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="dpaevent2.aspx.cs" Inherits="user_dpaevent2" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .getCoupon {
            /*display: inline-block;
            position: absolute;
            width: 300px;
            height: 333px;
            top: 0px;
            right: 0px;
            cursor: pointer*/
            display: inline-block;
            position: absolute;
            width: 360px;
            height: 150px;
            bottom: 120px;
            left: 320px;
            cursor: pointer;
        }

        .getSpend {
            display: inline-block;
            position: absolute;
            width: 310px;
            height: 150px;
            bottom: 120px;
            right: 0px;
            cursor: pointer;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container" style="background-color: #ffffff; width: 1000px">
        <div class="am-g" style="position: relative">

            <img src="../images/ftp/20180605/pc.png" width="100%" />
            <div class="getCoupon" onclick="RedeemCoupon();">
            </div>
            <div class="getSpend" onclick="GetSpend();">
            </div>
        </div>
        <script>
            function RedeemCoupon() {

                var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
                if (u != null)
                    $("#<%= button1.ClientID %>").click();
                else
                    doLogin('dpaevent2.aspx');
            }
            function GetSpend() {

                var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
                if (u != null)
                    $("#<%= button2.ClientID %>").click();
                else
                    doLogin('dpaevent2.aspx');
            }
        </script>
        <asp:UpdatePanel ID="up_add" runat="server">
            <ContentTemplate>
                <asp:Button runat="server" Text="Button" Style="display: none;" ID="button1" OnClick="button1_Click"></asp:Button>
                <asp:Button runat="server" Text="Button" Style="display: none;" ID="button2" OnClick="button2_Click"></asp:Button>
            </ContentTemplate>
        </asp:UpdatePanel>

        <div class="am-g">
            <ul class="am-avg-sm-4 style1">
                <li class="select" id="_1"  name="select">
                    <a href="dpaevent2.aspx?did=1">
                        <img src="../images/events/20180604/限量超值組合.png" width="100%" />
                        <span>限量超值組合</span>
                    </a>
                </li>
                <li name="select" id="_2" >
                    <a href="dpaevent2.aspx?did=2">
                        <img src="../images/events/20180604/帶美妝旅行去.png" width="100%" />
                        <span>帶美妝旅行去</span>
                    </a>
                </li>
                <li name="select" id="_3" >
                    <a href="dpaevent2.aspx?did=3">
                        <img src="../images/events/20180604/帶禮物回家去.png" width="100%" />
                        <span>帶禮物回家去</span>
                    </a>
                </li>
                <li name="select" id="_3" >
                    <a href="180601midsale.aspx">
                        <img src="../images/events/20180604/年中慶有更多.png" width="100%" />
                        <span>年中慶有更多</span>
                    </a>
                </li>
            </ul>
        </div>
        <script>
            function SetSelClass(id) {
                $("li[name='select']").removeClass('select');
                $("#_" + id).addClass('select');
            }
        </script>
        <div class="am-g">
            <ul class="am-avg-sm-5 am-gallery-bordered product" style="padding: 2px">
                <asp:Repeater ID="rp_product_list" runat="server">
                    <ItemTemplate>
                        <li>
                            <a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                <div class="p-style">
                                    <div class="p-style-pic">
                                        <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                            class="lazyload am-img-responsive" />
                                        <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
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

        <table width="999" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td width="8%" bgcolor="#000000"></td>

                    <td width="84%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 13px; text-transform: uppercase; color: #f8d1dd; padding: 20px 0px; line-height: 20px">RAYA SUMMER VACTION<br>
                        <span style="color: white;">• RM20現領現用     
                            <br />
                            於活動頁點選領取RM20折價券，只要於6.5(TUE.)-6.20(WED.)內消費滿RM199即可使用並抵扣RM20，等於限時直接送現金給妳唷。
                        <br />
                            •  花蓮縣餅登記送會員需於6.5(TUE.)-6.20(WED.)內<span style="color: #FF0000; text-decoration: underline;">完成訂購與付款且符合單筆滿RM299贈品門檻即可『登記』獲得花蓮縣餅</span>，只有限量100份，口味隨機，贈品發送完畢將不另行通知也不會提供其他贈品喔，取消/修改/未符合資格者恕不另行通知。
                        </span>
                        <br>
                        <br>
                        其他：<span style="color: white;"><br>
                            • 參加本活動者即同意受本活動辦法及注意事項之規範，如有違反本活動辦法及注意事項者，本公司得取消其參加或兌換資格，並對於任何破壞本活動之⾏為保留法律追訴權。其他明顯違反活動公平性之⽅式，意圖混淆或影響活動結果者，⼀經本公司發現或經第三⼈檢舉經查證屬實，本公司有權⽴即取消其得獎資格，除追回獎品外，並對於任何破壞本活動之⾏為保留法律追訴權。
• 本公司保留活動與贈品變更以及擁有修改及取消此活動的權利，無需事前通知，同時有對此活動之所有事宜有最終解釋與裁決權。
                        </span>
                    </td>

                    <td width="8%" bgcolor="#000000"></td>

                </tr>
            </tbody>
        </table>
        <img class="twoyearbottom" src="https://www.hawooo.com/images/ftp/20180312/footer.png" alt="hawooo.com" style="width: 100%;">
    </div>
</asp:Content>

