<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddToCartToOldMember.aspx.cs" Inherits="Webform_AddToCartToOldMember" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        <center style="max-width: 650px; width: 100%; margin: 0 auto;">

        <div style="width: 100%; margin: 0 auto; float: left; display: block; max-width: 650px;">
            <!--表頭免運開始-->
            <div>
                <img alt="海外正品、199免運、3-10到貨" src="https://www.hawooo.com/images/ftp/20171113member/edm_01.png" style="float: left; display: block; width: 100%;" />
            </div>

            <!--Hawooo Logo-->
            <div>
                <a href="https://www.hawooo.com/user/index.aspx?utm_source=email&utm_medium=edm&utm_campaign=cart_reminder&utm_content=cart_reminder%20-%20A" target="_blank">
                    <img alt="Hawooo" src="https://www.hawooo.com/images/ftp/20171113member/edm_02.png" style="float: left; display: block; width: 100%;" /></a>

            </div>

            <!--上方選單-->
            <div style="width: 80%">

                <div>
                    <a href="https://www.hawooo.com/user/index.aspx?utm_source=email&utm_medium=edm&utm_campaign=cart_reminder&utm_content=cart_reminder%20-%20A" target="_blank">
                        <img alt="Home" src="https://www.hawooo.com/images/ftp/20171113member/edm_03.png" style="float: left; display: block; width: 25%;" /></a>
                    <a href="https://www.hawooo.com/user/brandlist.aspx?utm_source=email&utm_medium=edm&utm_campaign=cart_reminder&utm_content=cart_reminder%20-%20A" target="_blank">
                        <img alt="Top Brand" src="https://www.hawooo.com/images/ftp/20171113member/edm_04.png" style="float: left; display: block; width: 20%;" /></a>
                    <a href="https://www.hawooo.com/user/newProduct.aspx?utm_source=email&utm_medium=edm&utm_campaign=cart_reminder&utm_content=cart_reminder%20-%20A" target="_blank">
                        <img alt="最新商品" src="https://www.hawooo.com/images/ftp/20171113member/edm_05.png" style="float: left; display: block; width: 25%;" /></a>
                    <a href="https://www.hawooo.com/user/hotProduct.aspx?utm_source=email&utm_medium=edm&utm_campaign=cart_reminder&utm_content=cart_reminder%20-%20A" target="_blank">
                        <img alt="Hot Sale" src="https://www.hawooo.com/images/ftp/20171113member/edm_06.png" style="float: left; display: block; width: 30%;" /></a>

                </div>

                <!--內容開始-->
                <div>
                    <img alt="你愛的商品正在特價" src="https://www.hawooo.com/images/ftp/20171113member/maksaa-old_02_02.png" style="float: left; display: block; width: 100%;" />
                </div>


                <!-- 愛的商品 帶商品吧-->
                        <div id="cartul" style="width: 100%;height:auto" >
           <a href="https://www.hawooo.com/user/productdetail.aspx?id=*|ID1|*utm_source=email&utm_medium=edm&utm_campaign=cart_reminder&utm_content=cart_reminder%20-%20A" target="_blank" style="text-decoration: none;">
                        <div style="max-width: 650px;max-height: 218px;float: left;background-color: white;">
                            <div style="width: 198px;float: left;margin: 0;padding: 10px 0 10px 10px;height:198px;">
                                <img src="*|PIC1|*" alt="商品圖" style=" width: 178px;max-width: 220px;padding: 5%;" />
                            </div>
                            <div style="width: 292px;float: left;margin: 0;padding: 10px 0 10px 20px;height:126px;">
                                <span style=" font-size: 100%;line-height: 130%;font-weight: bold;overflow: hidden;float: left;text-align: left;font-family: Arial,Helvetica,sans-serif;color: #3a3a3c;padding: 2%;">*|NAME1|*</span>
                                <p style="font-size: small;color: #ed147f;margin: 10% 0 0 0;font-weight: bold;padding-top: 50px;">RM<span style=" font-size: 250%;margin: 0 10px 0 0;">*|PRICE1|*</span><del style="color: #939598;font-size: 100%;">*|OPRICE1|*</del></p>

                            </div>
                            <span  style="  font-family: Arial,Helvetica,sans-serif;font-weight: bold;display: inline-block;background-color: black;color: white;padding: 2% 10%;font-size: 80%;margin-bottom: 4%;">SHOP NOW</span>
                        </div>
                    </a> 
          <a href="https://www.hawooo.com/user/productdetail.aspx?id=*|ID2|*utm_source=email&utm_medium=edm&utm_campaign=cart_reminder&utm_content=cart_reminder%20-%20A" target="_blank" style="text-decoration: none;*|HIDDEN2|*">
                        <div style="max-width: 650px;max-height: 218px;float: left;background-color: #f8f8f8;">
                            <div style="width: 198px;float: left;margin: 0;padding: 10px 0 10px 10px;height:198px;">
                                <img src="*|PIC2|*" alt="商品圖" style=" width: 178px;max-width: 220px;padding:5%;" />
                            </div>
                            <div style="width: 292px;float: left;margin: 0;padding: 10px 0 10px 20px;height:126px;">
                                <span style=" font-size: 100%;line-height: 130%;font-weight: bold;overflow: hidden;float: left;text-align: left;font-family: Arial,Helvetica,sans-serif;color: #3a3a3c;padding: 2%;">*|NAME2|*</span>
                                <p style="font-size: small;color: #ed147f;margin: 10% 0 0 0;font-weight: bold;padding-top: 50px;">RM<span style=" font-size: 250%;margin: 0 10px 0 0;">*|PRICE2|*</span><del style="color: #939598;font-size: 100%;">*|OPRICE2|*</del></p>

                            </div>
                            <span  style="  font-family: Arial,Helvetica,sans-serif;font-weight: bold;display: inline-block;background-color: black;color: white;padding: 2% 10%;font-size: 80%;margin-bottom: 4%;">SHOP NOW</span>
                        </div>
                    </a>        
                               <a href="https://www.hawooo.com/user/productdetail.aspx?id=*|ID3|*utm_source=email&utm_medium=edm&utm_campaign=cart_reminder&utm_content=cart_reminder%20-%20A"  target="_blank" style="text-decoration: none;*|HIDDEN3|*">
                        <div style="max-width: 650px;max-height: 218px;float: left;background-color: white;">
                            <div style="width: 198px;float: left;margin: 0;padding: 10px 0 10px 10px;height:198px;">
                                <img src="*|PIC3|*" alt="商品圖" style=" width: 178px;max-width: 220px;padding: 5%;" />
                            </div>
                            <div style="width: 292px;float: left;margin: 0;padding: 10px 0 10px 20px;height:126px;">
                                <span style=" font-size: 100%;line-height: 130%;font-weight: bold;overflow: hidden;float: left;text-align: left;font-family: Arial,Helvetica,sans-serif;color: #3a3a3c;padding: 2%;">*|NAME3|*</span>
                                <p style="font-size: small;color: #ed147f;margin: 10% 0 0 0;font-weight: bold;padding-top: 50px;">RM<span style=" font-size: 250%;margin: 0 10px 0 0;">*|PRICE3|*</span><del style="color: #939598;font-size: 100%;">*|OPRICE3|*</del></p>

                            </div>
                            <span  style="  font-family: Arial,Helvetica,sans-serif;font-weight: bold;display: inline-block;background-color: black;color: white;padding: 2% 10%;font-size: 80%;margin-bottom: 4%;">SHOP NOW</span>
                        </div>
                    </a>  
                </div>





                <!--猜你也愛開始-->
                <div style="margin: 0;">
                    <img alt="猜你也愛" src="https://www.hawooo.com/images/ftp/20171113member/maksaa-old_04_02.png" style="float: left; display: block; width: 100%;" />
                </div>


                <!--猜你也愛 帶商品吧-->

                <div>
                    <ul style="list-style-type: none; margin: 0; padding: 0; width: 100%; float: left; background-color: #F0F0F0;">
                             <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <li class="am-fl" style="width:45%;padding:1%;margin:1% 1% 0% 2%; background: white;display:block;float:left">
                             <a href="https://www.hawooo.com/user/productdetail.aspx?id=<%# Eval("WP01") %>utm_source=email&utm_medium=edm&utm_campaign=cart_reminder&utm_content=cart_reminder%20-%20A" style="text-decoration:none">
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

                <!--廣告開始-->
                <div style="margin: 0;">
                    <a href="https://www.hawooo.com/user/index.aspx?utm_source=email&utm_medium=edm&utm_campaign=cart_reminder&utm_content=cart_reminder%20-%20A" target="_blank">
                        <img alt="逛更多優惠" src="https://www.hawooo.com/images/ftp/20171113member/maksaa_07_02.png" style="float: left; display: block; width: 100%;" /></a>
                </div>
            </div>

            <!--footer-->
            <div style="margin: 0;">
                <img alt="客戶服務電話與電郵" src="https://www.hawooo.com/images/ftp/20171113member/edm_09.png" style="float: left; display: block; width: 40%;" />
            </div>


            <div style="margin: 0;">
                <a href="https://www.hawooo.com/user/index.aspx?utm_source=email&utm_medium=edm&utm_campaign=cart_reminder&utm_content=cart_reminder%20-%20A" target="_blank">
                    <img alt="我的帳戶 登入" src="https://www.hawooo.com/images/ftp/20171113member/edm_10.png" style="float: left; display: block; width: 24%;" /></a>
            </div>


            <div style="margin: 0;">
                <a href="https://www.facebook.com/hawooohawooo" target="_blank">
                    <img alt="Our Facebook" src="https://www.hawooo.com/images/ftp/20171113member/edm_11.png" style="float: left; display: block; width: 36%;" /></a>
            </div>

            <div style="margin: 0;">
                <img src="https://www.hawooo.com/images/ftp/20171113member/edm_12.png" style="float: left; display: block; width: 50%;" />
            </div>

            <div style="margin: 0;">
                <a href="https://www.instagram.com/hawooostyle/" target="_blank">
                    <img alt="our instagram" src="https://www.hawooo.com/images/ftp/20171113member/edm_13.png" style="float: left; display: block; width: 50%;" /></a>
            </div>
        </div>

        </center>
    </form>
</body>
</html>
