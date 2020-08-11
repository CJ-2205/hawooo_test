<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="1111.aspx.cs" Inherits="user_1111" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .minbox {
            margin: 0 auto;
            width: 1180px;
        }

        .content-full {
            margin: 0 auto;
            padding: 0;
            width: 1180px;
        }

        .listbox-full {
            float: left;
            display: block;
            font-size: 0;
            margin: 0;
            width: 1180px;
        }

            .listbox-full img {
                float: left;
                display: block;
                margin: 0;
                padding: 0;
                font-size: 0;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="minbox">
                <div class="content-full">
                    <div class="listbox-full">
                        <a href="http://www.hawooo.com/" target="_blank">
                            <img alt="雙11購好物，折扣、紅包、抽獎讓你拿不完" src="../images/events/1111/images/pc_page_01.png" style="width: 1180px;" /></a>
                        <a href="http://www.hawooo.com/" target="_blank">
                            <img alt="天天領紅包" src="../images/events/1111/images/pc_page_02.png" style="width: 787px;" /></a>
                        <img alt="馬上領取GO" src="../images/events/1111/images/pc_page_03.png" style="width: 266px;" />
                        <a href="http://www.hawooo.com/" target="_blank">
                            <img alt="" src="../images/events/1111/images/pc_page_04.png" style="width: 127px;" /></a>
                        <img alt="" src="../images/events/1111/images/pc_page_05.png" style="width: 132px;" />

                        <asp:ImageButton ID="imgbtn1" runat="server" ImageUrl="../images/events/1111/images/pc_page_06.png" OnClick="imgbtn1_Click" Style="width: 307px; float: left" />
                        <asp:ImageButton ID="Imgbtn2" runat="server" ImageUrl="../images/events/1111/images/pc_page_07.png" OnClick="Imgbtn2_Click" Style="width: 312px; float: left" />
                        <asp:ImageButton ID="Imgbtn3" runat="server" ImageUrl="../images/events/1111/images/pc_page_08.png" OnClick="Imgbtn3_Click" Style="width: 302px; float: left" />

                        <img alt="" src="../images/events/1111/images/pc_page_09.png" style="width: 127px;" />
                        <a href="http://www.hawooo.com/" target="_blank">
                            <img alt="紅包折扣卷領取方式" src="../images/events/1111/images/pc_page_10.png" style="width: 1180px;" /></a>
                        <a href="http://www.hawooo.com/" target="_blank">
                            <img alt="雙11當日消費流程，全館紅包折扣卷，消費滿額現抵" src="../images/events/1111/images/pc_page_11.png" style="width: 1180px;" /></a>
                        <a href="http://www.hawooo.com/" target="_blank">
                            <img alt="11月11日買就抽單身安慰獎" src="../images/events/1111/images/pc_page_12.png" style="width: 1180px;" /></a>
                        <a href="http://www.hawooo.com/" target="_blank">
                            <img alt="抽獎活動公告" src="../images/events/1111/images/pc_page_13.png" style="width: 1180px;" /></a>
                    </div>
                </div>
            </div>
            
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>

