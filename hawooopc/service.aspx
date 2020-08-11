<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="service.aspx.cs" Inherits="user_service" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/js/all.min.js" type="text/javascript" async></script>
   <link href="assets/css/v2/service.min.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="am-container am-margin-vertical-xl">
        <div class="am-g">
            <div>
            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/service/contact_us.svg" alt="" />
                </div>
             <div class="am-u-md-12 am-padding-vertical-lg am-text-center service-icon-all">
                <ul class="am-avg-md-3">
                    <li class="am-padding service-item">
                        <div class="service-icon">
                            <i class="fas fa-phone-alt"></i>
                        </div>
                        <div class="service-info">
                            <p class="title">客服專線</p>
                            <p class="number">+603-76102050</p>
                            <p class="time">(服務時間: 09-18)</p>
                        </div>
                    </li>
                    <li class="am-padding service-item">
                        <div class="service-icon">
                              <i class="fas fa-envelope"></i>
                        </div>
                        <div class="service-info">
                            <p class="title">E-mail</p>
                            <p class="number">service@hawooo.com</p>
                            <p class="time">(服務時間: 09-18)</p>
                        </div>
                    </li>
                    <li class="am-padding service-item">
                        <a href="https://www.facebook.com/hawooohawooo" target="_blank">
                            <div class="service-icon facebook-icon">
                                <i class="fab fa-facebook-messenger"></i>
                            </div>
                            <div class="service-info">
                                <p class="title">Facebook</p>
                                <p class="number">HaWooo.com 好物飛行</p>
                                <p class="time">(訊息12hr內快速回覆) </p>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        </div>
</asp:Content>

