<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true"
    CodeFile="2018cnyregister.aspx.cs" Inherits="user_2018cnyregister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .pic
        {
            position: absolute;
            left: 0;
            right: 0;
            margin: 0 auto;
            width: 1180px;
            background: #aaa;
        }
        
        .pic img
        {
            position: absolute;
            right: 0;
            width: 900px;
        }
        
        .buy1
        {
            background: url(https://www.hawooo.com/images/ftp/20180209/pcpage2new_02.png)no-repeat;
            background-size: 100%;
            margin: 0px auto;
            padding: 0px;
        }
        
        .member-info
        {
            margin-top: 20px;
            padding: 10px 20px;
            background: white;
        }
        
        .btn-pink
        {
            background: white;
            border: 1px solid #ff0068;
            color: #ff0068;
            font-size: 14px;
            height: 40px;
            padding: 0 20px;
            line-height: 40px;
        }
        
        .btn-Purple
        {
            background: white;
            border: 1px solid #7f47dd;
            color: #7f47dd;
            font-size: 14px;
            height: 40px;
            padding: 0 20px;
            line-height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container" style="width: 900px; padding: 10px 0px 10px 0px">
        <!--活動主圖-->
        <div style="width: 100%; position: relative; width: 900px; z-index: 2; margin: 0 auto">
            <img alt="" src="https://www.hawooo.com/images/ftp/20180209/pcpage2_01.png" style="float: left;
                display: block; width: 100%;" />
        </div>
        <div style="padding-bottom: 10px; float: left; background-color: #c6c7ca">
            <div class="am-fl am-center" style="margin: 0 auto; width: 900px; padding-top: 10px"
                runat="server" id="login">
                <div style="margin: 0 auto; display: block; width: 800px;">
                    <div class="am-u-sm-12 am-text-center " style="background-color: #d81b60;">
                        <span style="color: white; font-size: 18px; font-weight: bold; line-height: 50px">請先
                            <a onclick="doLogin('2018cnyregister.aspx');" style="color: yellow; cursor: pointer;">
                                [登入] </a>會員</span>
                    </div>
                </div>
            </div>
            <div class="am-fl am-center" style="margin: 0 auto; width: 900px; padding-top: 10px"
                runat="server" id="noorder">
                <div style="margin: 0 auto; display: block; width: 800px;">
                    <div class="am-u-sm-12 am-text-center " style="background-color: #d81b60;">
                        <span style="color: white; font-size: 18px; font-weight: bold; line-height: 50px">尚無相關訂單資訊</span>
                    </div>
                </div>
            </div>
            <asp:Repeater ID="rp_order_list" runat="server">
                <ItemTemplate>
                    <div class="am-fl am-center" style="margin: 0 auto; width: 900px;">
                        <div style="margin: 0 auto; display: block; width: 800px;">
                            <div class="am-u-sm-12 member-info">
                                <div class="am-u-sm-8" style="display: block;">
                                    <asp:HiddenField ID="hf_ORM02" runat="server" Value='<%# Eval("ORM02") %>' />
                                    <asp:HiddenField ID="hf_ORM19" runat="server" Value='<%# Eval("ORM19") %>' />
                                    <p>
                                        <i class="am-icon-list-ul"></i>訂單編號：<asp:Literal ID="lit_ORM02" runat="server" Text='<%# Eval("ORM02") %>'></asp:Literal></p>
                                    <p>
                                        <i class="am-icon-dollar"></i>訂單金額：RM<asp:Literal ID="lit_ORM08" runat="server" Text='<%# Eval("ORM08") %>'></asp:Literal></p>
                                </div>
                                <div class="am-u-sm-4" style="display: block;">
                                    <asp:Literal ID="lit_type" runat="server"></asp:Literal>
                                </div>
                            </div>
                            <div class="am-u-sm-12 am-text-center " style="background-color: #d81b60;" runat="server"
                                id="sel">
                                <span style="color: white; font-size: 15px; font-weight: bold; line-height: 50px">符合滿額贈門檻，請選擇一個贈品</span>
                            </div>
                            <div class="am-u-sm-12 am-text-center " style="background-color: #7f47dd;" runat="server"
                                id="issel">
                                <span style="color: white; font-size: 15px; font-weight: bold; line-height: 50px">恭喜你，已經選擇帶
                                    <span style="font-size: 15px; color: yellow; font-weight: bold;">
                                        <asp:Literal ID="lit_RG05" runat="server" Text='<%# Eval("RG05") %>'></asp:Literal></span>
                                    回家！ </span>
                            </div>
                        </div>
                        <!--第一排RM188-->
                        <div style="width: 100%; margin: 0 auto; display: block; width: 800px; list-style-type: none;
                            padding: 0px;" runat="server" id="one">
                            <div style="float: left; list-style-type: none; padding: 0px;">
                                <div class="buy1 am-cf" style="width: 100%;">
                                    <div style="padding: 0 10px 0 0; margin-top: 10px">
                                        <ul class="am-avg-sm-5">
                                            <li class="am-fl" style="width: calc(16%); padding: 0; margin-top: -10px;">
                                                <img src="https://www.hawooo.com/images/ftp/20180209/pcpage2_02.png">
                                            </li>
                                            <asp:Repeater ID="rp1" runat="server">
                                                <ItemTemplate>
                                                    <li class="am-fl" style="width: calc(28% - 20px); background: white; padding: 10px;
                                                        margin: 0 10px 2px 10px" onclick="selGift('<%# Eval("WP02") %>','<%# Eval("WPA01") %>','<%# Eval("ORM02") %>');">
                                                        <asp:HiddenField ID="hf_WPA01" runat="server" Value='<%# Eval("WPA01") %>' />
                                                        <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' style="width: 100%;">
                                                        <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px;
                                                            color: #535252; display: inline-flex;">
                                                            <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                                        </h4>
                                                    </li>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--第一排結束-->
                        <!--第二排RM288-->
                        <div style="width: 100%; margin: 0 auto; display: block; width: 800px; list-style-type: none;
                            padding: 0px;" runat="server" id="two">
                            <div style="float: left; list-style-type: none; padding: 0px;">
                                <div class="buy1 am-cf" style="width: 100%;">
                                    <div style="padding: 0 10px 0 0; margin-top: 10px">
                                        <ul class="am-avg-sm-5">
                                            <li class="am-fl" style="width: calc(16%); padding: 0; margin-top: -10px;">
                                                <img src="https://www.hawooo.com/images/ftp/20180209/pcpage22_02.png">
                                            </li>
                                            <asp:Repeater ID="rp2" runat="server">
                                                <ItemTemplate>
                                                    <li class="am-fl" style="width: calc(28% - 20px); background: white; padding: 10px;
                                                        margin: 0 10px 2px 10px" onclick="selGift('<%# Eval("WP02") %>','<%# Eval("WPA01") %>','<%# Eval("ORM02") %>');">
                                                        <asp:HiddenField ID="hf_WPA01" runat="server" Value='<%# Eval("WPA01") %>' />
                                                        <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' style="width: 100%;">
                                                        <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px;
                                                            color: #535252; display: inline-flex;">
                                                            <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                                        </h4>
                                                    </li>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--第二排結束-->
                        <!--第三排RM388-->
                        <div style="width: 100%; margin: 0 auto; display: block; width: 800px; list-style-type: none;
                            padding: 0px;" runat="server" id="three">
                            <div style="float: left; list-style-type: none; padding: 0px;">
                                <div class="buy1 am-cf" style="width: 100%;">
                                    <div style="padding: 0 10px 0 0; margin-top: 5px">
                                        <ul class="am-avg-sm-5">
                                            <li class="am-fl" style="width: calc(16%); padding: 0; margin-top: -10px;">
                                                <img src="https://www.hawooo.com/images/ftp/20180209/pcpage23_02.png">
                                            </li>
                                            <asp:Repeater ID="rp3" runat="server">
                                                <ItemTemplate>
                                                    <li class="am-fl" style="width: calc(28% - 20px); background: white; padding: 10px;
                                                        margin: 0 10px 2px 10px" onclick="selGift('<%# Eval("WP02") %>','<%# Eval("WPA01") %>','<%# Eval("ORM02") %>');">
                                                        <asp:HiddenField ID="hf_WPA01" runat="server" Value='<%# Eval("WPA01") %>' />
                                                        <img src='<%# "../images/webimgs/" + Eval("WP08_1") %>' style="width: 100%;">
                                                        <h4 style="margin: 10px 5px; height: 40px; overflow: hidden; font-size: 14px; line-height: 20px;
                                                            color: #535252; display: inline-flex;">
                                                            <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                                        </h4>
                                                    </li>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--第三排結束-->
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <script>
                function selGift(pname, iid, oid) {
                    var msg = "訂單:" + oid + ",是否確認選擇[" + pname + "]為贈品?";
                    $("#confirm-msg").html(msg);
                    $("#my-confirm").css("z-index", 9999);
                    $('#my-confirm').modal({
                        relatedTarget: this,
                        //closeOnCancel: false,
                        closeViaDimmer: false,
                        onConfirm: function (options) {
                            $("#hf_IID").val(iid);
                            $("#hf_OID").val(oid);
                            $("#hf_PNAME").val(pname);
                            $('#<%= Button1.ClientID %>').click();
                        },
                        // closeOnConfirm: false,
                        onCancel: function () {
                            $("#my-confirm").modal('close');
                        }
                    });
                }
            </script>
            <asp:UpdatePanel ID="up_sel" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:HiddenField ID="hf_IID" runat="server" ClientIDMode="Static" />
                    <asp:HiddenField ID="hf_OID" runat="server" ClientIDMode="Static" />
                    <asp:HiddenField ID="hf_PNAME" runat="server" ClientIDMode="Static" />
                    <asp:Button ID="Button1" runat="server" Text="Button" Style="display: none" OnClick="Button1_Click" />
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
        </div>
        <!--下面帶活動說明-->
        <div style="width: 100%; margin: 0 auto; display: block; width: 900px; float: left">
            <ul style="float: left; margin: 0; list-style-type: none; font-size: 0; width: 100%;">
                <li>
                    <img alt="Hawooo.com" src="https://www.hawooo.com/images/ftp/20171212/lottery_2.png"
                        style="float: left; display: block; width: 100%;" /></li>
                <li>
                    <table width="900" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                            <tr>
                                <td width="5%" bgcolor="#000000" style="padding-top: 0px; max-height: 55px;">
                                </td>
                                <td width="90%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif;
                                    font-size: 12px; font-weight: bold; text-transform: uppercase; color: #f8d1dd;
                                    padding: 10px 0px; max-height: 55px;">
                                    好礼9选1<br>
                                    <span style="color: white; line-height: 18px; font-size: 12px">• 会员需于9/2(Fri.)-21/2(Wed.)内完成订购，单笔订单金额符合以下门槛且于22/2前完成付款⽅可参加好礼登记活动。未于活动期间内完成付款/退换货或/未于活动期间内完成登录并选择赠品者均视同放弃，不得逾期要求补登。<br>
                                        <span style="color: yellow;">• 单笔满RM188｜ </span>可登记参加以下赠品3选1：Heme小心机变色润唇膏3g(市值RM39.9)、Heme蛋化毛孔紧致泥膜50g(市值RM27)、NEWART红宝石能量瞬护隔离霜
                                        30ml(市值RM49.9)。<br>
                                        <span style="color: yellow;">• 单笔满RM288｜ </span>可登记参加以下赠品或180的满额赠品6选1：Nicedoctor玫瑰蜗牛保湿香氛冻膜180g(市值RM59.9)、Nature
                                        tree保湿浓缩精华液250ml(市值RM68.9)、法婡雅 会说话的唇露(市值RM59.9)。<br>
                                        <span style="color: yellow;">• 单笔满RM388｜ </span>可登记参加以下赠品或180/280的满额赠品9选1：UNT 轻裸光透CC霜SPF36
                                        PA++ 30ml(市值RM58.9)、LA BEAU净肤淡斑美白菁华30ml(市值RM89.9)、BHK‘s璨研维他命B群+铁(60颗/瓶)＋奢光净白面膜5入(市值RM119.8)。<br>
                                        •确认符合资格者，好物飞行将于该笔订单出货时一并寄送赠品，如遇赠品缺货时或其他不可抗力之因素，好物飞行有权以购物金替补，180满额赠赠品将以RM25替代，280满额赠赠品将以RM50替代，380满额赠赠品将以RM80替代，统一归户时间为5/3，恕不逐一通知。<br>
                                        <span style="color: yellow;">• 西马99免运 东马199免运｜</span>活动期间内订购好物官网商品者，即可享有『西马99免运东马199免运』，是否符合免运资格均是以最终订单金额为准，最终订单金额系为扣除所有Ha币/折扣券/购物金后的实际付款金额。<br>
                                    </span>
                                    <br>
                                    其他 <span style="color: white; line-height: 18px; font-size: 12px">
                                        <br>
                                        •参加本活动者即同意受本活动办法及注意事项之规范，如有违反本活动办法及注意事项者，本公司得取消其参加或兑换资格，并对于任何破坏本活动之⾏为保留法律追诉权。其他明显违反活动公平性之⽅式，意图混淆或影响活动结果者，⼀经本公司发现或经第三⼈检举经查证属实，本公司有权⽴即取消其得奖资格，除追回奖品外，并对于任何破坏本活动之⾏为保留法律追诉权。<br>
                                        • 本公司保留活动与赠品变更以及拥有修改及取消此活动的权利，无需事前通知，同时有对此活动之所有事宜有最终解释与裁决权。 </span>
                                </td>
                                <td width="5%" bgcolor="#000000" style="text-align: center; font-family: Arial,Helvetica,sans-serif;
                                    font-size: 25px; font-weight: bold; text-transform: uppercase; color: #F8FF00;
                                    padding-top: 0px; max-height: 55px;">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </li>
                <li>
                    <img alt="Hawooo.com" src="https://www.hawooo.com/images/ftp/20171219/bhk/footerpc.png"
                        style="float: left; display: block; width: 100%;" /></li>
            </ul>
        </div>
    </div>
</asp:Content>
