<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true"
    CodeFile="join.aspx.cs" Inherits="user_join" Async="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/newmember.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container" style="padding: 10px 0px">
        <!-- newmember 加入會員 開始 -->
        <section>
            <asp:Panel ID="p_login" runat="server" DefaultButton="btn_Join2">
                <%--<div class="am-u-sm-12" style="padding: 0px">
                    <img src="../images/hawooo/member_banner_desk.gif" width="100%" />
                </div>--%>
                <div class="am-container newmember-wrapper">
                    <!-- 左邊登入表單 -->
                    <div class="am-u-sm-6 nm-form">
                        <h4 class="newmember-title"><i class="am-icon-user-plus"></i>
                            <span class="txtRsc" data-id="mb003">加入會員</span>

                        </h4>
                        <div class="am-form am-form-horizontal" id="newmemer-form">
                            <!-- 帳號input -->
                            <div class="am-form-group">
                                <div class="am-u-sm-8 am-u-sm-centered am-cf input-wrapper">
                                    <div class="am-fl logoin-icon"><i class="am-icon-user"></i></div>
                                    <asp:TextBox ID="txt_account" runat="server" CssClass="am-fl" placeholder="E-Mail"></asp:TextBox>
                                </div>
                            </div>
                            <!-- 手機input -->
                            <div class="am-form-group">
                                <div class="am-u-sm-8 am-u-sm-centered am-cf input-wrapper">
                                    <div class="am-fl logoin-icon"><i class="am-icon-phone"></i></div>
                                    <asp:TextBox ID="txt_phone" runat="server" CssClass="am-fl" placeholder="Phone EX: 0161234567" MaxLength="12"></asp:TextBox>
                                </div>
                            </div>
                            <!-- 密碼input -->
                            <div class="am-form-group">
                                <div class="am-u-sm-8 am-u-sm-centered am-cf input-wrapper">
                                    <div class="am-fl logoin-icon"><i class="am-icon-lock"></i></div>
                                    <asp:TextBox ID="txt_password" runat="server" CssClass="am-fl" TextMode="Password" placeholder="Password"></asp:TextBox>

                                </div>
                            </div>

                            <!-- 再次確認密碼input -->
                            <div class="am-form-group">
                                <div class="am-u-sm-8 am-u-sm-centered am-cf input-wrapper">
                                    <div class="am-fl logoin-icon"><i class="am-icon-lock"></i></div>
                                    <asp:TextBox ID="txt_chk_password" runat="server" CssClass="am-fl" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
                                </div>
                            </div>
                            <!-- 推薦會員編號 -->
                            <style>
                                label {
                                    display: contents;
                                    font-size: 12px;
                                }
                            </style>
                            <div style="text-align: center; padding: 10px">
                                <asp:CheckBox ID="chk_has_code" runat="server" Text="With referral code? Tick & fill in here." ClientIDMode="static" onclick="ShowCode();" />
                            </div>
                            <script>
                                $(function () {
                                    ShowCode();
                                });
                                function ShowCode() {
                                    var check = $("#chk_has_code").is(":checked");
                                    if (check === true) {
                                        $("#rcode").show();
                                    }
                                    else {
                                        $("#rcode").hide();
                                    }
                                }
                            </script>
                            <div class="am-form-group" id="rcode">
                                <div class="am-u-sm-8 am-u-sm-centered am-cf input-wrapper">
                                    <div class="am-fl logoin-icon"><i class="am-icon-lock"></i></div>
                                    <asp:TextBox ID="txt_rec" ClientIDMode="static" runat="server" CssClass="am-fl" placeholder="Referral Code"></asp:TextBox>
                                </div>
                            </div>



                            <asp:UpdatePanel ID="upjoin" runat="server" ClientIDMode="Static" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <div class="am-form-group">
                                        <div class=" am-u-sm-8 am-u-sm-centered nm-btn-wrapper">
                                            <asp:LinkButton ID="btn_Join2" runat="server" CssClass="am-btn am-btn-default nm-btn" Text="加入會員" ViewStateMode="Disabled" OnClick="btn_Join2_Click">
                                                <span class="txtRsc" data-id="mb003">加入會員</span>
                                            </asp:LinkButton>
                                        </div>
                                    </div>

                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="btn_Join2" EventName="Click" />
                                </Triggers>
                            </asp:UpdatePanel>
                            <!-- 登入按鈕 -->


                            <!-- 臉書按鈕 -->
                            <div class="am-form-group">
                                <div class=" am-u-sm-8 am-u-sm-centered facebook-wrapper">
                                    <button type="button" class="am-btn am-btn-default facebook-btn" onclick="fbLogin();"><i class="am-icon-facebook"></i>Facebook</button>
                                </div>
                            </div>

                            <!-- 同意隱私權說明 -->
                            <div class="am-u-sm-12 am-u-sm-centered am-text-center nm-agree-description">
                                <span class="txtRsc" data-id="mb002">擁有帳號表示您同意會員權益聲明與隱私權條款
                                </span>
                            </div>
                        </div>
                    </div>
                    <!-- 左邊登入表單 結束-->
                    <!-- 右邊加入條款 開始-->
                    <div class="am-u-sm-6 nm-terms">
                        <h4 class="newmember-title"><i class="am-icon-university"></i>HaWooo <span class="txtRsc" data-id="mb011">會員條款</span></h4>
                        <div class="nm-terms-content" runat="server" id="TermsZh">
                            <p>
                                歡迎來到HaWooo.com。若您繼續瀏覽或使用我們的網站，即代表您已經遵守並同意我們所列明的條款。
                            <br>
                                <br>
                                1. 凡本站所顯示的內容都為一般資訊用途，有任何的修改將不會做額外的通知。<br>
                                2. 本站所使用的伺服器將蒐集並管理您所參考過的資訊，若您願意並允許使用該伺服器，您的個人訊息將可能供第三方使用。<br>
                                3. 對於本站所提供的數據或資料的準確性、時間性、完整性我們與第三方將不會提供任何的保障以及承諾。此外，您也必須了解網絡資料可能存在著錯誤和不準確等風險，而在這些風險下我們將會在法律的保護下，摒除一切承擔責任的風險。另外，關於本站的任何產品相關訊息，您有責任確保相關產品符合您的所需，對此我們將不會承擔任何責任風險。<br>
                                4. 本站的網路服務內容包括文字、圖片、影像、廣告，而所有內容受版權、商標、標籤和其他財產所有權的法律保護。用戶只能在取得我們或商家的授權之下才能使用這些內容，且不得擅自複製並再造這些內容。任何人需要轉載本網站的內容，必須經過本站的同意。<br>
                                5. 凡在該網站上所連接的額外信息都為一般資訊用途，此連接並不意味我們完全贊同裡面所顯示的資訊，若連接中的信息發生任何差異，本站將不會負起任何責任。<br>
                                6. 凡任何濫用本站相關資訊的客戶用戶將會受到馬來西亞法律的製裁/追究。<br>
                                <br>
                                網站聲明<br>
                                為了讓HaWooo.com更具完整性以及信息指標性，HaWooo.com擁有一切保留、更改以及聲明各項內容、圖像、服務之權利，而本站將不會對所有會員進行個別通知。此外，若有任何信息接收錯誤，用戶必須自行承擔類似的信息風險。<br>
                                本站在一些特定的情況下可以連接至其他的網站，而這些連接網站將不會在HaWooo.com的條款管制下受到保護。我們並沒有任何的權利乾涉以及完全認同連接裡所傳遞的信息以及內容，故所有信息內容一切風險將由會員自行承擔。<br>
                                最後，為了讓所有的客戶能夠享有簡易的網購服務，HaWooo.com將會盡全力讓網站更加完善並且能更順利的運行。但若因銷售系統發生故障或網絡癱瘓導致交易無法完成或丟失有關信息、記錄等，本站將不會負起任何的責任。
                            </p>
                        </div>
                        <div class="nm-terms-content" runat="server" id="TermsEn">
                            <p>
                                Welcome to HaWooo.com. If you continue to browse and use this website, you are agreeing to comply with and be bound by the following terms and conditions of use.
                                <br>
                                <br>
                                1. The content of the pages of this website is for your general information and use only. It is subject to change without notice.
                                <br>
                                2. This website uses cookies to monitor browsing preferences. If you do allow cookies to be used, the following personal information may be stored by us for use by third parties.
                                <br>
                                3. Neither we nor any third parties provide any warranty or guarantee as to the accuracy, timeliness, or completeness of the information and materials found or offered on this website for any particular purpose. You acknowledge that such information and materials may contain inaccuracies or errors and we expressly exclude liability for any such inaccuracies or errors to the fullest extent permitted by law. Furthermore, your use of any information or materials on this website is entirely at your own risk, for which we shall not be liable. It shall be your own responsibility to ensure that any products, services or information available through this website meet your specific requirements.
                                <br>
                                4. This website contains material which is owned by or licensed to us. This material includes, but is not limited to, the text, images, video, advertisement, appearance, and graphics. This website and its content is copyright of HaWooo.com. Copying or reproduction of the contents in any form is prohibited. Anyone who needs to reprint the contents of this website must obtain the consent of this website.
                                <br>
                                5. This website may contain links to other resources for your general information and use only. We do not endorse and are not responsible or liable for the content of such resources in any way.
                                <br>
                                Unauthorized use of this website and any dispute arising out of such use of the website is subject to the laws of Malaysia.
                                <br>
                                <br>
                                Website Statement<br>
                                In order to make HaWooo.com more complete and informative, HaWooo.com reserves the right, at our sole discretion, to update, change, or modify the content, graphics, services, and the terms and conditions without prior notice. In addition, your use of any information on this site is entirely at your own risks, and we bear no responsibility for the consequences of any information that is received incorrectly.
                                <br>
                                This site may redirect you to other sites on the Internet under certain circumstances. These other sites are not under the control and protection of the Terms and Conditions of HaWooo.com. We do not endorse and have no right to interfere with the content of these sites and will not be liable for any risks that may arise from your use of them.
                                <br>
                                Finally, to ensure an easy and enjoyable online shopping experience, HaWooo.com will do our best to improve the website and make sure it runs smoothly. However, we are not responsible for any loss of information, records, or other content resulted from transaction failure caused by the system or internet breakdown.

                            </p>
                        </div>
                    </div>
                    <!-- 右邊加入條款 結束-->
                </div>
            </asp:Panel>
        </section>
        <!-- newmember 加入會員 結束 -->
    </div>
    <style type="text/css">
        .account input {
            height: 12px;
            display: inline-block;
            width: auto;
            vertical-align: middle;
        }
    </style>
</asp:Content>
