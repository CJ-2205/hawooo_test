<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="about06.aspx.cs" Inherits="user_about06" %>

<%@ Register Src="~/user/control/about_class.ascx" TagPrefix="uc1" TagName="about_class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container">
        <div class="am-g">
            <!-- Slider Start-->
            <div class="am-margin-top" style="margin-top: 20px;">
                <img src="../images/aboutpc/images/about-us-banner.png" />
            </div>
            <!-- Slider End-->
        </div>
        <div class="am-g" style="background-color: #ffffff">

            <div class="am-u-md-3" style="margin-top: 20px;">
                <uc1:about_class runat="server" ID="about_class" />
            </div>
            <div class="am-u-md-9" style="float: right; display: block; padding-bottom: 20px; padding-left: 0px;">
                <!--問題1-->
                <div class="am-g" style="margin: 0 auto; padding: 0; width: 790px;">
                    <div class="am-u-sm-12" style="position: relative;">
                        <p style="position: absolute; top: 30px; left: 280px; width: 374px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                            全部商品都是台灣的嗎?
                       
                        </p>
                        <img src="images/voucher_title_1.png">
                    </div>
                    <div class="am-u-sm-12" style="padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #e50047 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
                        <p>保證都是100%台灣正品，空運來馬來西亞。妳可以用近台灣本地商店的價格，直接入手台灣各大品牌，就像在台灣直接購物一樣！</p>
                    </div>
                </div>

                <!--問題2-->
                <div class="am-g" style="margin: 0 auto; padding: 0; width: 790px;">
                    <div class="am-u-sm-12" style="position: relative;">
                        <p style="position: absolute; top: 90px; left: 280px; width: 374px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                            請問馬來西亞買的到嗎?
                       
                        </p>
                        <img src="images/voucher_title_2.png">
                    </div>
                    <div class="am-u-sm-12" style="padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #f49700 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
                        <p>可以呀，HaWooo.com就是馬來西亞的總代理。</p>
                    </div>
                </div>

                <!--問題3-->
                <div class="am-g" style="margin: 0 auto; padding: 0; width: 790px;">
                    <div class="am-u-sm-12" style="position: relative;">
                        <p style="position: absolute; top: 90px; left: 280px; width: 374px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                            西馬跟東馬運費一樣嗎?
                       
                        </p>
                        <img src="images/voucher_title_3.png">
                    </div>
                    <div class="am-u-sm-12" style="padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #e50047 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
                        <p>東馬需多加RM10， 所以運費是RM39。</p>
                    </div>
                </div>

                <!--問題4-->
                <div class="am-g" style="margin: 0 auto; padding: 0; width: 790px;">
                    <div class="am-u-sm-12" style="position: relative;">
                        <p style="position: absolute; top: 90px; left: 280px; width: 374px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                            請問多久會收到貨?
                       
                        </p>
                        <img src="images/voucher_title_2.png">
                    </div>
                    <div class="am-u-sm-12" style="padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #f49700 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
                        <p>客服會親自致電給您，確認商品、聯絡電話、寄送地址等。您將會在5-10個工作天內收到商品。</p>
                    </div>
                </div>

                <!--問題5-->
                <div class="am-g" style="margin: 0 auto; padding: 0; width: 790px;">
                    <div class="am-u-sm-12" style="position: relative;">
                        <p style="position: absolute; top: 90px; left: 280px; width: 374px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                            下單完成後沒有出現匯款資訊?
                       
                        </p>
                        <img src="images/voucher_title_3.png">
                    </div>
                    <div class="am-u-sm-12" style="padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #e50047 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
                        <p>出現訂單編號的下方就是囉！</p>
                    </div>
                </div>


                <!--問題6-->
                <div class="am-g" style="margin: 0 auto; padding: 0; width: 790px;">
                    <div class="am-u-sm-12" style="position: relative;">
                        <p style="position: absolute; top: 90px; left: 280px; width: 374px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                            客服在大馬的哪裡呢?
                       
                        </p>
                        <img src="images/voucher_title_2.png">
                    </div>
                    <div class="am-u-sm-12" style="padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #f49700 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
                        <p>
                            Peoples MAP sdn. Bhd.
                            <br>
                            D-09-05, Menara Mitraland,Jalan PJU 5/1, Kota Damansara,47810 Petaling Jaya, Selangor, Malaysia.
                        </p>
                    </div>
                </div>

                <!--問題7-->
                <div class="am-g" style="margin: 0 auto; padding: 0; width: 790px;">
                    <div class="am-u-sm-12" style="position: relative;">
                        <p style="position: absolute; top: 90px; left: 280px; width: 374px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                            要如何付款呢？
                       
                        </p>
                        <img src="images/voucher_title_3.png">
                    </div>
                    <div class="am-u-sm-12" style="padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #e50047 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
                        <p>
                            (1) 可以使用銀行匯款：<br>
                            <p style="margin-left: 20px">
                                Bank: Public Bank<br>
                                Account No: 3201174410
                                <br>
                                銀行: CIMB BANK
                                <br>
                                <br>
                                CIMB BANK
                          
                                <br>
                                PEOPLES MAP SDN. BHD.
                          
                                <br>
                                80-0327458-9
                          
                                <br>
                                <br>
                            </p>

                        </p>
                        (2) 或是直接線上付款：(如下圖)
                    </p>
                   
                        <img src="images/pay_img_1.png">
                    </div>
                </div>

                <!--問題8-->
                <div class="am-g" style="margin: 0 auto; padding: 0; width: 790px;">
                    <div class="am-u-sm-12" style="position: relative;">
                        <p style="position: absolute; top: 90px; left: 280px; width: 374px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                            匯款後，要做什麼呢？
                       
                        </p>
                        <img src="images/voucher_title_2.png">
                    </div>
                    <div class="am-u-sm-12" style="padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #f49700 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
                        <p>匯款後，拍單據給客服人員看就行了！客服人員會跟客戶做電話確認，確認無誤就會安排出貨囉！</p>
                    </div>
                </div>

                <!--問題9 開始-->
                <div class="am-g" style="margin: 0 auto; padding: 0; width: 790px;">
                    <div class="am-u-sm-12" style="position: relative;">
                        <p style="position: absolute; top: 95px; left: 240px; width: 400px; height: 52px; line-height: 52px; font-size: 18px; color: #fff; padding: 0;">
                            除了Hawooo.com，還可以買其他網站的東西嗎?
                       
                        </p>
                        <img src="images/voucher_title_4.png">
                    </div>
                    <div class="am-u-sm-12" style="padding: 30px; line-height: 25px; font-size: 13px; border: 1.5px #e50047 solid; -webkit-border-radius: 10px; -moz-border-radius: 10px; border-radius: 10px;">
                        <p>可以，代購費用另計。 (需要客戶提供商品的網址，之後客服人員會與您報價。)</p>
                    </div>
                </div>
                <!--問題9 結束-->
            </div>
        </div>
    </div>
</asp:Content>

