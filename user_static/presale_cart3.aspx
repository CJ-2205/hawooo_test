<%@ Page Title="" Language="C#" MasterPageFile="~/user_static/u.master" AutoEventWireup="true" CodeFile="presale_cart3.aspx.cs" Inherits="user_static_presale_cart3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <main class="am-container">

        <section class="am-g bg-white mt-3">
            <!--【訂金】-訂金付款完成 狀態  (Start)-->

            <div class="am-u-sm-6 am-u-sm-centered p-5">
                <h2 class="text-center">【訂金】-訂金付款完成 狀態</h2>
                <div class="d-flex flex-center py-3">
                    <img width="75" src="image/cart/icon/icon_cart_pay_success.svg" />
                    <div class="position-relative pl-3">
                        <h2 class="text-secondary pt-3 mb-2">Deposit Transaction Completed</h2>
                        <p class="mt-3 text-800 fs--1">Thanks for your order !</p>
                    </div>
                </div>

                <hr />

                <div class="d-flex flex-center py-3">
                    <div class="text-center">
                        <h3 class="text-900 mb-3"><b class="text-1100 fs-2">Deposit Order No：</b><span>S191121143157159</span></h3>
                        <p  class="text-800 fs--1">* Reminder：The final payment start on 2020/11/11 00:00:00
                        </p>
                    </div>
                </div>
                <div class="text-center payment-result-block">
                    <a class="btn btn-lg border-secondary mx-2 text-secondary">Check Deposit Order
                    </a>
                    <a class="btn btn-lg bg-secondary mx-2 text-white" href="201022halloween_presale.aspx">Continue Shopping
                    </a>
                </div>
            </div>
            <!--【訂金】-訂金付款完成 狀態  (End)-->

            <!--【尾款】-尾款付款成功  (Start) -->
            <div class="am-u-sm-6 am-u-sm-centered p-5">
                <h2 class="text-center">【尾款】-尾款付款成功</h2>
                <div class="d-flex flex-center py-3">
                    <img width="75" src="image/cart/icon/icon_cart_pay_success.svg" />
                    <div class="position-relative pl-3">
                        <h2 class="text-secondary pt-3 mb-2">Final Payment Completed</h2>
                        <p class="mt-3 text-800 fs--1">Thanks for your order !</p>
                    </div>
                </div>

                <hr />

                <div class="d-flex flex-center py-3">
                    <div class="text-center">
                        <h3 class="text-900"><b class="text-1100 fs-2">Order No：</b><span>S191121143157159</span></h3>
                    </div>
                </div>
                <div class="text-center payment-result-block">
                    <a class="btn btn-lg border-secondary mx-2 text-secondary">Check Deposit Order
                    </a>
                    <a class="btn btn-lg bg-secondary mx-2 text-white" href="201022halloween_presale.aspx">Continue Shopping
                    </a>
                </div>
            </div>
            <!--【訂金】--尾款付款成功 (End)-->

            <!--【訂金】-訂金付款失敗  (Start) -->
            <div class="am-u-sm-6 am-u-sm-centered p-5">
                <h2 class="text-center">【訂金】-訂金付款失敗</h2>
                <div class="d-flex flex-center py-3">
                    <img width="75" src="image/cart/icon/icon_cart_pay_error.svg" />
                    <div class="position-relative pl-3">
                        <h2 class="text-primary pt-3 mb-2">Deposit Transaction Fail</h2>
                        <p class="text-800 fs--1">Sorry, your deposit transaction is not complete.</p>
                    </div>
                </div>

                <hr />

                <div class="d-flex flex-center py-3">
                    <div class="text-center">
                        <h3 class="text-900 mb-3"><b class="text-1100 fs-2">Deposit Order No：</b><span>S191121143157159</span></h3>
                        <p class="text-800 fs--1">* Reminder：Complete the deposit transaction before <span>2020/11/11 00:00:00</span></p>
                        <h6>You can click <a class="text-primary text-underline" href="#">pay again</a>, for further information please contact our customer service.</h6>
                    </div>
                </div>
                <div class="text-center payment-result-block">
                    <a class="btn btn-lg border-primary mx-2 text-primary">Check Deposit Order
                    </a>
                </div>
            </div>
            <!--【訂金】-訂金付款失敗 (End)-->

            <!--【尾款】-尾款付款失敗  (Start) -->
            <div class="am-u-sm-6 am-u-sm-centered p-5">
                <h2 class="text-center">【尾款】-尾款付款失敗</h2>
                <div class="d-flex flex-center py-3">
                    <img width="75" src="image/cart/icon/icon_cart_pay_error.svg" />
                    <div class="position-relative pl-3">
                        <h2 class="text-primary pt-3 mb-2">Final Payment Fail</h2>
                        <p class="mt-3 text-800 fs--1">Sorry, your final payment is not complete.</p>
                    </div>
                </div>

                <hr />

                <div class="d-flex flex-center py-3">
                    <div class="text-center">
                        <h3 class="text-900 mb-3"><b class="text-1100 fs-2">Order No：</b><span>S191121143157159</span></h3>
                        <p class="text-800 fs--1">* Reminder：Payment due date<span> 2020/11/12 00:00:00</span></p>
                        <h6>You can click <a class="text-primary text-underline" href="#">pay again</a>, for further information please contact our customer service.</h6>
                    </div>
                </div>
                <div class="text-center payment-result-block">
                    <a class="btn btn-lg border-primary mx-2 text-primary">Check Order
                    </a>
                </div>
            </div>
            <!--【尾款】-尾款付款失敗 (End)-->

        </section>

    </main>
</asp:Content>

