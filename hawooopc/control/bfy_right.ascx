<%@ Control Language="C#" AutoEventWireup="true" CodeFile="bfy_right.ascx.cs" Inherits="user_control_bfy_right" %>
<style>
    .angle-right {
        float: right;
        display: block;
        width: 50px;
        height: 50px;
        transition: all ease-in-out .3s;
    }

        .angle-right:hover {
            width: 70px;
        }

    .tab_expBox_right {
        width: 100%;
        height: 140px;
        margin: 0 0 10px 0;
        padding: 15px;
        line-height: 23px;
        background: #fff;
        color: #333;
        text-align: left;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
        box-shadow: 2px 2px 2px rgba(10%,10%,10%,0.3);
    }

    .channel {
        padding: 0px;
        margin: 0px;
        list-style: none;
    }

    ul.channel li {
        width: 285px;
        height: 50px;
        line-height: 50px;
        font-size: 24px;
        font-weight: bold;
        letter-spacing: 1px;
        -webkit-border-radius: 5px;
        -moz-border-radius: 5px;
        border-radius: 5px;
    }

        ul.channel li a {
            width: 100%;
            height: 50px;
            display: block;
            padding-left: 50px;
            color: #fff;
            text-decoration: none;
        }

        ul.channel li.orderform {
            width: 100%;
            margin-bottom: 15px;
            background: #5abcb6;
            box-shadow: 0 5px rgba(65,182,171,1);
        }

        ul.channel li.rules {
            width: 100%;
            margin-bottom: 15px;
            background: #4fc0e5;
            box-shadow: 0 5px rgba(60,175,216,1);
        }

        ul.channel li.hotProduct {
            width: 100%;
            margin-bottom: 15px;
            background: #6498d0;
            box-shadow: 0 5px rgba(80,134,197,1);
        }

        ul.channel li.hotBand {
            position: relative;
            width: 100%;
            height: 100px;
            margin: 0;
        }
</style>

<div class="am-u-sm-3" style="padding-left: 0px;">

    <div class="tab_expBox_right">
        <p>
            <span style="width: 5px; height: 10px; background: #447bba;">&nbsp;</span>
            <strong>目前匯率</strong>
        </p>
        <p style="border-bottom: 1px #d7d7d7 dashed">
            <img src="img/bfy/currency-icon.png" style="width: 20px;">
            <span style="font-size: 12px;">馬幣/台幣：<span style="color: #fd0303;">RM1 / NTD<asp:Literal ID="lit_BIF02_2" runat="server"></asp:Literal></span></span>
        </p>
        <p style="border-bottom: 1px #d7d7d7 dashed">
            <img src="img/bfy/shipment-icon.png" style="width: 20px;">
            <span style="font-size: 12px;">運費：<span style="color: #fd0303;">1kg-RM<asp:Literal ID="lit_BIF02_1" runat="server"></asp:Literal></span>&nbsp;&nbsp;續重0.5 RM10
                <br />
                (免代購服務費用)</span>
        </p>
        <p style="border-bottom: 1px #d7d7d7 dashed">
           
            <span style="font-size: 12px;">WhatApp：+886 905188434</span>
        </p>
    </div>
    <ul class="channel">
        <li class="hotProduct">
            <a href="bfyproducts.aspx">熱門代購
                  <span class="angle-right">
                      <img src="img/bfy/menu-icon-3.png" style="width: 45px;"></span>
            </a>
        </li>
        <li class="orderform">
            <a href="bfycart.aspx">填寫代購單
                             <span class="angle-right">
                                 <img src="img/bfy/menu-icon-1.png" style="width: 45px;"></span>
            </a>
        </li>
        <li class="rules">
            <a href="bfyinfo.aspx">代購規則
                               <span class="angle-right">
                                   <img src="img/bfy/menu-icon-2.png" style="width: 45px;"></span>
            </a>
        </li>
        <li class="hotBand">
            <a href="page3.html" style="position: absolute; left: 3px; letter-spacing: 5px">台灣熱門品牌</a>
            <img src="img/bfy/hot-band-title.png" />
        </li>
    </ul>
    <div class="bandContent" style="background: url(img/hot-band-bg.png) repeat-y;">
        <ul class="bandList">
            <asp:Repeater ID="rp_brand_list" runat="server">
                <ItemTemplate>
                    <li style="margin-bottom: 10px">
                        <div>
                            <a href='<%# Eval("BBD02") %>' target="_bank">
                                <img src='<%# "http://www.hawooo.com/images/bfyimgs/" + Eval("BBD08") %>' class="am-img-thumbnail" />
                                <p><%# Eval("BBD03") %></p>
                            </a>
                        </div>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
    <img src="img/hot-band-bottom.png" style="font-size: 0; margin: -10px 0 20px 0;" />
</div>

