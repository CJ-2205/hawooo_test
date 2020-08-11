<%@ Page Language="C#" AutoEventWireup="true" CodeFile="27nobuyA.aspx.cs" Inherits="Webform_27nobuyA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
          <center style="max-width: 650px; width: 100%; margin: 0 auto;">
                      <!--表頭免運開始-->

        <div>
            <img alt="海外正品、199免運、3-10到貨" src="https://www.hawooo.com/images/ftp/20171113member/edm_01.png" style="width:100%" />
        </div>
     <!--Hawooo Logo-->
        <div>
            <a href="https://www.hawooo.com/user/index.aspx?utm_source=email&utm_medium=edm&utm_campaign=27days_firstbuy&utm_content=27days_firstbuy%20-%20A" target="_blank">
                <img alt="Hawooo" src="https://www.hawooo.com/images/ftp/20171113member/edm_02.png" style="width:100%" />
            </a>
        </div>
                      <!--上方選單-->
        <div>
            <a href="https://www.hawooo.com/user/index.aspx?utm_source=email&utm_medium=edm&utm_campaign=27days_firstbuy&utm_content=27days_firstbuy%20-%20A" target="_blank"><img alt="Home" src="https://www.hawooo.com/images/ftp/20171113member/edm_03.png" style="float:left;display:block;width:25%;" /></a>
            <a href="https://www.hawooo.com/user/brandlist.aspx?utm_source=email&utm_medium=edm&utm_campaign=27days_firstbuy&utm_content=27days_firstbuy%20-%20A" target="_blank"><img alt="Top Brand" src="https://www.hawooo.com/images/ftp/20171113member/edm_04.png" style="float:left;display:block;width:20%;" /></a>
            <a href="https://www.hawooo.com/user/newProduct.aspx?utm_source=email&utm_medium=edm&utm_campaign=27days_firstbuy&utm_content=27days_firstbuy%20-%20A" target="_blank"><img alt="最新商品" src="https://www.hawooo.com/images/ftp/20171113member/edm_05.png" style="float:left;display:block;width:25%;" /></a>
            <a href="https://www.hawooo.com/user/hotProduct.aspx?utm_source=email&utm_medium=edm&utm_campaign=27days_firstbuy&utm_content=27days_firstbuy%20-%20A" target="_blank"><img alt="Hot Sale" src="https://www.hawooo.com/images/ftp/20171113member/edm_06.png" style="float:left;display:block;width:30%;" /></a>
        </div>

                <div style="width:80%">
                    <!--內容區塊-->
        <div style="width:100%;max-width:580px;background-color:#F0F0F0 ">
            <!--上方宣傳圖片-->

            <div>
                <a href="https://www.hawooo.com/user/index.aspx?utm_source=email&utm_medium=edm&utm_campaign=27days_firstbuy&utm_content=27days_firstbuy%20-%20A" target="_blank">
                    <img alt="Hawooo最近熱賣的商品" src="https://www.hawooo.com/images/ftp/20171113member/27nobuyA/edm_10.png" style="width:100%;float:left" />
                </a>
            </div>
                 <div>
                <a href="https://www.hawooo.com/user/index.aspx?utm_source=email&utm_medium=edm&utm_campaign=27days_firstbuy&utm_content=27days_firstbuy%20-%20A" target="_blank">
                    <img alt="Hawooo最近熱賣的商品" src="https://www.hawooo.com/images/ftp/20171113member/27nobuyA/edm_12.png" style="width:100%;float:left" />
                </a>
            </div>
            <!--商品區塊-->
            <div>
                <ul style="list-style-type:none;margin:0;padding: 0;width:100%;float:left;background-color:#F0F0F0;">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <li class="am-fl" style="width:45%;padding:1%;margin:1% 1% 0% 2%; background: white;display:block;float:left">
                             <a href="https://www.hawooo.com/user/productdetail.aspx?id=<%# Eval("WP01") %>&utm_source=email&utm_medium=edm&utm_campaign=27days_firstbuy&utm_content=27days_firstbuy%20-%20A" style="text-decoration:none">
                             <img src="https://www.hawooo.com/images/webimgs/<%# Eval("WP08_1") %>" style="width:100%;">
                              <h4 style="margin: 5px 5px;height: 40px;overflow: hidden;font-size:medium;line-height: 20px;color:#535252">
                                 <%# Eval("WP02") %></h4>
                                <p style="margin: 5px 5px 0 5px;font-size:small;color:red">
                                <span style="font-size:medium;color:red;float:left">RM <%# Eval("PRICE") %></span>
                                <span class="am-fr" style="line-height: 25px;color:#ffffff;display: inline;background-color:#3cbcbe;padding: 2px 15px;font-weight:bolder;float: right;">GO!</span>
                              </p>
                             </a>
                           </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>

            <div>
                <a href="https://www.hawooo.com/user/index.aspx?utm_source=email&utm_medium=edm&utm_campaign=27days_firstbuy&utm_content=27days_firstbuy%20-%20A" target="_blank">
<img alt="more items" src="https://www.hawooo.com/images/ftp/20171113member/27nobuyA/edm_15.png" style="float:left;display:block;width:100%;" />
                </a>
<img src="https://www.hawooo.com/images/ftp/20171113member/27nobuyA/edm_17.png" style="float:left;display:block;width:100%;"/>

            </div>
               </div>

          </div>
              <div>
            <img alt="客戶服務電話與電郵" src="https://www.hawooo.com/images/ftp/20171113member/edm_09.png" style="float:left;display:block;width:40%;" />
            <a href="https://www.hawooo.com/user/index.aspx？utm_source=email&utm_medium=edm&utm_campaign=27days_firstbuy&utm_content=27days_firstbuy%20-%20A" target="_blank"><img alt="我的帳戶 登入" src="https://www.hawooo.com/images/ftp/20171113member/edm_10.png" style="float:left;display:block;width:24%;" /></a>
            <a href="https://www.facebook.com/hawooohawooo" target="_blank"><img alt="Our Facebook" src="https://www.hawooo.com/images/ftp/20171113member/edm_11.png" style="float:left;display:block;width:36%;" /></a>
            <img src="https://www.hawooo.com/images/ftp/20171113member/edm_12.png" style="float:left;display:block;width:50%;" />
            <a href="https://www.instagram.com/hawooostyle/" target="_blank"><img alt="our instagram" src="https://www.hawooo.com/images/ftp/20171113member/edm_13.png" style="float:left;display:block;width:50%;" /></a>
        </div>
     

              </center>
    </form>
</body>
</html>
