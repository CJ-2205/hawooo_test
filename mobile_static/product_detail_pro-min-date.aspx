<%@ Page Title="" Language="C#" MasterPageFile="~/mobile_static/m.master" AutoEventWireup="true" CodeFile="product_detail_pro-min-date.aspx.cs" Inherits="mobile_static_test2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="assets_v2/css/shop-detail.min.css" rel="stylesheet" />
    <div id="buyModal" class="animated buyModal-on bounceInUp" style="position: fixed; width: 100%; height: 100%; top: 0px; left: 0px; background-color: rgb(255, 255, 255); overflow-y: auto; z-index: 1088; opacity: 1; animation-duration: 0.6s;">
        <!--THIS IS IMPORTANT! to close the modal, the class name has to match the name given on the ID  class="close-animatedModal" -->
        <div class="modal-content">
            <div class="modal-content-itemWrapper" style="padding-bottom: 5px">
                <div class="modal-content-row" style="margin-bottom: 5px;">
                    <div class="modal-content-col modal-content-col-img">
                        <img id="img_md_product_img" class="modal-content-img" src="https://www.hawooo.com/images//webimgs/n20200921103433726.jpg">

                    </div>
                    <div class="modal-content-col modal-content-col-specs">
                        <div class="modal-content-title">
                            Dr.morita Firming Anti-Wrinkle Moisturizing Essence Eye Patch (28 pairs/box)

                        </div>
                        <div class="modal-content-price">
                            <span class="modal-content-price-special">RM<span id="lab_md_price">109.00</span>
                            </span>
                            <del class="modal-content-price-original" id="oprice">RM173.00</del>
                        </div>
                    </div>
                    <div class="modal-content-col modal-content-col-close close-buyModal">
                        <span class="modal-content-close modal-content-rounded"></span>
                    </div>
                </div>
                <!-- 【新增】商品效期 star -->
                <p class="py-2 my-3 fs--2 text-center product-minimum-date">
                    <img src="images/minimum_date_icon.svg" class="mx-2">Minimum Shelf Life Available: <span>2020.10</span>, save <span>RM80.8</span>
                </p>
                <!-- 【新增】商品效期 end -->
                <div class="pnote_div" id="goods_note">
                    <p class="pnote">
                        <img src="https://www.hawooo.com/images/icon/ps/yes_icon_01.png">
                        <span class="am-vertical-align-middle">可寄送到東馬</span>
                    </p>

                    <p class="pnote">
                        <img src="https://www.hawooo.com/images/icon/ps/yes_icon_02.png">
                        <span class="am-vertical-align-middle">可使用全站折扣卷</span>
                    </p>
                    <p class="pnote">
                        <img src="https://www.hawooo.com/images/icon/ps/yes_icon_03.png">
                        <span class="am-vertical-align-middle">可裝進同個包裹內</span>
                    </p>

                </div>
            </div>

            <div class="modal-content-wrapper">
                <div id="ContentPlaceHolder1_UpdatePanel1">

                        <div class="modal-content-optionsTitle-wrapper">
                            <span class="modal-content-optionsTitle txtRsc" data-id="pb015">Select Option</span>
                            <ul class="modal-content-productOptions" id="modal_ul">


                                        <li id="ContentPlaceHolder1_rp_md_product_item_li_option_0" class="modal-content-productOption-li modal-content-productOption-active" onclick="javascript:selectOption(&quot;35862998-5393-4506-a117-091028e32797&quot;);">
                                            <label class="modal-content-productOption-label">

                                                <div class="modal-content-optionText-wrapper" id="35862998-5393-4506-a117-091028e32797">
                                                    <span class="modal-content-optionText">
                                                        1 box
                                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl00$hf_WPA04" id="ContentPlaceHolder1_rp_md_product_item_hf_WPA04_0" value="20">
                                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl00$hf_TYPE" id="ContentPlaceHolder1_rp_md_product_item_hf_TYPE_0" value="0">
                                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl00$hf_WPA01" id="ContentPlaceHolder1_rp_md_product_item_hf_WPA01_0" value="35862998-5393-4506-a117-091028e32797">
                                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl00$hf_SCOUNT" id="ContentPlaceHolder1_rp_md_product_item_hf_SCOUNT_0" value="20">
                                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl00$hf_WPA10" id="ContentPlaceHolder1_rp_md_product_item_hf_WPA10_0" value="173.00">
                                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl00$hf_WPA16" id="ContentPlaceHolder1_rp_md_product_item_hf_WPA16_0" value="1">
                                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl00$hf_WPA06" id="ContentPlaceHolder1_rp_md_product_item_hf_WPA06_0" value="109.00">
                                                    </span>
                                                </div>
                                            </label>
                                        </li>

                                        <li id="ContentPlaceHolder1_rp_md_product_item_li_option_1" class="modal-content-productOption-li" onclick="javascript:selectOption(&quot;1b64ddc9-e7fd-4140-8ab4-d042a5e6c368&quot;);">
                                            <label class="modal-content-productOption-label">

                                                <div class="modal-content-optionText-wrapper" id="1b64ddc9-e7fd-4140-8ab4-d042a5e6c368">
                                                    <span class="modal-content-optionText">
                                                        2 boxes
                                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl01$hf_WPA04" id="ContentPlaceHolder1_rp_md_product_item_hf_WPA04_1" value="20">
                                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl01$hf_TYPE" id="ContentPlaceHolder1_rp_md_product_item_hf_TYPE_1" value="0">
                                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl01$hf_WPA01" id="ContentPlaceHolder1_rp_md_product_item_hf_WPA01_1" value="1b64ddc9-e7fd-4140-8ab4-d042a5e6c368">
                                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl01$hf_SCOUNT" id="ContentPlaceHolder1_rp_md_product_item_hf_SCOUNT_1" value="20">
                                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl01$hf_WPA10" id="ContentPlaceHolder1_rp_md_product_item_hf_WPA10_1" value="346.00">
                                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl01$hf_WPA16" id="ContentPlaceHolder1_rp_md_product_item_hf_WPA16_1" value="1">
                                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl01$hf_WPA06" id="ContentPlaceHolder1_rp_md_product_item_hf_WPA06_1" value="207.00">
                                                    </span>
                                                </div>
                                            </label>
                                        </li>

                                        <li id="ContentPlaceHolder1_rp_md_product_item_li_option_2" class="modal-content-productOption-li" onclick="javascript:selectOption(&quot;2fb951cc-a687-4e0e-85ed-ec89a192ccd3&quot;);">
                                            <label class="modal-content-productOption-label">

                                                <div class="modal-content-optionText-wrapper" id="2fb951cc-a687-4e0e-85ed-ec89a192ccd3">
                                                    <span class="modal-content-optionText">
                                                        3 boxes
                                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl02$hf_WPA04" id="ContentPlaceHolder1_rp_md_product_item_hf_WPA04_2" value="20">
                                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl02$hf_TYPE" id="ContentPlaceHolder1_rp_md_product_item_hf_TYPE_2" value="0">
                                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl02$hf_WPA01" id="ContentPlaceHolder1_rp_md_product_item_hf_WPA01_2" value="2fb951cc-a687-4e0e-85ed-ec89a192ccd3">
                                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl02$hf_SCOUNT" id="ContentPlaceHolder1_rp_md_product_item_hf_SCOUNT_2" value="20">
                                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl02$hf_WPA10" id="ContentPlaceHolder1_rp_md_product_item_hf_WPA10_2" value="519.00">
                                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl02$hf_WPA16" id="ContentPlaceHolder1_rp_md_product_item_hf_WPA16_2" value="1">
                                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$rp_md_product_item$ctl02$hf_WPA06" id="ContentPlaceHolder1_rp_md_product_item_hf_WPA06_2" value="295.00">
                                                    </span>
                                                </div>
                                            </label>
                                        </li>

                            </ul>
                        </div>

