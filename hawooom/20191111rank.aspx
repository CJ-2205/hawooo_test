<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="20191111rank.aspx.cs" Inherits="mobile_static_20191111rank" %>

<%@ Register Src="~/mobile/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/swiper.min.css" rel="stylesheet" />
    <link href="assets/css/20191111.min.css" rel="stylesheet" />
    <link href="assets/css/20191111rank.min.css" rel="stylesheet">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--    <link href="../2017motherday/assets/css/newyearmom.css" rel="stylesheet" />--%>
    <style>
        /*.dl1-table > li {
            text-overflow: ellipsis;
            white-space: nowrap;
            width: 90%;
            overflow: hidden;
        }*/
    </style>
    <div class="page-main" style="margin-top: -5px;">

        <section>
            <div style="width: 100%; margin: 0 auto; float: center; display: block; background: white">
                <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/bbn_02m.png" %>' style="width: 100%;" />
                <div class="am-scrollable-horizontal">
                    <table class="d11-table">
                        <thead>
                            <tr>
                                <th colspan="3" style="text-align: left">Accumulated spend ranking contest
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="rp1" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td class="rank-cup1" style="font-weight: bold; font-size: large; color: darkred"><%#Eval("RANK").ToString() %></td>
                                        <td class="rank-award">
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
                                        <td>
                                            <ul style="list-style: none; padding: 0; color: black; font-weight: bold">
                                                <li>Prize:<%#Eval("NOTE") %></li>
                                                <li><%#Eval("EMAIL") %></li>
                                                <li>Contact:<%#Eval("PHONE") %></li>
                                                <li>Total Spend:<%#Eval("MONEY") %></li>
                                            </ul>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
    </div>

    <!--公告開始喔-->

    <div class="am-cf" style="width: 100%; margin: 0 auto; display: block;">
        <ul style="float: left; margin: 0; padding: 0; list-style-type: none; font-size: 0; width: 100%;">
            <!--公告上面那塊-->
            <li>
                <table style="width: 100%; border: 0; margin-top: 20px">
                    <tbody>
                        <tr>
                            <td style="width: 100%; background: #000000; text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: 13px; font-weight: bold; color: #f8d1dd; padding: 10px 50px 10px 50px; max-height: 55px;">Top spending competition activity:<br>
                                <span style="color: white;">Accumulated Spend Ranking Contest
                                    <br />
                                    1. Make your order between 1/11 - 11/11, the more you spend, the bigger chance you get to win!The final amount AFTER using coupon will be calculated.
                                    <br />
                                    2. Open to all HaWooo members, the system will renew the ranking every 30mins, check out your rank from time to time!
                                    <br />
                                    3. Prizes for ranking contest (30 winners)<br />
                                    * 1st prize : IPhone 11 128 GB (worth RM3599)<br />
                                    * 2nd prize: RM1000 Shopping Coins<br />
                                    * 3rd prize: RM500 Shopping Coins<br />
                                    * 4th-8th prize : DR.CINK skin care set<br />
                                    * 9th-13th prize: DV Resverratrol Drinks (醇養妍) 3 boxes<br />
                                    * 14th-20th prize: Dr.Morita Mask 20 pcs<br />
                                    * 21st-30th prize: 5000 Ha Coins<br />
                                    4. Member should complete your order between 1/11-11/11, and complete your payment before 16/11 23:59:59, member who fails to complete your payment/ return items/ exchange items, HaWooo will consider that member has given up the attending qualification.<br />
                                    5. Spending from HaWooo FB Live Show on 11/11 will be added into accumulated spend, member please contact customer service to place your Live Show order, member who fails to provide customer service your order details by 14/11 23:59, HaWooo will consider that member has given up the attending qualification.<br />
                                    6. Winners for the ranking contest, the payment is NON-REFUNDABLE.<br />
                                    7. For the accumulated spend, you can refer to the ranking. However, the system will eliminate unsuccessful payment order after 16/11 23:59:59. The final result of the winners will be announced on HaWooo Facebook Fan Page on 20/11/2019.<br />
                                    8. If there’s multiple members who spend the same amount, the ranking will be based on the time when payment is completed.<br />
                                    9. Winners please contact HaWooo customer service after 20/11/2019, shopping coins and HA coins will be transferred to winners’ account before 30/11/2019. The duration for HA coins  is 3 months, please use it within 3 months.<br />
                                    10. Winner who unable to comply with the competition terms and conditions, we reserve the right to disqualify that entrants and offer the prize to the next eligible entrant and thereafter until a winner is found.<br />
                                    11. Hawooo reserves the sole right to alter, modify, add to or otherwise vary these 1111 Shopping Festival Terms from time to time, and in such manner as Hawooo deems appropriate.<br />
                                </span>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </li>
        </ul>
    </div>
    <div class="footer-bar">
        <div class="am-container">
            <ul class="am-avg-sm-5">
                <li>
                    <a href="20191111pre_sale.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_02m.png" %>' alt="ss_02m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="#!" id="ss03">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_03m.png" %>' alt="ss_03m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="20191111.aspx?#s3" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_04m.png" %>' alt="ss_04m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="value_package.aspx" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_05m.png" %>' alt="ss_05m" style="width: 100%;" />
                    </a>
                </li>
                <li>
                    <a href="20191111.aspx?#s5" target="_blank">
                        <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20191111/ss_06m.png" %>' alt="ss_06m" style="width: 100%;" />
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <script>
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

