<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true"
    CodeFile="20191111rank.aspx.cs" Inherits="user_20191111rank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/20191111.min.css" rel="stylesheet" />
    <%-- <link rel="stylesheet" href="assets/css/d11.css">--%>
    <link rel="stylesheet" href="assets/css/20191111rank.min.css">

    <style type="text/css">
        body {
            position: relative;
            height: 100vh;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div>
        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bbn_02.png" %>' style="width: 100%;" />
    </div>

    <div style="width: 100%; margin: 0 auto; float: center; display: block; max-width: 1180px;">
        <section>
            <div class="d11-table-wrapper am-padding-vertical">
                <table class="d11-table">
                    <thead>
                        <tr>
                            <th>Ranking</th>
                            <th colspan="2">Prize</th>
                            <th>Account/E-mail</th>
                            <th style="text-align: left !important; padding: 0">Contact</th>
                            <th>Total Spend</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rp1" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("RANK") %></td>
                                    <td>
                                        <img src='<%#Eval("IMG") %>' width="100" height="100" />
                                        <%--<div class="firework">
                                            <div class="explosion">
                                                <div class="spark green"></div>
                                            </div>
                                            <div class="explosion">
                                                <div class="spark blue"></div>
                                            </div>
                                            <div class="explosion">
                                                <div class="spark red"></div>
                                            </div>
                                            <div class="explosion">
                                                <div class="spark red"></div>
                                            </div>
                                            <div class="explosion">
                                                <div class="spark yellow"></div>
                                            </div>
                                            <div class="explosion">
                                                <div class="spark blue"></div>
                                            </div>
                                            <div class="explosion">
                                                <div class="spark green"></div>
                                            </div>
                                            <div class="explosion">
                                                <div class="spark yellow"></div>
                                            </div>
                                        </div>--%>
                                    </td>
                                    <td><%#Eval("NOTE") %></td>
                                    <td style="padding: 0 !important"><%#Eval("EMAIL") %></td>
                                    <td><%#Eval("PHONE") %></td>
                                    <td><%#Eval("MONEY") %></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>

                    </tbody>
                </table>
            </div>
        </section>

        <!--公告下面那塊-->
        <div>
            <table>
                <tbody>
                    <tr>
                        <td style="width: 100%; background: #000000; text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 13px; font-weight: bold; color: #f8d1dd; padding: 10px 50px 10px 50px; max-height: 55px;">Top spending competition activity:<br>
                            <div style="color: white;">
                                Accumulated Spend Ranking Contest
                                    <br />
                                1. Make your order between 1/11 - 11/11, the more you spend, the bigger chance you get to win!The final amount AFTER using coupon will be calculated.
                                    <br />
                                2. Open to all HaWooo members, the system will renew the ranking every 30mins, check out your rank from time to time!
                                    <br />
                                3. Prizes for ranking contest (30 winners):
                                <ul class="am-margin-vertical-xs">
                                    <li>1st prize : IPhone 11 128 GB (worth RM3599)</li>
                                    <li>2nd prize: RM1000 Shopping Coins</li>
                                    <li>3rd prize: RM500 Shopping Coins</li>
                                    <li>4th-8th prize : DR.CINK skin care set</li>
                                    <li>9th-13th prize: DV Resverratrol Drinks (醇養妍) 3 boxes</li>
                                    <li>14th-20th prize: Dr.Morita Mask 20 pcs</li>
                                    <li>21st-30th prize: 5000 Ha Coins</li>
                                </ul>
                                4. Member should complete your order between 1/11-11/11, and complete your payment before 16/11 23:59:59, member who fails to complete your payment/ return items/ exchange items, HaWooo will consider that member has given up the attending qualification.<br />
                                5. Spending from HaWooo FB Live Show on 11/11 will be added into accumulated spend, member please contact customer service to place your Live Show order, member who fails to provide customer service your order details by 14/11 23:59, HaWooo will consider that member has given up the attending qualification.<br />
                                6. Winners for the ranking contest, the payment is NON-REFUNDABLE.<br />
                                7. For the accumulated spend, you can refer to the ranking. However, the system will eliminate unsuccessful payment order after 16/11 23:59:59. The final result of the winners will be announced on HaWooo Facebook Fan Page on 20/11/2019.<br />
                                8. If there’s multiple members who spend the same amount, the ranking will be based on the time when payment is completed.<br />
                                9. Winners please contact HaWooo customer service after 20/11/2019, shopping coins and HA coins will be transferred to winners’ account before 30/11/2019. The duration for HA coins  is 3 months, please use it within 3 months.<br />
                                10. Winner who unable to comply with the competition terms and conditions, we reserve the right to disqualify that entrants and offer the prize to the next eligible entrant and thereafter until a winner is found<br />
                                11. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these 1111 Shopping Festival Terms from time to time, and in such manner as Hawooo deems appropriate<br />
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>


        <%--=====================側邊選單 Start ==========================--%>

        <div class="side-bar am-center">
            <ul>
                <li>
                    <a href="20191111.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_01.png" %>' alt="ss_01" style="width: 100%" />
                    </a>
                </li>
                <li>
                    <a href="20191111pre_sale.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_02.png" %>' alt="ss_02" style="width: 100%" />
                    </a>
                </li>
                <li>
                    <a href="#!" id="ss03">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_03.png" %>' alt="ss_03" style="width: 100%" />
                    </a>
                </li>
                <li>
                    <a href="20191111.aspx?#s3" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_04.png" %>' alt="ss_04" style="width: 100%" />
                    </a>
                </li>
                <li>
                    <a href="value_package.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_05.png" %>' alt="ss_05" style="width: 100%" />
                    </a>
                </li>
                <li><a href="20191111.aspx?#s6" target="_blank">
                    <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_06.png" %>' alt="ss_06" style="width: 100%" />
                </a>
                </li>
            </ul>
        </div>

        <%--=====================側邊選單 End==========================--%>
    </div>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
    <script type="text/javascript" src="assets/js/171027.js"></script>

    <script type="text/javascript">
        $(function hrefChange() {
            var date1 = new Date("2019-11-06T00:00:00");
            var dateNow = new Date();
            if (dateNow > date1) {
                $('#ss03').attr({
                    "href": "20191111preorder.aspx",
                    "target": "_black"
                });
            }
        });
    </script>
</asp:Content>
