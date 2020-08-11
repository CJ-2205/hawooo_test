<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="about04.aspx.cs" Inherits="mobile_about04" %>

<%@ Register Src="~/mobile/control/aboutmenu.ascx" TagPrefix="uc1" TagName="aboutmenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/about.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div style="background-color: #ffffff;">
            <div class="page-menu-Box" data-am-sticky="{top:100}">
                <%--  <p class="pagelink">
                    客戶服務 > 物流派送規則
                </p>--%>
                <uc1:aboutmenu runat="server" ID="aboutmenu" />
            </div>
            <%-- <div class="am-g">
                <div class="am-u-sm-12" style="width: 100%; margin: 0; padding: 0;">
                    <img src="about/images/member_banner.png" style="width: 100%" />
                </div>
            </div>--%>
            <!--問題開始-->
            <div class="am-u-md-12 about-m-aboutBox" style="padding-top: 20px">
                <!--問題1 開始-->
                <div class="am-g about-m-group">
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <p>
                            運費怎麼算？
                       
                        </p>
                        <img src="about/images/qa_title_1.png" />
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-r">
                        <%--  <p>購買商品數量1～3個運費都是RM 29，之後每多1樣商品運費加RM 6。</p>--%>
                        <p>西馬地區，單筆訂單金額超過RM199免郵(運費:RM19)。東馬地區，單筆訂單金額超過RM349免郵(運費:RM29)。</p>
                    </div>
                </div>
                <!--問題1 結束-->
                <!--問題2 開始-->
                <div class="am-g about-m-group">
                    <div class="am-u-sm-12">
                        <img src="about/images/return_title_2-1.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <%--    <p>
                            西馬跟東馬運費一樣嗎?
                       
                        </p>--%>
                        <p>
                            請問多內會收到貨?
                        </p>
                        <img src="about/images/return_title_2-2.png" />
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-y">
                        <%--     <p>東馬需多加RM6， 所以運費是RM19。</p>--%>
                        <p>訂單完成付款後，您將會在3-10個工作天收到商品。</p>
                    </div>
                </div>
                <!--問題2 結束-->
                <!--問題3 開始-->
                <div class="am-g about-m-group">
                    <div class="am-u-sm-12">
                        <img src="about/images/return_title_3-1.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <%--     <p>
                            請問多內會收到貨?
                       
                        </p>--%>
                        <p>
                            退貨有什麼規定嗎?
                       
                        </p>
                        <img src="about/images/return_title_3-2.png" />
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-r">
                        <%-- <p>客服會親自致電給您，確認商品、聯絡電話、寄送地址等。您將會在5-10個工作天內收到商品。</p>--%>
                        <p>確認退貨條款，填寫退貨單即可退貨。在我們收到商品後，會將退款存入您的Hawooo帳戶裡(如運費由買家負責，將直接於退款扣除），您可於下次購買時使用。</p>
                        <img src="../user/img/about/退貨條款.jpg" />
                    </div>
                </div>
                <!--問題3 結束-->
                <!--問題4 開始-->
                <div class="am-g about-m-group">
                    <div class="am-u-sm-12">
                        <img src="about/images/return_title_2-1.png" />
                    </div>
                    <div class="am-u-sm-12 about-m-questionTitle">
                        <%--    <p>
                            退貨有什麼規定嗎?
                       
                        </p>--%>
                        <p>
                            還有其他問題嗎？
                       
                        </p>
                        <img src="about/images/return_title_2-2.png">
                    </div>
                    <div class="am-u-sm-12 about-m-questionBox-y">
                        <%--   <p>確認退貨條款，填寫退貨單即可退貨。在我們收到商品後，會將退款存入您的Hawooo帳戶裡(如運費由買家負責，將直接於退款扣除），您可於下次購買時使用。</p>
                        <img src="../user/img/about/退貨條款.jpg" />--%>
                        <p>
                            電話:
                    <br>
                            +603-23866096
                        </p>
                        <p>
                            E-mail:<br>
                            <a href="mailto:service@hawooo.com">service@hawooo.com</a>
                        </p>
                        <p class="qa-time">星期一 - 星期五(except public holiday)9.00AM - 6.00PM</p>

                    </div>
                </div>
                <!--問題4 結束-->
            </div>

        </div>
    </div>
</asp:Content>

