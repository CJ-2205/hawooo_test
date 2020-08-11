<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="20181111redenvelope.aspx.cs" Inherits="user_20181111redenvelope" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .info {
            font-size: 25px;
            position: absolute;
            top: 70px;
            margin: auto;
            width: 100%;
            text-align: center;
            color: #451F25;
            font-weight: 900;
            line-height: 40px;
        }

        .red_list {
            position: absolute;
            top: 130px;
            width: 100%;
            padding: 60px 60px;
        }

            .red_list .block {
                width: 90%;
                height: 125px;
                background: #b3b3b3;
                opacity: 0.5;
                position: absolute;
                z-index: 2;
                top: 1em;
                margin: auto;
                text-align: center;
                left: 0.75em;
            }

            .red_list .date {
                position: relative;
                font-size: 20px;
                font-weight: bold;
                color: white;
                margin: auto;
                text-align: center;
                bottom: 3.0em;
            }

        .big_red {
            position: absolute;
            top: 550px;
            margin: auto;
            text-align: center;
            width: 100%;
        }

        .go_btn {
            position: absolute;
            display: block;
            margin: auto;
            width: 100%;
            text-align: center;
            bottom: 80px;
        }

        .red_note {
            width: 100%;
            display: block;
            background-color: #000000;
            color: white;
        }

        h1, h2, h3, h4, h5, h6 {
            margin: 12px 0 0 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../images/ftp/20181111/red/r_01.png" width="100%" />
    </div>

    <div class="am-container" style="position: relative">
        <div style="position: relative;">
            <img src="../images/ftp/20181111/red/r_bg.png" width="100%" />
            <div class="info">
                <asp:Literal ID="lit_info" runat="server"></asp:Literal>
            </div>

            <div class="red_list">
                <ul class="am-avg-sm-5">
                    <asp:Repeater ID="rp_date" runat="server">
                        <ItemTemplate>
                            <li style="cursor: pointer;">
                                <asp:HiddenField ID="hf_key" runat="server" Value='<%# DataBinder.Eval(Container.DataItem,"Key") %>' />
                                <div style="position: relative; text-align: center; height: 190px; width: 210px">

                                    <div class="block" style='<%# DataBinder.Eval(Container.DataItem,"Date").Equals(DateTime.Now.ToString("yyyy-MM-dd")) ? "display:none;": "" %>'></div>
                                    <asp:Panel runat="server" ID="panel1">
                                        <img src="../images/ftp/20181111/red/r_item_01.png" onclick="GetCoin(<%# Convert.ToDateTime(DataBinder.Eval(Container.DataItem,"Date")).ToString("yyyyMMdd")  %>);" width="100%" />

                                        <span class="date">
                                            <%# Convert.ToDateTime(DataBinder.Eval(Container.DataItem,"Date")).ToString("dd/MM")  %>
                                        </span>
                                    </asp:Panel>
                                    <asp:Panel runat="server" ID="panel2" Visible="false">
                                        <img src="../images/ftp/20181111/red/r_item_02.png" width="100%" />
                                    </asp:Panel>
                                </div>

                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
            <div class="big_red" id="bigimg0" runat="server">

                <img src="../images/ftp/20181111/red/r_item_03.png" width="500px" style="position: relative;" onclick="<%= ("2018-11-11").Equals(DateTime.Now.ToString("yyyy-MM-dd")) ? "GetCoin('20181111');" : "" %>" />
                <span style="position: absolute; margin: auto; display: -webkit-box; width: 100%; text-align: center; top: 60%; left: 42%; font-size: 30px; color: white;">BIG ANGPAO</span>
            </div>
            <div class="big_red" id="bigimg1" runat="server" style="display: none">
                <img src="../images/ftp/20181111/red/r_item_04.png" width="500px" style="position: relative;" />

            </div>
            <div class="big_red" id="bigimg2" runat="server" style="display: none">
                <img src="../images/ftp/20181111/red/r_item_05.png" width="500px" style="position: relative;" />

            </div>
            <div class="go_btn">
                <a href="20181111.aspx">
                    <img src="../images/ftp/20181111/red/r_button_01.png" /></a>
            </div>
        </div>
        <div class="red_note" style="padding: 20px" id="zh_note" runat="server">
            <h1>���ʿ�k:</h1>
            <h2>�@�B���ʴ���  </h2>
            <p>
                �D1/11-11/11, 2018
            </p>
            <h2>�G�B���ʤ���
            </h2>
            <p>
                �D 1/11-10/11 �C�ѥi��100HA���]�A11/11��ѥi����11�j���]200HA
                <br />
                ����ѼƷ|�M�w11/11�����11�j���]200HA��_�ܦ�5��
            </p>
            <p>
                �|�� : 1/11�B3/11�B5/11�B11/11�@��4�ѡA�@�i�o��100HAx3�� + ��11�j���]200HA = 500HA
                <br />
                �|�� : 1/11�B3/11�B5/11�B7/11�B11/11�@��5�ѡA�@�i�o��100HAx4�� + ��11�j���]200HAx5�� = 1400HA
                <br />
                �|�� : 1/11~11/11�@��11�ѡA�@�i�o��100HAx10�� + ��11�j���]200HAx5�� = 2000HA
            </p>
            <h2>�T�B�`�N�ƶ�
            </h2>
            <p>
                �� 100HA = RM1
                �� HA���i�󵲱b�ɨϥ�
            </p>
        </div>
        <div class="red_note" style="padding: 20px" id="en_note" runat="server">
            <h1>HaWooo 1111 Shopping Festival:</h1>
            <h2>1. Promotion Date . Now - November 11, 2018</h2>

            <h2>2. Promotion Description
            </h2>

            <p>
                �DCoupon
                <br />
                RM30 OFF (use Promo code:SF30) min spend 250 
                <br />
                RM40 OFF (use Promo code:SF40) min spend 350 
                <br />
                RM111 OFF (use Promo code:SF111) min spend 666 (only on 11.11)
                <br />
            </p>
            <h2>3. Notice
            </h2>
            <p>
                �� Promo codes are not applicable to the following brands/products: BHK's, DR.CINK, Dr.Lady, UNIQMAN,H&J,KP,Share,mamaway...etc, and 24H FLASH SALE products.
                <br />
                �� All brand promotional activities are not applicable to 24H FLASH SALE products.
            </p>
        </div>
    </div>
    <script>
        function GetCoin(date) {
            var m = <%= Session["A01"] == null ? "0" : Session["A01"].ToString() %>;
            if (m == 0) {
                doLogin('20181111redenvelope.aspx');
            } else {
                var val = "{'date':'" + date + "'}";
                $.ajax({
                    type: "post",
                    url: "20181111redenvelope.aspx/GetRed",
                    data: val,
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (msg) {
                        var str = msg.d;
                        if (str === "OK")
                            alert2url('Successfully received', '20181111redenvelope.aspx');
                        else
                            alert(msg.d);
                    },
                    error: function () {
                        alert("ERROR!");
                    }

                });
            }

        }
    </script>
</asp:Content>

