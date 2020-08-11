<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="1111.aspx.cs" Inherits="mobile_1111" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div style="margin: 0 auto; padding: 120px 0px 0px 0px; width: 100%; max-width: 650px">
                <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
                    <li><a href="http://www.hawooo.com" target="_blank">
                        <img alt="雙11購好物，折扣、紅包、抽獎讓你拿不完" src="http://edm.hawooo.com/20161108/edm_img_01.png" style="float: left; display: block; width: 100%;" /></a></li>
                    <li><a href="http://www.hawooo.com" target="_blank">
                        <img alt="雙11購好物，折扣、紅包、抽獎讓你拿不完" src="http://edm.hawooo.com/20161108/edm_img_02.png" style="float: left; display: block; width: 70%;" /></a></li>
                    <li><a href="#">
                        <img alt="馬上領取GO" src="http://edm.hawooo.com/20161108/edm_img_03.png" style="float: left; display: block; width: 30%;" /></a></li>
                    <li><a href="http://www.hawooo.com" target="_blank">
                        <img alt="" src="http://edm.hawooo.com/20161108/edm_img_04.png" style="float: left; display: block; width: 100%;" /></a></li>
                    <li>
                        <asp:ImageButton ID="imgbtn1" runat="server" ImageUrl="http://edm.hawooo.com/20161108/edm_img_05.png" OnClick="imgbtn1_Click" style="float:left;display:block;width:50%;" />
                    </li>
                    <li>
                        <asp:ImageButton ID="Imgbtn2" runat="server" ImageUrl="http://edm.hawooo.com/20161108/edm_img_06.png" OnClick="Imgbtn2_Click" style="float:left;display:block;width:50%;" />
                    </li>
                    <li>
                         <asp:ImageButton ID="Imgbtn3" runat="server" ImageUrl="http://edm.hawooo.com/20161108/edm_img_07.png" OnClick="Imgbtn3_Click" style="float:left;display:block;width:50%;"  />
                    </li>
                    <li><a href="http://www.hawooo.com" target="_blank">
                        <img alt="" src="http://edm.hawooo.com/20161108/edm_img_08.png" style="float: left; display: block; width: 50%;" /></a></li>
                    <li><a href="http://www.hawooo.com" target="_blank">
                        <img alt="" src="http://edm.hawooo.com/20161108/edm_img_09.png" style="float: left; display: block; width: 100%;" /></a></li>
                    <li><a href="http://www.hawooo.com" target="_blank">
                        <img alt="" src="http://edm.hawooo.com/20161108/edm_img_10.png" style="float: left; display: block; width: 100%;" /></a></li>
                    <li><a href="http://www.hawooo.com" target="_blank">
                        <img alt="" src="http://edm.hawooo.com/20161108/edm_img_11.png" style="float: left; display: block; width: 100%;" /></a></li>
                    <li><a href="http://www.hawooo.com" target="_blank">
                        <img alt="" src="http://edm.hawooo.com/20161108/edm_img_12.png" style="float: left; display: block; width: 100%;" /></a></li>
                    <li><a href="http://www.hawooo.com" target="_blank">
                        <img alt="" src="http://edm.hawooo.com/20161108/edm_img_13.png" style="float: left; display: block; width: 90%;" /></a></li>
                    <li><a href="https://www.facebook.com/hawooohawooo" target="_blank">
                        <img alt="好物飛行粉絲專頁" src="http://edm.hawooo.com/20161108/edm_img_14.png" style="float: left; display: block; width: 10%;" /></a></li>
                    <li><a href="http://www.hawooo.com" target="_blank">
                        <img alt="" src="http://edm.hawooo.com/20161108/edm_img_15.png" style="float: left; display: block; width: 90%;" /></a></li>
                    <li><a href="http://myhawooo.blogspot.tw/" target="_blank">
                        <img alt="好物飛行Bolgger" src="http://edm.hawooo.com/20161108/edm_img_16.png" style="float: left; display: block; width: 10%;" /></a></li>
                    <li><a href="http://www.hawooo.com" target="_blank">
                        <img alt="" src="http://edm.hawooo.com/20161108/edm_img_17.png" style="float: left; display: block; width: 90%;" /></a></li>
                    <li><a href="https://www.instagram.com/hawooostyle/" target="_blank">
                        <img alt="好物飛行Instagram" src="http://edm.hawooo.com/20161108/edm_img_18.png" style="float: left; display: block; width: 10%;" /></a></li>
                </ul>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>

