<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="event8.aspx.cs" Inherits="mobile_event8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container">
        <!-- 內容區 START -->
        <div class="page-main">
            <div style="margin: 0 auto; padding: 0; width: 100%; font-size: 0;">
                <ul style="margin: 0; padding: 0; list-style-type: none;">
                    <li style="float: left; display: block; width: 100%"><a href="http://www.hawooo.com/mobile/event8.aspx" target="_blank">

                        <img src="event/event8/images/xmas_01.png" width="100%" alt="會員聖誕大回饋" /></a></li>
                    <li style="float: left; display: block; width: 100%"><a href="http://www.hawooo.com/mobile/event8.aspx" target="_blank">
                        <img src="event/event8/images/xmas_02.png" width="100%" alt="每日一物" /></a></li>
                </ul>
                <div style="float: left; display: block; margin: 0 auto; padding: 0; font-size: 0; background: url(event/event8/images/xmas_bg.png);">
                    <ul style="margin: 20px 0 0 0; padding: 0; list-style-type: none; min-width: 320px;">
                        <asp:Repeater ID="plist" runat="server">
                            <ItemTemplate>
                                <li style="float: left; display: block; width: 90%; margin: 0 0 3% 5%; padding: 0; background: #ffffff;">
                                    <div style="position: relative;">
                                        <a style="position: absolute; top: 0; left: 15px; z-index: 999;">
                                            <span style="position: absolute; top: 20px; left: 10px; width: 50px; text-align: center; font-size: 14px; color: #fff; font-weight: bold;"><%# Convert.ToDateTime(Eval("day").ToString()).ToString("MM-dd") %></span>
                                            <img src="event/event8/images/day_bg.png"  />
                                        </a>
                                        <a href="http://www.hawooo.com/mobile/product.aspx?id=<%# Eval("id") %>" style="color: #000000; text-decoration: none;">
                                            <div class="am-u-sm-5" style="padding: 0px; margin: 0px">
                                                <img src="http://www.hawooo.com/images/webimgs/<%# Eval("img") %>" style="float: left; display: block; margin: 0; padding: 0; width: 100%" class="am-img" />
                                            </div>

                                            <div class="am-u-sm-7" style="padding: 0px; margin: 0px">
                                                <div style="float: left; display: block; margin: 0; padding: 0; width: 100%;">
                                                    <p style="float: left; display: block; width: 100%; background-color: #2a934a;">
                                                        <img src="event/event8/images/xmas_icon.png" style="float: left; display: block; padding-left: 10px; padding-top: 8px; min-width: 30px;" />
                                                        <span style="font-size: 16px; color: #fff; float: left; padding-left: 5px; padding-top: 8px; padding-bottom: 8px; width: 80%"><%# Eval("name") %></span>
                                                    </p>
                                                    <p style="float: left; display: block; margin: 0px 10px 10px 10px; padding: 0; width: 80%; line-height: 17px; font-size: 16px;">
                                                        <%# Eval("info") %>
                                                    </p>
                                                    <p style="float: left; display: block; padding: 0px 0px 0px 10px; margin: 0px; width: 100%;">
                                                        <span style="font-size: 14px; color: #beac8b; text-decoration: line-through;">RM<%# Eval("p2") %></span>
                                                    </p>
                                                    <p style="float: left; display: block; padding: 0px 0px 0px 10px; margin: 0px; width: 100%;">
                                                        <span style="display: block; font-size: 20px; font-weight: bold; color: #be1522;">RM <%# Eval("p1") %></span>
                                                    </p>
                                                </div>
                                            </div>
                                        </a>
                                        <p style="float: left; display: block; margin: 0; padding: 0; width: 100%; height: 20px; background-color: #e30613;"></p>

                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>


                    </ul>
                    <p>
                        <img src="event/event8/images/xmas_bottom.png" style="width: 100%;" />
                    </p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

