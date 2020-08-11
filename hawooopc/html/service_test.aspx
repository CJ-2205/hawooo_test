<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="service_test.aspx.cs" Inherits="user_service" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
      <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .service-info {
            text-align: center;
            color: #565656;
            margin-top: 10px;
            font-family: "Arial";
            line-height: 1.5;
        }

        .service-icon {
            text-align: center;
            margin: 0 auto;
            font-size: 23px;
            color: #BBBCBC;
            border: 1px solid #bbbcbc;
            width: 50px;
            height: 50px;
            border-radius: 50%;
            padding: 10px;
            line-height: 1.2;
        }

        . service-icon-all ul li a:hover {
            color: #4966ee;
            line-height: 1.2;
        }

        .send-btn {
            color: #fff;
            background-color: #f7588c;
            border-color: #f7588c;
            margin-left:20px;
        }

            .send-btn:hover {
                color: #fff;
            }
    </style>
    <div class="am-container  am-margin-vertical-xl">
        <div class="am-g">
            <img src="https://p8r7m4d5.stackpathcdn.com/images/ftp/service/contact_us.svg" alt="" />
        </div>
        <div class="am-g am-g-collapse">
            <div class="am-u-md-12 service-icon-all" style="background:#fff;">
                <ul class="am-avg-md-3">
                    <li class="am-padding">
                        <div class="service-icon">
                            <i class="fas fa-phone-alt"></i>
                        </div>
                        <div class="service-info">
                            <p class="title">客服專線</p>
                            <p class="number">+603-76102050</p>
                            <p class="time">(服務時間: 09-18)</p>
                        </div>
                    </li>
                    <li class="am-padding">
                        <div class="service-icon">
                              <i class="fas fa-envelope"></i>
                        </div>
                        <div class="service-info">
                            <p class="title">E-mail</p>
                            <p class="number">service@hawooo.com</p>
                            <p class="time">(服務時間: 09-18)</p>
                        </div>
                    </li>
                    <li class="am-padding">
                        <a href="https://www.facebook.com/hawooohawooo" target="_blank">
                            <div class="service-icon">
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

