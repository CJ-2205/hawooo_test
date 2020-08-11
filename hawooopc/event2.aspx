<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="event2.aspx.cs" Inherits="user_event2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .dreamBox {
            margin: 0 auto;
            padding: 0;
            width: 1180px;
            background: url(../images/events/event2/images/dream-bg.png) repeat-y;
        }

        .dreamList {
            margin: 0 auto;
            padding: 0;
            width: 1143px;
        }

            .dreamList li {
                float: left;
                display: block;
                margin: 0 0 25px 0;
                padding: 0;
                width: 381px;
                height: 360px;
                list-style-type: none;
            }

                .dreamList li img {
                    border: 0;
                }

        input {
            border: 1px solid #BBBBBB;
            background: #fff;
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            border-radius: 3px;
        }

        .stable tr {
            line-height: 45px;
        }

            .stable tr td {
                font-size: 20px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container">
        <div class="am-g" style="background-color: #ffffff; margin-top: 20px; margin-bottom: 20px;">
            <div class="dreamBox">
                <img src="../images/events/event2/images/dream-banner.png" alt="Hawooo女孩全員募集中" />
                <ul class="dreamList">
                    <li><a href="http://www.hawooo.com/user/event4.aspx" target="_blank">
                        <img src="../images/events/event2/images/dream-list-1.png" alt="Dr.Douxi 賦活新生卵殼膜+薏沛健康機能水"></a></li>
                    <li><a href="http://www.hawooo.com/user/productdetail.aspx?id=460" target="_blank">
                        <img src="../images/events/event2/images/dream-list-2.png" alt="Dr.Douxi 杏仁全效煥白潤澤晶凍"></a></li>
                    <li><a href="http://www.hawooo.com/user/productdetail.aspx?id=456" target="_blank">
                        <img src="../images/events/event2/images/dream-list-3.png" alt="Dr.Douxi 頂級全效修護蝸牛面膜(1入)"></a></li>
                    <li><a href="http://www.hawooo.com/user/productdetail.aspx?id=457" target="_blank">
                        <img src="../images/events/event2/images/dream-list-4.png" alt="Dr.Douxi XIN NI SUNG 超水感激活面膜"></a></li>
                    <li><a href="http://www.hawooo.com/user/productdetail.aspx?id=619" target="_blank">
                        <img src="../images/events/event2/images/dream-list-5.png" alt="Dr.Douxi 海星QQ魔術俏顏保濕霜 50ML"></a></li>
                    <li><a href="http://www.hawooo.com/user/productdetail.aspx?id=479" target="_blank">
                        <img src="../images/events/event2/images/dream-list-6.png" alt="Dr.Douxi 腋下美白去味去角質霜80ml"></a></li>
                    <li><a href="http://www.hawooo.com/user/productdetail.aspx?id=614" target="_blank">
                        <img src="../images/events/event2/images/dream-list-7.png" alt="Dr.Douxi 粉刺光溜3件組 (粉刺軟化水20ml+粉刺拔除膜50ml+毛孔收斂水20ml)"></a></li>
                    <li><a href="http://www.hawooo.com/user/productdetail.aspx?id=464" target="_blank">
                        <img src="../images/events/event2/images/dream-list-8.png" alt="Dr.Douxi 煥采清柔洗面乳"></a></li>
                    <li><a href="http://www.hawooo.com/user/event4.aspx" target="_blank">
                        <img src="../images/events/event2/images/dream-list-9.png" alt="Dr.Douxi薏沛健康機能水+凍齡熬夜奇蹟霜"></a></li>
                </ul>
                <div style="padding: 50px 200px 50px 200px;" id="tb_input">
                    <h1>活動內容</h1>
                    <hr />
                    <table style="line-height: 30px;">
                        <tr>
                            <td>填寫以下資料申請加入Hawooo女孩，經審核通過後，每個月可以從Dream List中選擇一組商品試用。
                            </td>
                        </tr>
                        <tr>
                            <td>收到包裹的14天內需完成一篇試用心得，並post在個人FB或blog，心得文規則如下：
                            </td>
                        </tr>
                        <tr>
                            <td>1. 試用圖需放4張以上
                            </td>
                        </tr>
                        <tr>
                            <td>2. 字數300字以上
                            </td>
                        </tr>
                        <tr>
                            <td>3. 須在文章中註名產品由 “Hawooo.com 好物飛行” 提供。
                            </td>
                        </tr>

                        <tr>
                            <td>若收到試用品後14天內未發表試用文，將取消Hawooo女孩資格。
                            </td>
                        </tr>
                        <tr>
                            <td>除了每個月固定寫心得拿試用品外，Hawooo.com任何公開媒體、展場之活動，都會優先從Hawooo女孩中錄取人選參加。更有機會成為Hawooo.com的形象代言人，在網路、媒體曝光!!
                            </td>
                        </tr>
                    </table>
                    <h1>填寫下方資料</h1>
                    <hr />
                    <table class="stable">
                        <tr>
                            <td style="width: 150px">*姓名:</td>
                            <td>
                                <asp:TextBox ID="txt_HG02" runat="server" Width="500px" MaxLength="50"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>*電話:</td>
                            <td>
                                <asp:TextBox ID="txt_HG03" runat="server" Width="500px" MaxLength="50"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>*Email:</td>
                            <td>
                                <asp:TextBox ID="txt_HG04" runat="server" Width="500px" MaxLength="300"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>*收件地址:</td>
                            <td>
                                <asp:TextBox ID="txt_HG05" runat="server" Width="500px" MaxLength="300"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>*FB LINK:</td>
                            <td>
                                <asp:TextBox ID="txt_HG06" runat="server" Width="500px" MaxLength="500"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top">*希望商品:</td>
                            <td>
                                <style>
                                    .ctable {
                                        width: 350px;
                                    }
                                </style>
                                <asp:CheckBoxList ID="chk_HG09" runat="server" RepeatDirection="Horizontal" TabIndex="0" CellPadding="10" CellSpacing="10" RepeatColumns="3" CssClass="ctable">
                                    <asp:ListItem Text="Dream1" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="Dream2" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="Dream3" Value="3"></asp:ListItem>
                                    <asp:ListItem Text="Dream4" Value="4"></asp:ListItem>
                                    <asp:ListItem Text="Dream5" Value="5"></asp:ListItem>
                                    <asp:ListItem Text="Dream6" Value="6"></asp:ListItem>
                                    <asp:ListItem Text="Dream7" Value="7"></asp:ListItem>
                                    <asp:ListItem Text="Dream8" Value="8"></asp:ListItem>
                                    <asp:ListItem Text="Dream9" Value="9"></asp:ListItem>
                                </asp:CheckBoxList>
                                <span>NOTE:選擇希望商品，我們將會挑選一組給您。</span>
                            </td>
                        </tr>
                        <tr style="vertical-align: top">
                            <td>BLOG:</td>
                            <td>
                                <asp:TextBox ID="txt_HG07" runat="server" Width="500px"></asp:TextBox></td>
                        </tr>

                        <tr>
                            <td></td>
                            <td>
                                <asp:UpdatePanel ID="up_send" runat="server">
                                    <ContentTemplate>
                                        <asp:Button ID="btn_send" runat="server" Text="送出申請" CssClass="btn btn-red btn-font-size-mid" OnClick="btn_send_Click" />
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </td>
                        </tr>
                    </table>
                </div>

                <img src="../images/events/event2/images/dream-bottom.png" />
            </div>


        </div>
    </div>
</asp:Content>

