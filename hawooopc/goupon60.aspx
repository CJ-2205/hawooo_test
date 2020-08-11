<%@ Page Language="C#" AutoEventWireup="true" CodeFile="goupon60.aspx.cs" Inherits="_goupon60" MasterPageFile="~/user/user.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style type="text/css">
        body {
            position: relative;
            height: auto;
        }


        /*滑過去變小一點*/
        .go_bt {
            -webkit-transition: all 0.3s ease;
            -moz-transition: all 0.3s ease;
            -ms-transition: all 0.3s ease;
            -o-transition: all 0.3s ease;
            transition: all 0.3s ease;
        }

            .go_bt:hover {
                -webkit-transform: scale(0.95);
                -moz-transform: scale(0.95);
                -ms-transform: scale(0.95);
                -o-transform: scale(0.95);
                transform: scale(0.95);
            }
    </style>


    <script>
        function check() {
            var bool = '<%=Session["Login"] %>';
            if (bool == 'true') {
                $.ajax({
                    type: 'post',
                    url: 'goupon60.aspx/CheckUser',           //here
                    data: '{}',
                    datatype: "json",
                    contentType: "application/json; charset=utf-8",
                    success: function (response) {
                        alert2url(response.d, "https://www.hawooo.com/user/180430lovemom.aspx");         //here
                    },
                    error:
                    function (response) {
                        alert2url("Oh No,系統好像出現了問題,若多次無法使用請麻煩與客服聯繫。", "https://www.hawooo.com/user/goupon60.aspx");
                    }
                })
            }
            else {
                doLogin('goupon60.aspx')
            }
        }



    </script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <!--神奇圖層區開始-->
    <div style="width: 100%; position: relative; width: 850px; z-index: 1; margin: 0 auto">
        <img id="gotop" src="https://www.hawooo.com/images/ftp/20180511/bg.gif" alt="搶60趁現在" style="width: 100%">


        <div style="display: inline; position: absolute; z-index: 2; width: 66%; top: 0; bottom: 0; left: 0; right: 0;">


            <img class="go_bt" src="https://www.hawooo.com/images/ftp/20180511/btn_now.png" alt="馬上登記快啊" style="position: absolute; top: 80%; margin: auto; width: 73%; left: 38%;" onclick="check()" />


        </div>

    </div>


    <!--神奇圖層區掰掰-->

    <!--footer-->

    <div style="width: 100%; position: relative; width: 850px; z-index: 5; margin: 0 auto">

        <img class="twoyearbottom" src="https://www.hawooo.com/images/ftp/20180312/footer.png" alt="hawooo.com" style="width: 100%;">
    </div>



    <script src="assets/js/jquery.url.js"></script>
    <script src="assets/js/clipboard.min.js"></script>




</asp:Content>