</div>

            </div>




            <script type="text/javascript">
                function saveStr(price, sprice, rate) {
                    price = Number(price);
                    sprice = Number(sprice);
                    rate = Number(rate);
                    if (price - sprice > 0) {
                        return "RM" + ((price - sprice)).toFixed(2);
                    } else {
                        return "";
                    }
                }
                function selectOption(id) {

                    $("#hf_select_wpa01").val(id);
                    var scount = 0;
                    var maxbuy = 0;
                    $("#modal_ul").find('li').each(function () {
                        $(this).removeClass('modal-content-productOption-active');
                        var optionId = $(this).find($('[id*=hf_WPA01]')).val();

                        if (optionId == id) {

                            scount = $(this).find($('[id*=hf_SCOUNT]')).val();
                            maxbuy = $(this).find($('[id*=hf_WPA04]')).val();
                            $("#lab_md_price").html($(this).find($('[id*=hf_WPA06]')).val());

                            var WPA06 = $(this).find($('[id*=hf_WPA06]')).val();
                            var WPA10 = $(this).find($('[id*=hf_WPA10]')).val();


                            $("#lab_price").html(WPA06);
                            $("#lab_md_origianl_price").html($(this).find($('[id*=hf_WPA10]')).val());

                            var discount = parseFloat(WPA10) - parseFloat(WPA06);
                            //console.log("WPA06:" + WPA06);
                            //console.log("WPA10:" + WPA10);
                            //console.log("DIS:" + discount);

                            $("#savePanel").hide();
                            $("#lab_discount_note").html("");
                            $("#lab_origianl_price").html("");
                            $("#oprice").html("");
                            if (discount > 0) {
                                //$("#lab_discount_note").html("save " + discount.toFixed(2));
                                $("#savePanel").show();
                                $("#lab_discount_note").html(saveStr(WPA10, WPA06, "7.6"));
                                $("#lab_origianl_price").html(WPA10);
                                $("#oprice").html("RM" + WPA10);
                            }
                            $("#hf_select_type").val($(this).find($('[id*=hf_TYPE]')).val());
                            $(this).addClass('modal-content-productOption-active');

                            //圖片切換21097
                            //var imgCount = $("#WP08_1").val();
                            //if (imgCount > 0) {
                            //    var WPA16 = parseInt($(this).find($('[id*=hf_WPA16]')).val());
                            //    var src = $('#imgs').find("li img").not(".clone")[0].currentSrc;
                            //    if (WPA16 <= imgCount) {
                            //        src = $('#imgs').find("li img").not(".clone")[WPA16].currentSrc;
                            //    }
                            //    $("#img_md_product_img").attr('src', src);
                            //}

                            var src = $("#hf_WP08_1").val();
                            var csrc = '';
                            var WPA16 = parseInt($(this).find($('[id*=hf_WPA16]')).val());
                            if (WPA16 > 1 && WPA16 < 6) {
                                csrc = $("#hf_WP08_" + WPA16).val();
                                if (csrc !== '')
                                    src = csrc;
                            }
                            $("#img_md_product_img").attr('src', src);
                        }
                    });
                    if (parseInt(scount) > 0) {
                        $("#qty").attr("data-min", 1);
                        if (parseInt(scount) <= parseInt(maxbuy))
                            $("#qty").attr("data-max", scount);
                        else
                            $("#qty").attr("data-max", maxbuy);
                        $("#qty").val(1);
                        $("#hf_select_count").val("1");
                    }
                    else {
                        $("#qty").attr("data-min", 0);
                        $("#qty").attr("data-max", 0);
                        $("#qty").val(0);
                        $("#hf_select_count").val("0");
                    }
                }

                function qtyDown() {
                    var now = parseInt($("#qty").val()) - 1;
                    var min = parseInt($("#qty").attr("data-min"));
                    var max = parseInt($("#qty").attr("data-max"));
                    if (parseInt(now) < parseInt(min))
                        now = min;
                    $("#qty").val(now);
                    $("#hf_select_count").val(now);
                }
                function qtyUp() {
                    var min = parseInt($("#qty").attr("data-min"));
                    var max = parseInt($("#qty").attr("data-max"));
                    var now = parseInt($("#qty").val()) + 1;
                    if (parseInt(now) >= parseInt(max))
                        now = max;
                    $("#qty").val(now);
                    $("#hf_select_count").val(now);
                }


            </script>
            <div class="modal-content-wrapper">
                <div class="am-g am-g-collapse">
                    <div class="am-u-sm-6">
                        <span class="modal-content-sectionTitle txtRsc" data-id="pd005">Quantity</span>
                    </div>
                    <div class="am-u-sm-6 modal-content-select-wrapper">
                        <div class="modal-content-spinner" data-trigger="spinner">
                            <div class="spinner-controls modal-content-spinner-controls spinner-element" style="cursor: pointer" onclick="qtyDown();">
                                <div class="modal-content-spinner-sign">-</div>
                            </div>
                            <div class="modal-content-spinner-input spinner-element">

                                <input id="qty" type="text" value="0" data-rule="quantity" data-min="1" data-max="20" readonly="true">
                            </div>
                            <div class="spinner-controls modal-content-spinner-controls spinner-element" style="cursor: pointer" onclick="qtyUp();">
                                <div class="modal-content-spinner-sign">+</div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="modal-content-buy-footer" id="modal-content-buy-footer" style="text-align: center; padding-top: 10px">
                <div class="am-u-sm-12 am-u-sm-centered buy-footer-btn-container">
                    <div id="ContentPlaceHolder1_up_cart">

                            <a id="ContentPlaceHolder1_lnk_buy" class="am-btn am-btn-default modal-content-buy-btn" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$lnk_buy','')"><i class="fa fa-bolt" aria-hidden="true"></i>Buy Now</a>
                            <a id="ContentPlaceHolder1_lnk_add" class="am-btn am-btn-default modal-content-buy-btn" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$lnk_add','')"><i class="fa fa-plus" aria-hidden="true"></i>Add to Cart</a>



</div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>

