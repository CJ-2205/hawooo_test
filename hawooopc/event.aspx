<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true"
    CodeFile="event.aspx.cs" Inherits="user_event" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container">
        <div class="am-g" style="background-color: #ffffff; margin-top: 20px; margin-bottom: 20px">
            <img src="../images/events/event1/bg.jpg" />
            <div style="position: absolute; top: 480px; margin-left: 280px">
                <a href="event1-1.aspx" target="_blank">
                    <img src="../images/events/event1/0921_banner3m-f-02_03.png" /></a>
            </div>
            <!--商品1-->
            <div style="position: absolute; top: 665px; margin-left: 50px">
                <div>
                    <a href="http://www.hawooo.com/user/productdetail.aspx?id=265" target="_blank">
                        <img src="../images/events/event1/pro1.png" /></a>
                </div>
                <div style="padding-left: 50px">
                    <a href="http://www.hawooo.com/user/productdetail.aspx?id=265" target="_blank">
                        <img src="../images/events/event1/btn1.png" />
                    </a>
                </div>
            </div>
            <!--商品2-->
            <div id="d2_s" style="position: absolute; top: 665px; margin-left: 260px; display: none">
                <div>
                    <a href="http://www.hawooo.com/user/productdetail.aspx?id=264" target="_blank">
                        <img src="../images/events/event1/pro2.png" />
                    </a>
                </div>
                <div style="padding-left: 50px">
                    <a href="http://www.hawooo.com/user/productdetail.aspx?id=264" target="_blank">
                        <img src="../images/events/event1/btn1.png" />
                    </a>
                </div>
            </div>
            <div id="d2_h" style="position: absolute; top: 695px; margin-left: 280px;">
                <div>
                    <img src="../images/events/event1/gift_11.png" />
                    </a>
                </div>
                <div style="padding-left: 20px">
                    <img src="../images/events/event1/btn2.png" />
                </div>
            </div>
            <!--商品3-->
            <div id="d3_s" style="position: absolute; top: 665px; margin-left: 480px; display: none">
                <div>
                    <a href="http://www.hawooo.com/user/productdetail.aspx?id=266" target="_blank">
                        <img src="../images/events/event1/pro3.png" />
                    </a>
                </div>
                <div style="padding-left: 50px">
                    <a href="http://www.hawooo.com/user/productdetail.aspx?id=266" target="_blank">
                        <img src="../images/events/event1/btn1.png" />
                    </a>
                </div>
            </div>
            <div id="d3_h" style="position: absolute; top: 695px; margin-left: 500px">
                <div>
                    <img src="../images/events/event1/gift_11.png" />
                    </a>
                </div>
                <div style="padding-left: 20px">
                    <img src="../images/events/event1/btn2.png" />
                </div>
            </div>
            <!--商品4-->
            <div id="d4_s" style="position: absolute; top: 665px; margin-left: 700px; display: none">
                <div>
                    <a href="http://www.hawooo.com/user/productdetail.aspx?id=267" target="_blank">
                        <img src="../images/events/event1/pro4.png" />
                    </a>
                </div>
                <div style="padding-left: 50px">
                    <a href="http://www.hawooo.com/user/productdetail.aspx?id=267" target="_blank">
                        <img src="../images/events/event1/btn1.png" />
                    </a>
                </div>
            </div>
            <div id="d4_h" style="position: absolute; top: 695px; margin-left: 710px">
                <div>
                    <img src="../images/events/event1/gift_11.png" />
                </div>
                <div style="padding-left: 20px">
                    <img src="../images/events/event1/btn2.png" />
                </div>
            </div>
            <!--商品5-->
            <div id="d5_s" style="position: absolute; top: 665px; margin-left: 900px; display: none">
                <div>
                    <a href="http://www.hawooo.com/user/productdetail.aspx?id=268" target="_blank">
                        <img src="../images/events/event1/pro5.png" />
                    </a>
                </div>
                <div style="padding-left: 50px">
                    <a href="http://www.hawooo.com/user/productdetail.aspx?id=268" target="_blank">
                        <img src="../images/events/event1/btn1.png" />
                    </a>
                </div>
            </div>
            <div id="d5_h" style="position: absolute; top: 695px; margin-left: 910px">
                <div>
                    <img src="../images/events/event1/gift_11.png" />
                </div>
                <div style="padding-left: 20px">
                    <img src="../images/events/event1/btn2.png" />
                </div>
            </div>
        </div>
    </div>
    <script>

        var Today = new Date();
        var cd = Today.getFullYear().toString() + (Today.getMonth() + 1).toString() + Today.getDate().toString();
        var d1 = "2015928";
        var d2 = "2015929";
        var d3 = "2015930";
        var d4 = "2015101";
        var d5 = "2015102"
        switch (cd) {
            case d1:
                {
                    //第一天
                    break;
                }
            case d2:
                {
                    //第二天
                    $("#d2_s").css('display', '');
                    $("#d2_h").css('display', 'none');
                    break;
                }
            case d3:
                {
                    //第三天
                    $("#d2_s").css('display', '');
                    $("#d2_h").css('display', 'none');
                    $("#d3_s").css('display', '');
                    $("#d3_h").css('display', 'none');
                    break;
                }
            case d4:
                {
                    //第四天
                    $("#d2_s").css('display', '');
                    $("#d2_h").css('display', 'none');
                    $("#d3_s").css('display', '');
                    $("#d3_h").css('display', 'none');
                    $("#d4_s").css('display', '');
                    $("#d4_h").css('display', 'none');
                    break;
                }
            case d5:
                {
                    //第五天
                    $("#d2_s").css('display', '');
                    $("#d2_h").css('display', 'none');
                    $("#d3_s").css('display', '');
                    $("#d3_h").css('display', 'none');
                    $("#d4_s").css('display', '');
                    $("#d4_h").css('display', 'none');
                    $("#d5_s").css('display', '');
                    $("#d5_h").css('display', 'none');
                    break;
                }
        }

    </script>
</asp:Content>
