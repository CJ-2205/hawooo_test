<%@ Page Title="" Language="C#" MasterPageFile="~/mobile_static/m.master" AutoEventWireup="true" CodeFile="presale_cart3.aspx.cs" Inherits="mobile_static_presale_cart3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container main-contain px-2 py-6">
        <!--【訂金】-訂金付款完成 狀態  (Start)-->
        <div>
            <div class="col-12 text-center bg-white py-3 mb-2">
                <h6 class="text-900 mb-3 fs-2 font-weight-normal"><b class="text-1100">Deposit Order No：</b><span>S191121143157159</span></h6>
                <p class="mt-3 text-secondary fs--1">Thanks for your order !</p>
                <p class="text-800 fs--1">
                    * Reminder：The final payment start on <span>2020/11/11 00:00:00</span>
                </p>
            </div>

            <div class="col-12 text-center bg-white py-3 mb-2">
                <div class="mb-3">
                    <a class="btn bg-secondary py-3 w-75 border-0 shadow-none text-white rounded-0" href="201022halloween_presale.aspx">Continue Shopping</a>
                </div>
                <div>
                    <a class="btn border-secondary py-3 w-75 shadow-none text-secondary rounded-0" href="201022halloween_presale.aspx">Check Deposit Order</a>
                </div>
            </div>
        </div>
        <!--【訂金】-訂金付款完成 狀態  (End)-->

        <!--【尾款】-尾款付款成功 狀態 (Start)-->
        <div>
            <div class="col-12 text-center bg-white py-3 mb-2">
                <h6 class="text-900 mb-3 fs-2 font-weight-normal"><b class="text-1100">Order No：</b><span>S200929150315219</span></h6>
                <p class="mt-3 text-secondary fs--1">Thanks for your order !</p>
                <p class="text-800 fs--1">
                    We will ship the product to you within 3-10 working days.
                </p>
            </div>

            <div class="col-12 text-center bg-white py-3 mb-2">
                <div class="mb-3">
                    <a class="btn bg-secondary py-3 w-75 border-0 shadow-none text-white rounded-0" href="201022halloween_presale.aspx">Continue Shopping</a>
                </div>
                <div>
                    <a class="btn border-secondary py-3 w-75 shadow-none text-secondary rounded-0" href="201022halloween_presale.aspx">Check My Order</a>
                </div>
            </div>
        </div>
        <!--【尾款】-尾款付款成功 狀態 (End)-->

        <!--【訂金】-訂金付款失敗 (Start) -->
        <div>
            <div class="col-12 text-center bg-white py-3 mb-2">
                <h6 class="text-900 mb-3 fs-2 font-weight-normal"><b class="text-1100">Deposit Order No：</b><span>S191121143157159</span></h6>
                <p class="mt-3 text-primary fs--1">Sorry, your deposit transaction is not complete.</p>
                <p class="text-800 fs--1">
                    * Reminder：Payment due date <span>2020/11/12 00:00:00</span>
                </p>
            </div>

            <div class="col-12 text-center bg-white py-3 mb-2">
                <p class="text-800 fs--1 mb-2">
                    You can click pay again, for further information please contact our customer service.
                </p>
                <div class="mb-3">
                    <a class="btn bg-primary py-3 w-75 border-0 shadow-none text-white rounded-0" href="201022halloween_presale.aspx">Pay Again</a>
                </div>
                <div>
                    <a class="btn border-primary py-3 w-75 shadow-none text-primary rounded-0" href="201022halloween_presale.aspx">Check Deposit Order</a>
                </div>
            </div>
        </div>
        <!--【訂金】-訂金付款失敗 (End)-->

        <!--【尾款】-尾款付款失敗 (Start) -->
        <div>
            <div class="col-12 text-center bg-white py-3 mb-2">
                <h6 class="text-900 mb-3 fs-2 font-weight-normal"><b class="text-1100">Deposit Order No：</b><span>S191121143157159</span></h6>
                <p class="mt-3 text-primary fs--1">Sorry, your final payment is not complete.</p>
                <p class="text-800 fs--1">
                    * Reminder：Complete the deposit transaction before <span>2020/11/11 00:00:00</span>
                </p>
            </div>

            <div class="col-12 text-center bg-white py-3 mb-2">
                <p class="text-800 fs--1 mb-2">
                    You can click pay again, for further information please contact our customer service.
                </p>
                <div class="mb-3">
                    <a class="btn bg-primary py-3 w-75 border-0 shadow-none text-white rounded-0" href="201022halloween_presale.aspx">Pay Again</a>
                </div>
                <div>
                    <a class="btn border-primary py-3 w-75 shadow-none text-primary rounded-0" href="201022halloween_presale.aspx">Check Deposit Order</a>
                </div>
            </div>
        </div>
        <!--【尾款】-尾款付款失敗  (End)-->

        <div class="col-12 bg-white py-3 mb-2 fs-0">
            <ul>
                <li>derrick chen
                </li>
                <li>測試地址
                </li>
                <li>Sabah Beverly 88700
                </li>
                <li>01612345678
                </li>
            </ul>
        </div>

        <div class="col-12 bg-white py-3 mb-2 fs-0 border-bottom border-100">
            <div class="d-flex flex-between-center">
                運費 <span>RM 25.00</span>
            </div>
            <div class="d-flex flex-between-center">
                小計 <span>RM 25.00</span>
            </div>
            <div class="d-flex flex-between-center">
                活動折抵 <span>RM 0.00</span>
            </div>
            <div class="d-flex flex-between-center fs-2 font-weight-bold">
                付款總金額 <span class="text-primary">RM 25.00</span>
            </div>
        </div>

        <div class="col-12 bg-white py-3 mb-2 fs-0 text-center">
            <h6 class="fs-2 font-weight-normal mb-2">本次消費將獲得<b class="text-primary px-1">RM 25.00</b>Hacoin
            </h6>
            <p class="text-800 fs--1 mt-0 mb-2">
                (Ha Coins 會在訂單出貨之後才會轉入會員帳戶)
            </p>
        </div>

    </div>

</asp:Content>

