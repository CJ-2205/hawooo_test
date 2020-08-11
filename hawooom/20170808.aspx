<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="20170808.aspx.cs" Inherits="mobile_20170808" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="../mobile/assets/css/amazeui.min.css">
    <link rel="stylesheet" href="../mobile/assets/css/app.css">
    <link rel="stylesheet" href="../mobile/assets/css/newyearmom.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 650px; padding-top: 120px">

        <%--<ul style="float: left; margin: 0; padding: 120px 0 0 0; list-style-type: none; font-size: 0; width: 100%;">

            <li style="margin: 0;"><a href="https://www.hawooo.com/mobile/search.aspx?stxt=%E3%80%90%E9%99%90%E6%99%82%E8%B2%B7%E4%B8%80%E9%80%81%E4%B8%80%E3%80%91LA%20BEAU&tcode=20170724EDM_LB&utm_source=mail&utm_medium=edm&utm_content=20170724EDM_LB" target="_blank">
                <img alt="Labeau週年慶全系列 Buy1 Get1" src="https://www.hawooo.com/images/ftp/20170724/edmm_01.gif" style="float: left; display: block; width: 100%;" /></a></li>

            <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=8850&tcode=20170724EDM_LB&utm_source=mail&utm_medium=edm&utm_content=20170724EDM_LB" target="_blank">
                <img alt="心機妹緊緻凝膠30ml" src="https://www.hawooo.com/images/ftp/20170724/edmm_02.png" style="float: left; display: block; width: 100%;" /></a></li>

            <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=8867&tcode=20170724EDM_LB&utm_source=mail&utm_medium=edm&utm_content=20170724EDM_LB" target="_blank">
                <img alt="蛇毒緊緻精華30ml" src="https://www.hawooo.com/images/ftp/20170724/edmm_03.png" style="float: left; display: block; width: 100%;" /></a></li>

            <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=8865&tcode=20170724EDM_LB&utm_source=mail&utm_medium=edm&utm_content=20170724EDM_LB" target="_blank">
                <img alt="蘋果澎澎霜30ml" src="https://www.hawooo.com/images/ftp/20170724/edmm_04.png" style="float: left; display: block; width: 100%;" /></a></li>

            <li style="margin: 0;"><a href="https://www.hawooo.com/user/productdetail.aspx?id=8863&tcode=20170724EDM_LB&utm_source=mail&utm_medium=edm&utm_content=20170724EDM_LB" target="_blank">
                <img alt="美白精華30ml" src="https://www.hawooo.com/images/ftp/20170724/edmm_05.png" style="float: left; display: block; width: 100%;" /></a></li>

            <li style="margin: 0;"><a href="https://www.hawooo.com/mobile/search.aspx?stxt=%E3%80%90%E9%99%90%E6%99%82%E8%B2%B7%E4%B8%80%E9%80%81%E4%B8%80%E3%80%91LA%20BEAU&tcode=20170724EDM_LB&utm_source=mail&utm_medium=edm&utm_content=20170724EDM_LB" target="_blank">
                <img alt=" exclusive for Taiwan select products" src="https://www.hawooo.com/images/ftp/20170724/edmm_06.png" style="float: left; display: block; width: 100%;" /></a></li>
        </ul>--%>
        <!--問題開始-->
     <%--   <div class="c">--%>
            <div class="am-show-sm-up c">
                <div class="fullBanner">
                    <a href="#q1">
                        <img src="https://www.hawooo.com/images/ftp/20170808/edmm_01.png" alt="BHK's 你是哪種圓?"></a>
                </div>
            </div>
    <%--    </div>--%>
        <!--Q1-->
       <%-- <div class="c">--%>
            <div class="am-show-sm-up c">
                <a id="q1"></a>
                <div class="fullBanner">
                    <img src="https://www.hawooo.com/images/ftp/20170808/edmm_02.png" alt="你曾經瘦過嗎">
                </div>
                <div class="fullBanner">
                    <a href="#q3">
                        <img src="https://www.hawooo.com/images/ftp/20170808/edmm_03.png" alt="我曾經也是瘦子"></a>
                </div>
                <div class="fullBanner">
                    <a href="#q2">
                        <img src="https://www.hawooo.com/images/ftp/20170808/edmm_04.png" alt="圓圓才是王道"></a>
                </div>

            </div>
     <%--   </div>--%>
        <!--Q2-->
      <%--  <div class="c">--%>
            <div class="am-show-sm-up c">
                <a id="q2"></a>
                <div class="fullBanner">
                    <img src="https://www.hawooo.com/images/ftp/20170808/edmm_05.png" alt="曾經為了減肥而運動">
                </div>
                <div class="fullBanner">
                    <a href="#tian">
                        <img src="https://www.hawooo.com/images/ftp/20170808/edmm_06.png" alt="yes沒效"></a>
                </div>
                <div class="fullBanner">
                    <a href="#dong">
                        <img src="https://www.hawooo.com/images/ftp/20170808/edmm_07.png" alt="yes效果不大"></a>
                </div>
                <div class="fullBanner">
                    <a href="#tian">
                        <img src="https://www.hawooo.com/images/ftp/20170808/edmm_08.png" alt="no"></a>
                </div>
            </div>
       <%-- </div>--%>
        <!--Q3-->
       <%-- <div class="c">--%>
            <div class="am-show-sm-up c">
                <a id="q3"></a>
                <div class="fullBanner">
                    <img src="https://www.hawooo.com/images/ftp/20170808/edmm_09.png" alt="什麼時候開始變胖">
                </div>
                <div class="fullBanner">
                    <a href="#q4">
                        <img src="https://www.hawooo.com/images/ftp/20170808/edmm_10.png" alt="生小孩"></a>
                </div>
                <div class="fullBanner">
                    <a href="#q5">
                        <img src="https://www.hawooo.com/images/ftp/20170808/edmm_11.png" alt="工作後"></a>
                </div>

            </div>
       <%-- </div>--%>
        <!--Q4-->
      <%--  <div class="c">--%>
            <div class="am-show-sm-up c">
                <a id="q4"></a>
                <div class="fullBanner">
                    <img src="https://www.hawooo.com/images/ftp/20170808/edmm_12.png" alt="長時間睡眠不足">
                </div>
                <div class="fullBanner">
                    <a href="#ya">
                        <img src="https://www.hawooo.com/images/ftp/20170808/edmm_13.png" alt="睡不飽"></a>
                </div>
                <div class="fullBanner">
                    <a href="#ma">
                        <img src="https://www.hawooo.com/images/ftp/20170808/edmm_14.png" alt="睡飽飽"></a>
                </div>

            </div>
      <%--  </div>--%>
        <!--Q5-->
       <%-- <div class="c">--%>
            <div class="am-show-sm-up c">
                <a id="q5"></a>
                <div class="fullBanner">
                    <img src="https://www.hawooo.com/images/ftp/20170808/edmm_15.png" alt="時常熬夜">
                </div>
                <div class="fullBanner">
                    <a href="#q6">
                        <img src="https://www.hawooo.com/images/ftp/20170808/edmm_16.png" alt="越夜越美麗"></a>
                </div>
                <div class="fullBanner">
                    <a href="#da">
                        <img src="https://www.hawooo.com/images/ftp/20170808/edmm_17.png" alt="早睡早起"></a>
                </div>

            </div>
       <%-- </div>--%>
        <!--Q6-->
       <%-- <div class="c">--%>
            <div class="am-show-sm-up c">
                <a id="q6"></a>
                <div class="fullBanner">
                    <img src="https://www.hawooo.com/images/ftp/20170808/edmm_18.png" alt="時常眼睛浮腫">
                </div>
                <div class="fullBanner">
                    <a href="#shui">
                        <img src="https://www.hawooo.com/images/ftp/20170808/edmm_19.png" alt="金魚眼"></a>
                </div>
                <div class="fullBanner">
                    <a href="#ya">
                        <img src="https://www.hawooo.com/images/ftp/20170808/edmm_20.png" alt="熊貓眼"></a>
                </div>
            </div>
       <%-- </div>--%>
        <!--da大肚圓-->
        <div class="c">
            <div class="am-show-sm-up">
                <a id="da"></a>
                <div class="fullBanner">
                    <a href="https://www.hawooo.com/user/productdetail.aspx?id=9078">
                        <img src="https://www.hawooo.com/images/ftp/20170808/edmm_21.png" alt="大肚圓"></a>
                </div>
            </div>
            <div class="am-show-sm-up" style="text-align: center; margin-bottom: -10px;">
                <div style="display: inline-block;">
                    <div class="col-sm-4 mx3BannerR">
                        <a href="https://www.hawooo.com/user/productdetail.aspx?id=8768">
                            <img src="https://www.hawooo.com/images/ftp/20170808/edmm_22.png" alt="澱粉控"></a>
                    </div>
                    <div class="col-sm-4 mx3BannerR">
                        <a href="https://www.hawooo.com/user/productdetail.aspx?id=8498">
                            <img src="https://www.hawooo.com/images/ftp/20170808/edmm_23.png" alt="甜點控"></a>
                    </div>
                    <div class="col-sm-4 mx3BannerR">
                        <a href="https://www.hawooo.com/user/productdetail.aspx?id=7424">
                            <img src="https://www.hawooo.com/images/ftp/20170808/edmm_24.png" alt="油炸控"></a>
                    </div>
                </div>
            </div>
        </div>
        <!--tian天生圓-->
        <div class="c">
            <div class="am-show-sm-up">
                <a id="tian"></a>
                <div class="fullBanner">
                    <a href="https://www.hawooo.com/user/productdetail.aspx?id=8177">
                        <img src="https://www.hawooo.com/images/ftp/20170808/edmm_25.png" alt="天生圓"></a>
                </div>
            </div>
            <div class="am-show-sm-up" style="text-align: center; margin-bottom: -10px;">
                <div style="display: inline-block;">
                    <div class="col-sm-4 mx3BannerR">
                        <a href="https://www.hawooo.com/user/productdetail.aspx?id=8768">
                            <img src="https://www.hawooo.com/images/ftp/20170808/edmm_26.png" alt="澱粉控"></a>
                    </div>
                    <div class="col-sm-4 mx3BannerR">
                        <a href="https://www.hawooo.com/user/productdetail.aspx?id=8498">
                            <img src="https://www.hawooo.com/images/ftp/20170808/edmm_27.png" alt="甜點控"></a>
                    </div>
                    <div class="col-sm-4 mx3BannerR">
                        <a href="https://www.hawooo.com/user/productdetail.aspx?id=7424">
                            <img src="https://www.hawooo.com/images/ftp/20170808/edmm_28.png" alt="油炸控"></a>
                    </div>
                </div>
            </div>
        </div>
        <!--shui水腫圓-->
        <div class="c">
            <div class="am-show-sm-up">
                <a id="shui"></a>
                <div class="fullBanner">
                    <a href="https://www.hawooo.com/user/productdetail.aspx?id=8499">
                        <img src="https://www.hawooo.com/images/ftp/20170808/edmm_29.png" alt="水腫圓"></a>
                </div>
            </div>
            <div class="am-show-sm-up" style="text-align: center; margin-bottom: -10px;">
                <div style="display: inline-block;">
                    <div class="col-sm-4 mx3BannerR">
                        <a href="https://www.hawooo.com/user/productdetail.aspx?id=8768">
                            <img src="https://www.hawooo.com/images/ftp/20170808/edmm_30.png" alt="澱粉控"></a>
                    </div>
                    <div class="col-sm-4 mx3BannerR">
                        <a href="https://www.hawooo.com/user/productdetail.aspx?id=8498">
                            <img src="https://www.hawooo.com/images/ftp/20170808/edmm_31.png" alt="甜點控"></a>
                    </div>
                    <div class="col-sm-4 mx3BannerR">
                        <a href="https://www.hawooo.com/user/productdetail.aspx?id=7424">
                            <img src="https://www.hawooo.com/images/ftp/20170808/edmm_32.png" alt="油炸控"></a>
                    </div>
                </div>
            </div>
        </div>
        <!--ma媽咪圓-->
        <div class="c">
            <div class="am-show-sm-up">
                <a id="ma"></a>
                <div class="fullBanner">
                    <a href="https://www.hawooo.com/user/productdetail.aspx?id=9079">
                        <img src="https://www.hawooo.com/images/ftp/20170808/edmm_33.png" alt="水腫圓"></a>
                </div>
            </div>
            <div class="am-show-sm-up" style="text-align: center; margin-bottom: -10px;">
                <div style="display: inline-block;">
                    <div class="col-sm-4 mx3BannerR">
                        <a href="https://www.hawooo.com/user/productdetail.aspx?id=8768">
                            <img src="https://www.hawooo.com/images/ftp/20170808/edmm_34.png" alt="澱粉控"></a>
                    </div>
                    <div class="col-sm-4 mx3BannerR">
                        <a href="https://www.hawooo.com/user/productdetail.aspx?id=8498">
                            <img src="https://www.hawooo.com/images/ftp/20170808/edmm_35.png" alt="甜點控"></a>
                    </div>
                    <div class="col-sm-4 mx3BannerR">
                        <a href="https://www.hawooo.com/user/productdetail.aspx?id=7424">
                            <img src="https://www.hawooo.com/images/ftp/20170808/edmm_36.png" alt="油炸控"></a>
                    </div>
                </div>
            </div>
        </div>
        <!--dong動卻圓-->
        <div class="c">
            <div class="am-show-sm-up">
                <a id="dong"></a>
                <div class="fullBanner">
                    <a href="https://www.hawooo.com/user/productdetail.aspx?id=9081">
                        <img src="https://www.hawooo.com/images/ftp/20170808/edmm_37.png" alt="動卻圓"></a>
                </div>
            </div>
            <div class="am-show-sm-up" style="text-align: center; margin-bottom: -10px;">
                <div style="display: inline-block;">
                    <div class="col-sm-4 mx3BannerR">
                        <a href="https://www.hawooo.com/user/productdetail.aspx?id=8768">
                            <img src="https://www.hawooo.com/images/ftp/20170808/edmm_38.png" alt="澱粉控"></a>
                    </div>
                    <div class="col-sm-4 mx3BannerR">
                        <a href="https://www.hawooo.com/user/productdetail.aspx?id=8498">
                            <img src="https://www.hawooo.com/images/ftp/20170808/edmm_39.png" alt="甜點控"></a>
                    </div>
                    <div class="col-sm-4 mx3BannerR">
                        <a href="https://www.hawooo.com/user/productdetail.aspx?id=7424">
                            <img src="https://www.hawooo.com/images/ftp/20170808/edmm_40.png" alt="油炸控"></a>
                    </div>
                </div>
            </div>
        </div>

        <!--ya壓力圓-->
        <div class="c">
            <div class="am-show-sm-up">
                <a id="ya"></a>
                <div class="fullBanner">
                    <a href="https://www.hawooo.com/user/productdetail.aspx?id=9076">
                        <img src="https://www.hawooo.com/images/ftp/20170808/edmm_41.png" alt="壓力圓"></a>
                </div>
            </div>
            <div class="am-show-sm-up" style="text-align: center; margin-bottom: -10px;">
                <div style="display: inline-block;">
                    <div class="col-sm-4 mx3BannerR">
                        <a href="https://www.hawooo.com/user/productdetail.aspx?id=8768">
                            <img src="https://www.hawooo.com/images/ftp/20170808/edmm_42.png" alt="澱粉控"></a>
                    </div>
                    <div class="col-sm-4 mx3BannerR">
                        <a href="https://www.hawooo.com/user/productdetail.aspx?id=8498">
                            <img src="https://www.hawooo.com/images/ftp/20170808/edmm_43.png" alt="甜點控"></a>
                    </div>
                    <div class="col-sm-4 mx3BannerR">
                        <a href="https://www.hawooo.com/user/productdetail.aspx?id=7424">
                            <img src="https://www.hawooo.com/images/ftp/20170808/edmm_44.png" alt="油炸控"></a>
                    </div>
                </div>
            </div>
        </div>
        <!----footer-->
        <div class="am-show-sm-up">
            <div class="fullBanner">
                <img src="https://www.hawooo.com/images/ftp/20170808/edmm_45.png" alt="Hawooo.com footer">
            </div>
        </div>

        <!--測驗結束bye-->

        <script type="text/javascript" src="../mobile/js/170808.js"></script>
        <style>
            body {
                overflow: hidden;
                background-color: #e9eded;
            }
        </style>
        <script>
            $(function () {
                //$(".c").attr("height", $(document).height());
                $(".c").height($(document).height());
            });
        </script>
    </div>
</asp:Content>
