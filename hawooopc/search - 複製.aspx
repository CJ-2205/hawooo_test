<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true"
    CodeFile="search.aspx.cs" Inherits="usercode_search" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        function sendAppierSearchData(key, idList) {
            debugger;
            var appierRtListPage = key;
            var appierRtProductIDList = idList;

            //========= PLEASE DO NOT CHANGE BELOW =========
            if (typeof (window.APPIER_RETARGET) == 'undefined') {
                (function (w, d, s, m) {
                    var f = d.getElementsByTagName('script')[0],
                        j = d.createElement('script'),
                        ns = 'APPIER_RETARGET';
                    w._appierSendQueue = w._appierSendQueue || [];
                    w['appierRetargetJson'] = { id: s, site: m };
                    j.async = true;
                    j.src = '//jscdn.appier.net/aa.js?id=' + m;
                    f.parentNode.insertBefore(j, f);
                    !w[ns] && (w[ns] = {});
                    (!w[ns].send) && (w[ns].send = function (j) {
                        w._appierSendQueue.push(j);
                    });
                })(window, document, "ZFfm", "hawooo.com");
            }
            window.APPIER_RETARGET.send({ "t": "type_listpage", "content": appierRtListPage, "productIDList": appierRtProductIDList });
        };
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container">
        <script>
            $(function () {
                fbq('track', 'Search');
            })
        </script>
        <div class="g" style="padding-bottom: 20px;">
            <!--<div class="product_list_title am-text-left">

                </div>-->
            <asp:UpdatePanel ID="up_shop" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:Panel ID="p_non_result" runat="server">
                        <div style="background-color: #c8c8c8; text-align: center; width: 100%; margin-top: 20px">
                            <p style="font-size: 22px; color: #717171; padding-top: 50px; font-weight: 800">
                                找不到與
                                <asp:Literal ID="lit_stxt" runat="server"></asp:Literal>
                                有關的結果
                            </p>
                            <p style="padding-top: 15px; font-size: 20px; color: #717171; font-weight: 800">
                                請檢查是否有錯字，或重新搜尋其他的字詞吧!</p>
                            <p style="padding: 20px 0px 50px 0px; font-size: 16px; color: #717171; font-weight: 600">
                                你可以逛逛: <a href="market.aspx">好物市集</a>、<a href="group.aspx">限時團購</a></p>
                        </div>
                    </asp:Panel>
                    <ul class="am-avg-md-4 am-avg-sm-1 am-gallery-bordered product">
                        <asp:Repeater ID="rp_product_list" runat="server">
                            <ItemTemplate>
                                <li>
                                    <div class="p-style">
                                        <div class="p-style-pic">
                                            <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>'>
                                                <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>'
                                                    class="lazyload am-img-responsive" />
                                                <%# !Eval("WP30").ToString().Equals("") ? "<span class=\"tag-chinese\">" + Eval("WP30").ToString()　+ "</span>" : "" %>
                                            </a>
                                            <%--    <span class="guess-you-like-button">
                                                    <span class="am-icon-heart-o white-o"></span>
                                                    <span class="am-icon-heart-o pink-o"></span>
                                                </span>--%>
                                        </div>
                                        <div class="p-style-text">
                                            <asp:HiddenField ID="hf_WP01" runat="server" Value='<%# Eval("WP01") %>' />
                                            <a href='<%# "productdetail.aspx?id=" + Eval("WP01") + (Request.QueryString["eid"] != null ? "&eid=" + Request.QueryString["eid"].ToString() : "") + (Request.QueryString["cid"] != null ? "&cid=" + Request.QueryString["cid"].ToString() : "")  %>'>
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
                                            </a>
                                        </div>
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                    <asp:Panel ID="panel_no_products" runat="server">
                        <div style="font-size: 20px; color: #888888; text-align: center;">
                            <asp:Literal ID="lit_msg" runat="server"></asp:Literal>
                        </div>
                    </asp:Panel>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
