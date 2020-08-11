<%@ Page Language="C#" AutoEventWireup="true" CodeFile="20180110.aspx.cs" Inherits="_20180110"  MasterPageFile="~/mobile/mobile.master"%>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        $(document).ready(function () {
            if (document.body.clientWidth < 530) {
                $(".am-img-responsive").height = "50%";
            }
        });
    </script>
    <style type="text/css">
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        $(function () {
            $("#body").removeClass("am-container");
        })
    </script>

    <!--edm開始-->
 <div style="margin:0 auto;display:block;max-width:650px;">
    <ul style="float:left;list-style-type:none;font-size:0;">
               
               <li><img alt="新年禮籃" src="https://www.hawooo.com/images/ftp/20180111/edmm_01.png" style="width:100%;" /></li>
        
               <li><a href="https://www.hawooo.com/user/productdetail.aspx?id=12233" target="_blank"><img alt="188新年禮籃" src="https://www.hawooo.com/images/ftp/20180111/edmm_02.png" style="width:100%;" /></a></li>
              
                <li><a href="https://www.hawooo.com/user/productdetail.aspx?id=12232" target="_blank"><img alt="388新年禮籃" src="https://www.hawooo.com/images/ftp/20180111/edmm_03.png" style="width:100%;" /></a></li>
        
               <li><a href="https://www.hawooo.com/user/productdetail.aspx?id=12231" target="_blank"><img alt="588新年禮籃" src="https://www.hawooo.com/images/ftp/20180111/edmm_04.png" style="width:100%;" /></a></li>
               
               <li><a href="https://www.hawooo.com/user/productdetail.aspx?id=12230" target="_blank"><img alt="588新年禮籃" src="https://www.hawooo.com/images/ftp/20180111/edmm_05.png" style="width:100%;" /></a></li>
               
               <li><img alt="hawooo.com" src="https://www.hawooo.com/images/ftp/20180111/edmm_06.png" style="width:100%;" /></li>
    </ul>
    </div>

    <!--[if (gte IE 9)|!(IE)]><!-->
    <script src="assets/js/jquery.min.js"></script>
    <!--<![endif]-->
    <script src="assets/js/amazeui.min.js"></script>
    <script type="text/javascript" src="assets/js/171128.js"></script>
    <script>
        function success(result, context, method) {
            if (method == 'GetCP') {
                alert(result);
                if (result == "請先登入會員") {
                    doLogin(window.location.href);
                }
            }
        }
        function GetCoupone(stime, etime, gb01) {
            PageMethods.GetCP(stime, etime, gb01, success, null);
        }
    </script>
</asp:Content>