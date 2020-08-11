<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="shopcart.aspx.cs" Inherits="mobile_shopcart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-main">
        <!-- 麵包屑 Start-->
        <div class="page-menu-Box">
            <p class="pagelink">購物車</p>
        </div>
        <!-- 麵包屑 End-->

        <div class="newCart-title">
            <img src="images/cart-icon-1.png" style="width: 30px;">
            <span>跨國快送</span>
        </div>
        <!-- 跨國快送購物清單 Start-->
        <div class="cart-infor-box">
            <ul class="cart-infor-list-box">
                <li>
                    <p class="order-delete">X 刪除此商品</p>
                    <img src="images/p1-1.jpg" width="10%">
                    <div class="order-right">
                        <p class="order-time">2015-10-27</p>
                        <p class="order-title">Bonee&Monoon 生活筆記本-期待好天氣</p>
                        <p class="selectBox">
                            <select>
                                <option selected>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </p>
                        <p class="orderSpec">
                            期待好天氣/玫瑰好點子2入組
                        </p>
                        <p class="orderPrice">RM&nbsp;102.60</p>
                    </div>
                </li>
                <li>
                    <p class="order-delete">X 刪除此商品</p>
                    <img src="images/p1-1.jpg" width="10%">
                    <div class="order-right">
                        <p class="order-time">2015-10-27</p>
                        <p class="order-title">Bonee&Monoon 生活筆記本-期待好天氣/玫瑰好點子2入組</p>
                        <p class="selectBox">
                            <select>
                                <option selected>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </p>
                        <p class="orderSpec">
                            期待好天氣/玫瑰好點子2入組
                        </p>
                        <p class="orderPrice">RM&nbsp;102.60</p>
                    </div>
                </li>
            </ul>
            <button type="button" class="am-btn am-btn-default am-radius newCart-but" style="margin-left: 40%;">前往結帳</button>
        </div>
        <!-- 跨國快送購物清單 End-->

        <div class="newCart-title" style="background: #b5e0ed;">
            <img src="images/cart-icon-2.png" style="width: 30px;">
            <span>好物市集</span>
        </div>
        <!-- 好物市集購物清單 Start-->
        <div class="cart-infor-box">
            <ul class="cart-infor-list-box">
                <li>
                    <p class="order-delete">X 刪除此商品</p>
                    <img src="images/p1-1.jpg" width="10%">
                    <div class="order-right">
                        <p class="order-time">2015-10-27</p>
                        <p class="order-title">Bonee&Monoon 生活筆記本-期待好天氣</p>
                        <p class="selectBox">
                            <select>
                                <option selected>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </p>
                        <p class="orderSpec">
                            期待好天氣/玫瑰好點子2入組
                        </p>
                        <p class="orderPrice">RM&nbsp;102.60</p>
                    </div>
                </li>
                <li>
                    <p class="order-delete">X 刪除此商品</p>
                    <img src="images/p1-1.jpg" width="10%">
                    <div class="order-right">
                        <p class="order-time">2015-10-27</p>
                        <p class="order-title">Bonee&Monoon 生活筆記本-期待好天氣/玫瑰好點子2入組</p>
                        <p class="selectBox">
                            <select>
                                <option selected>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </p>
                        <p class="orderSpec">
                            期待好天氣/玫瑰好點子2入組
                        </p>
                        <p class="orderPrice">RM&nbsp;102.60</p>
                    </div>
                </li>
            </ul>
            <button type="button" class="am-btn am-btn-default am-radius newCart-but" style="margin-left: 40%;">前往結帳</button>
        </div>
        <!-- 購物車資訊區域 End-->
    </div>
</asp:Content>

