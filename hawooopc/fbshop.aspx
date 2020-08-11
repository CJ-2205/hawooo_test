<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fbshop.aspx.cs" Inherits="user_fbshop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>HaWooo.com Facebook 購買頁面</title>
    <meta name="description" content="專門為年輕女孩們打造的平價時尚網站. HaWooo.com不只為你找到好東西,更與你追蹤台灣最實用的美妝,保養,穿搭以及生活資訊,與妳分享如何用最簡單,平價的方式,一起品味時尚生活!" />
    <meta name="keywords" content="美妝,化妝品,生活用品,服裝,鞋子,配件,貼身衣物,內衣,86 shop,瘋狂賣客,生活童話,FM shoes,亞瑪勁,玉如阿姨,購物,台灣,海外,代購,直購,特價,保健美妝,生活百貨,流行服飾,婦幼親子" />
    <%-- <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">--%>


    <!-- Set render engine for 360 browser -->
    <meta name="renderer" content="webkit" />
    <!-- No Baidu Siteapp-->
    <meta http-equiv="Cache-Control" content="no-siteapp" />


    <!-- Add to homescreen for Chrome on Android -->
    <meta name="mobile-web-app-capable" content="yes" />


    <!-- Add to homescreen for Safari on iOS -->
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="apple-mobile-web-app-title" content="hawooo" />
    <link rel="apple-touch-icon-precomposed" href="../assets/i/app-icon72x72@2x.png" />

    <!-- Tile icon for Win8 (144x144 + tile color) -->
    <meta name="msapplication-TileImage" content="../assets/i/app-icon72x72@2x.png" />
    <meta name="msapplication-TileColor" content="#0e90d2" />


    <link href="../assets/css/amazeui.min.css" rel="stylesheet" />

    <link href="../assets/css/app.css" rel="stylesheet" />

    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/js/amazeui.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <%--<div class="am-container" style="max-width: 650px">
            <div class="am-u-sm-12">
                <div class="am-u-md-6">
                    <div class="am-u-md-12">
                        <asp:HiddenField ID="hf_WP08_1" runat="server" />
                        <asp:Image ID="mimg" runat="server" CssClass="am-img-responsive" Width="400" ClientIDMode="Static" />
                       
                    </div>
                    <div class="am-u-md-12">
                        <ul id="img_list" class="am-avg-md-5 am-avg-sm-5 am-gallery-bordered product">
                            <asp:Literal ID="lit_img_group" runat="server"></asp:Literal>

                        </ul>
                    </div>
                    <!--圖片切換-->
                    <script>
                        $(function () {
                            $("#img_list li").each(function () {
                                $(this).click(function () {
                                    $("#mimg").attr("src", $(this).find('img').attr("src"));
                                })
                            });
                        })
                    </script>
                </div>
                <div class="am-u-md-6" style="padding: 0px 5px 15px 5px">

                    <asp:HiddenField ID="hf_WP01" runat="server" />
                    <div class="detail_title" style="color: #636363; padding-left: 10px; font-size: 20px; font-weight: 800">
                        <asp:Literal ID="lit_WP02" runat="server"></asp:Literal>
                    </div>
                    <div style="padding: 10px">
                        <asp:Literal ID="lit_WP21" runat="server"></asp:Literal>
                    </div>
                    <hr data-am-widget="divider" style="" class="am-divider am-divider-default" />
                    <asp:UpdatePanel ID="up_type" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <div class="detail_from_info">
                                <table style="color: #7c7c7c">
                                    <tr>
                                        <td>規格：
                                        </td>
                                        <td>
                                            <asp:HiddenField ID="hf_WPA04" runat="server" />
                                            <asp:DropDownList ID="ddl_WPA02" runat="server" Width="250px" AutoPostBack="true" OnSelectedIndexChanged="ddl_WPA02_SelectedIndexChanged">
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;&nbsp;&nbsp;數量：
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddl_D10" runat="server" Width="70px">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>

                                </table>
                            </div>

                            <hr data-am-widget="divider" class="am-divider am-divider-default" />
                            <div class="detail_price">
                                <span class="am-u-sm-12">售價：<span style="font-size: 28px"> RM 
                                    <asp:Literal ID="lit_WPA06" runat="server"></asp:Literal></span>
                                    <span style="text-decoration: line-through; color: #808080">
                                        <asp:Literal ID="lit_WPA10" runat="server"></asp:Literal></span><span style="color: #808080"></span>
                                </span>
                            </div>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="ddl_WPA02" EventName="SelectedIndexChanged" />
                        </Triggers>
                    </asp:UpdatePanel>
                  
                </div>
            </div>
        </div>--%>

    </form>
</body>
</html>
