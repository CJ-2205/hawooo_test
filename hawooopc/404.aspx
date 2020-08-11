<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true"
    CodeFile="404.aspx.cs" Inherits="user_404" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   <div class="am-container">
        <div class="am-u-sm-5">
            <table>
                <tr>
                    <td>
                        <span style="font-size: 24px; font-weight: 900; color: #60a0ef">本日精選</span> <span
                            style="font-size: 18px; font-weight: 900; color: #aaaaaa">也許你會喜歡...</span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <ul class="am-avg-sm-3 am-thumbnails">
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <li><a href="productdetail.aspx?id=<%# Eval("WP01") %>">
                                        <img src='<%# "../images/webimgs/" + Eval("WP08_1").ToString() %>' class="am-img-responsive"
                                            style="max-width: 150px" /></a> </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </td>
                </tr>
            </table>
        </div>
        <div class="am-u-sm-3">
            <table style="margin-top: 50px; margin-left: 30px">
                <tr>
                    <td>
                        <img src="../images/404/p/404.png" />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <div style="font-size: 20px; font-weight: 900; color: #aaaaaa">
                            我們找不到您想去的那一頁...<br />
                            請回上一頁重新選擇，<br />
                            或從頁面上方搜尋。
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: 20px; font-weight: 900; color: #aaaaaa">
                        <br />
                        您也可以<br />
                        <a href="fast.aspx">逛跨國快送</a> &nbsp;<a href="market.aspx"> 逛好物市集</a>
                    </td>
                </tr>
            </table>
        </div>
        <div class="am-u-sm-4">
            <table>
                <tr>
                    <td>
                        <div style="padding-top: 30px; padding-left: 40px">
                            <img src="../images/404/p/門.png" />
                        </div>
                    </td>
                </tr>
            </table>
        </div>
        <style>
            .className
            {
                font-size: 20px;
                color: #747475;
                padding: 10px;
            }
            
            .className a:hover
            {
                color: #444;
                padding: 0 6px 8px;
            }
            
            .className img
            {
                vertical-align: sub;
            }
        </style>
        <div class="am-u-sm-12" style="margin-bottom: 50px">
            <hr style="border-style: dotted; border-width: 2px; color: #808080" />
            <ul class="am-avg-sm-7 am-thumbnails">
                <li><a href="market.aspx?cid=42" class="className">
                    <img src="../images/404/p/美妝美體.png" style="width: 25px" alt="美妝美體 hawooo.com" />美妝美體</a></li>
                <li><a href="market.aspx?cid=46" class="className">
                    <img src="../images/404/p/包包配件.png" style="width: 25px" alt="包包配件 hawooo.com" />包包配件</a></li>
                <li><a href="market.aspx?cid=16" class="className">
                    <img src="../images/404/p/時尚美鞋.png" style="width: 25px" alt="時尚美鞋 hawooo.com" />時尚美鞋</a></li>
                <li><a href="market.aspx?cid=44" class="className">
                    <img src="../images/404/p/服裝內衣.png" style="width: 25px" alt="服裝內衣 hawooo.com" />服裝內衣</a></li>
                <li><a href="market.aspx?cid=47" class="className">
                    <img src="../images/404/p/特色食品.png" style="width: 25px" alt="食品保健 hawooo.com" />特色食品</a></li>
                <li><a href="market.aspx?cid=48" class="className">
                    <img src="../images/404/p/生活用品.png" style="width: 25px" alt="生活用品 hawooo.com" />生活用品</a></li>
                <li><a href="market.aspx?cid=49" class="className">
                    <img src="../images/404/p/媽咪寶貝.png" style="width: 25px" alt="媽咪寶貝 hawooo.com" />媽咪寶貝</a></li>
            </ul>
        </div>
    </div>
</asp:Content>
