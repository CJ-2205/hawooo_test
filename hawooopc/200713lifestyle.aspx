<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200713lifestyle.aspx.cs" Inherits="user_static_200713lifestyle" %>

<%@ Import Namespace="hawooo" %>
<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
  <link href="assets/css/202003new_arrival.min.css" rel="stylesheet" />
  <link href="assets/css/events_style.min.css" rel="stylesheet" />
  <link href="assets/css/swiper.min.css" rel="stylesheet" />
  <style>
    .main-contain .banner {
      width: 100%;
    }

    /* Dirty fix: Prevent some product li too big (height). */
    ul li .product-item {
      min-height: 420px;
    }

    /* Countdown text. */
    .even-title {
      bottom: 10%;
      text-align: center;
      position: absolute;
      left: 22%;
      bottom: 24%;
      color: #ffff;
    }

    /* Fix Terms bullet problem. */
    .activity-method ul li {
        list-style: inherit;
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  <div class="am-g main-contain" style="background-color: #0E4A46">

    <%-- Top Banner --%>
    <div class="banner-box am-g" style="position: relative;">
      <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200713/bn_01.png" + "?cacheVersion=" + cacheVersion %>' alt="" style="width: 100%;" />

      <div class="even-title">
        <h2 class="am-text-xl"><%--Sale Starts in--%>
          <span class="clock-countdown">
            <span class="d">0</span>:
                  <span class="h">0</span>:
                  <span class="m">0</span>:
                  <span class="s">0</span>
          </span></h2>
      </div>
    </div>

    <div class="am-container">
      <%--=====================new-arrival-wrappe1  start==========================--%>
      <section class="am-margin-bottom-xl">
        <div class="banner-box am-padding-vertical-sm">
          <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/2019newarv/20200713/bn_02.png" + "?cacheVersion=" + cacheVersion %>' alt="主banner" style="width: 100%;" />
        </div>
        <%--            <asp:UpdatePanel runat="server" UpdateMode="conditional">
                    <ContentTemplate>
                        <asp:HiddenField ID="hf_pc01" runat="server" ClientIDMode="Static" />
                        <asp:Button ID="btn_get_one_coupon" runat="server" Text="Button" Style="display: none" ClientIDMode="Static" OnClick="btn_get_one_coupon_OnClick" />
                    </ContentTemplate>
                </asp:UpdatePanel>--%>


        <div class="am-padding-top-0">
          <div class="am-margin-vertical-0">
            <div class="shop-block">
              <ul class="am-avg-sm-4 product-item-box" id="inject-logo-for-brands">
                <%--<asp:Repeater ID="rp_plist" runat="server">
                              <ItemTemplate>
                                  <li>
                                      <div class="product-item">
                                          <a class="product-img" href="" target="_blank">
                                              <img src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") %>' />
                                              <div class="already-sold-p">
                                                  <%# Eval("SPD07").ToString() %>
                                  <span class="hot-p am-text-center">sold</span>
                                              </div>
                                          </a>
                                          <div class="product-text-box">
                                              <div class="product-item-block">
                                                  <h3 class="product-name"><%# Eval("WP02").ToString() %></h3>
                                              </div>
                                              <div class="product-item-block">
                                                  <div class="product-price-block am-fl">
                                                      <h4 class="product-price am-margin-0"><span>RM <%# Eval("WPA06").ToString() %></span></h4>
                                                      <p class="original-price  ">RM <%# Eval("WPA10").ToString() %></p>
                                                  </div>
                                                  <div class="sele-off am-fr"><span><%# Eval("PERSENT").ToString() %></span></div>
                                              </div>

                                              <div class="product-item-block">
                                                  <div class="product-coupon-box am-text-center ">
                                                      <div class="product-coupon am-fl" onclick="GetOneCoupon('<%# Eval("PC01") %>');">
                                                          <div class="am-cf coupon-box">
                                                              <div class="am-fl coupon">
                                                                  <span>coupon</span>
                                                              </div>
                                                              <div class="am-fl discount">
                                                                  <span><%# Eval("COUPON") %></span>
                                                              </div>
                                                          </div>
                                                      </div>
                                                      <div class="product-buy-btn am-fr am-u-sm-5">
                                                          <a href="<%# PbClass.DpUrl(Eval("WP01").ToString(),Eval("B01").ToString(),Eval("WP23").ToString()) %>" target="_blank" class="buy-btn ">BUY</a>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                  </li>
                              </ItemTemplate>
                          </asp:Repeater>--%>
                <asp:Repeater ID="rpNewArrival" runat="server" OnItemDataBound="rp_plist_ItemDataBound_NewArrival">
                  <ItemTemplate>
                    <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                    <li class="am-fl goods goods-flashsale">
                      <%--<a href='<%# SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?"#":"product.aspx?id="+Eval("WP01")%>'>
                                          <%#  SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true") ?"<div style='display:inline;position:absolute;z-index:52;top:0px;bottom:0;left:0;right:0;background:black;opacity:0.8;'><img src='https://www.hawooo.com/images/ftp/20181111/soldoutnew.png' alt='coming soon' width='100%' style='position: absolute;bottom:20%;padding:1em' ></div>":"" %>--%>
                      <a href='<%# "product.aspx?id=" + Eval("WP01") %>'>
                        <div class="goods-top">
                          <div class="goods-img">
                            <img class="am-img-responsive" src='<%# ConfigurationManager.AppSettings["imgUrl"].ToString() + "webimgs/" + Eval("WP08_1") + "?cacheVersion=" + cacheVersion %>'>
                            <div class="goods-discount goods-discount3">
                              <span class="ribbon">
                                <%--                                                        <%# Eval("PERSENT").ToString() %>--%>
                                <asp:Literal ID="lit_off" runat="server"></asp:Literal><small>%</small>  OFF
                              </span>
                            </div>
                          </div>
                        </div>
                        <div class="goods-bottom">
                          <%-- Fire-sold bar is commented because 1. In PC, in testing server have data shown, but in real server the data is not shown. 2. The data in mobile is not correct (too much).--%>
                          <%--<div class="goods-block fire-progress">
                                                  <div class="fire-img">
                                                      <img src='<%= ConfigurationManager.AppSettings["imgUrl"] +"/ftp/hw_event/fire.svg" + "?cacheVersion=" + cacheVersion %>' alt="fire" style="width: 23px" />
                                                  </div>
                                                  <div class="fire-sold">
                                                      sold<%#SoldOut(Convert.ToInt32(Eval("SPD07").ToString()), Convert.ToInt32(Eval("SPD06").ToString())).Equals("true")?Convert.ToInt32(Eval("SPD06").ToString()): Convert.ToInt32(Eval("SPD07").ToString()) %>
                                                  </div>
                                                  <div class="bar-white" style="width: <%# FireCount(Convert.ToInt32(Eval("SPD07").ToString()),Convert.ToInt32(Eval("SPD06").ToString()))+"%" %>;"></div>
                                              </div>
                                              <div class="goods-block">
                                                  <p class="goods-name">
                                                      <%# Eval("WP02").ToString() %>
                                                  </p>
                                              </div>--%>
                          <div class="goods-block">
                            <h1 class="goods-price"><%--<%# Eval("WPA06").ToString() %>--%><asp:Literal ID="lit_WPA06" runat="server"></asp:Literal></h1>
                            <s class="goods-original-price">
                              <span>RM <%-- <%# Eval("WPA10").ToString() %>--%><asp:Literal ID="lit_WPA10" runat="server"></asp:Literal>
                              </span>
                            </s>
                            <div class="goods-block">
                              <p>SAVE<span> RM<asp:Literal ID="lit_save" runat="server"></asp:Literal></span></p>
                            </div>
                          </div>
                        </div>
                      </a>
                    </li>
                  </ItemTemplate>
                </asp:Repeater>
              </ul>
            </div>
          </div>
        </div>
      </section>
            <%--=====================hot-deal-wrapper1  End ==========================--%>

      <%--More Sale banner--%>
      <div class="banner-box am-margin-vertical-sm am-padding-vertical-sm" style="background: transparent;">
        <img class="banner" src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200713/bn_03.png" + "?cacheVersion=" + cacheVersion %>' alt="More Sale banner" style="width: 100%;" />
      </div>

      <%-- Comming events --%>
      <div class="am-margin-bottom-lg" id="comming-event-beauty">
        <a href="" target="_blank">
          <img class="banner" src="" alt="comming-event-beauty" />
        </a>
      </div>
      <div class="am-margin-bottom-lg" id="comming-event-supplement">
        <a href="" target="_blank">
          <img class="banner" src="" alt="comming-event-supplement" />
        </a>
      </div>
    </div>


    <%--Terms & Conditions (Start) =====================================================--%>
      <div class="am-padding-vertical-lg activity-method" style="background: #000;">
        <div class="am-container">
          <p>
            Terms & Conditions
          </p>
          <div class="am-margin-left">
            <ul style="list-style-type: decimal!important; ">
              <li>
                <p>
                  Promotion Date : 13th July 2020 12:00 - 15th July 2020 23:59
                </p>
              </li>
              <li>
                <p>
                  Promotion:
                </p>
                <p class="am-padding-left-sm">
                  - Extra 12% OFF with min.spend RM66 for selected brands & items
                </p>
              </li>
              <li>
                <p>
                  Promotion are applicable on selected brands, including 1838 Eurocares (lifestyle items), Sofei, Saholea, Beaulace, Check2Check  (lifestyle items), Enjoy the life, Hibis  (lifestyle items), Arin  (lifestyle items), Anriea  (lifestyle items), Chef Clean, Chitico, sNug, SHCJ, Realwoman (lifestyle items), Hinoki Life, Dawoko, MCG, Yas, iFresh, KuaiChe, Lomoji, Laomanoodle, OkTea
                </p>
              </li>
              <li>
                <p>Hawooo reserves the sole right to alter, modify, add to or otherwise vary these Lifestyle & Food Festival terms from time to time, and in such manner as Hawooo deems appropriate."
                </p>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <%--Terms & Conditions (End) ======================================================--%>

  </div>

  <script src="assets/js/events.js"></script>
  <script type="text/javascript">
    $(document).ready(function () {
      // load 網頁共用結構
      let totalLoad = $('.include').length;
      let loadIndex = 0;
      if (totalLoad == 0) {
        initScript();
      }
      $('.include').each(function () {
        $(this).load($(this).data('file'), function () {
          $(this).children().first().unwrap(); // remove the ha-include div
          loadIndex++;
          if (loadIndex == totalLoad) {
            //共用結構載入完，開始執行頁面自己的初始化
            initScript();
          }
        });
      });
    })
    function initScript() {
      // for (i = 0; i < 11; i++) {
      //     duplicate('logo');
      // }
      $(".swiper-container li").addClass("am-fl swiper-slide");
      $(".shop-block li").addClass("hvr-float");

      function duplicate(id) {
        var ul = $("#" + id + " ul");
        ul.find("li:last")
          .clone(true)
          .appendTo(ul);
      }
      $(".hvr li").attr("class", "am-fl hvr-float");

      set1Img1Brand(
        '20200713',
        [334, 180, 457, 301, 312, 407, 328, 440, 115, 64, 271, 32, 156, 54, 116, 11, 410, 331, 27, 359, 360, 62, 29, 131],
        0,
              <%= cacheVersion %>
          );

          displaycommingEvents(<%= cacheVersion %>);
    }

    function GetOneCoupon(pc01) {
      $("#hf_pc01").val(pc01);
      $("#btn_get_one_coupon").click();
    }

    function setCountdown(spendtime) {
      let domD = $(".clock-countdown .d").eq(0);
      let domH = $(".clock-countdown .h").eq(0);
      let domM = $(".clock-countdown .m").eq(0);
      let domS = $(".clock-countdown .s").eq(0);
      setInterval(() => {
        spendtime--;
        var d = Math.floor(spendtime / (24 * 3600));
        d = PrefixInteger(d, 2);
        var h = Math.floor((spendtime % (24 * 3600)) / 3600);
        //h = parseInt(d) * 24 + parseInt(PrefixInteger(h, 2));
        h = PrefixInteger(h, 2);
        var m = Math.floor((spendtime % 3600) / (60));
        m = PrefixInteger(m, 2);
        var s = Math.floor(spendtime % 60);
        s = PrefixInteger(s, 2);
        if (spendtime > 0) {
          domD.text(d);
          domH.text(h);
          domM.text(m);
          domS.text(s);
        } else { // 避免倒數變成負的
          domD.text(0);
          domH.text(0);
          domM.text(0);
          domS.text(0);
        }
        console.log("spendtime:", spendtime);
      }, 1000)
    }
    function PrefixInteger(num, length) {
      return (Array(length).join('0') + num).slice(-length);
    }

    // Todo_treegb: The result id seems not right! (Not identical with brandNo)

    // Set a brand image for every product images
    // Usage example:
    // set1Img1Brand('20200630', [72, 180, 345, 450, 407, 307, 349, 29], 4, 1);
    function set1Img1Brand(eventName = '', brandNo = [], indexShift = 0, cacheVersion = 1) {
      // For testing purpose only:
      //let  brandNo = [307, 287, 180, 235, 334, 432, 203, 72, 297, 407, 283, 316];
      // Don't use "https://www.hawooo.com/user/brands.aspx?bid=" anymore, use "https://www.hawooo.com/user/brandeventpage.aspx?bid=" instead:
      let brandLinkPfx = "https://www.hawooo.com/user/brandeventpage.aspx?bid=";
      let cdnImgPfx = '<%= ConfigurationManager.AppSettings["imgUrl"] %>' || 'errorCdnImgPfx';

      for (i = 0; i < brandNo.length; i++) {
        let prependDOMStr = `<a class="brand-logo-wrapping-anchor" href="${brandLinkPfx}${brandNo[i]}" target="_blank">
              <div class="brand-logo">
                <img data-sizes="auto" src="${cdnImgPfx}ftp/${eventName}/logo_${paddingLeft("" + (i + 1 + indexShift) + "", 2)}.png?cacheVersion=${cacheVersion}">
              </div>
            </a>`;
        // So img src will be something like "https://p8r7m4d5.stackpathcdn.com/images/ftp/20200618/logo_02.png":

        $('#inject-logo-for-brands li').eq(i).prepend(prependDOMStr);
        $('#inject-logo-for-brands li a:not(.brand-logo-wrapping-anchor)').eq(i).attr({
          "href": `${brandLinkPfx}${brandNo[i]}`,
          "target": "_blank"
        });
      }
    }

    /* Used by putimg() or set1Img1Brand() or set3Img1Brand */
    function paddingLeft(str, lenght) {
      debugger;
      if (str.length >= lenght)
        return str;
      else
        return paddingLeft("0" + str, lenght);
    }



    // Dislay events only when current date (time) is within the event's valid date rage.
    function displaycommingEvents(cacheVersion = 1) {
      let cdnImgPfx = '<%= ConfigurationManager.AppSettings["imgUrl"] %>';
      let events = [
        {
          id: "#comming-event-beauty",
          href: "https://www.hawooo.com/user/200709beauty_sale.aspx",
          // Wrong date (should be "20200710"), but let's keep it wrong.
          eventName: "20200710",
          imgUrl: "beauty_01.png",
          dateStart: '2020-07-09T12:00:00',
          dateEnd: '2020-12-31T23:59:59',
        },
        {
          id: "#comming-event-supplement",
          href: "https://www.hawooo.com/user/200710supplement.aspx",
          eventName: "20200710",
          imgUrl: "supplement_01.png",
          dateStart: '2020-07-10T12:00:00',
          dateEnd: '2020-12-31T23:59:59',
        },
        //{
        //  id: "#comming-event-lifestyle",
        //  href: "https://www.hawooo.com/user/200713lifestyle.aspx",
        //  imgUrl: "lifestyle_01.png",
        //  eventName: "20200713",
        //  dateStart: '2020-07-13T12:00:00',
        //  dateEnd: '2020-12-31T23:59:59',
        //},
      ];

      events.forEach((item, idx) => {
        let dateStart = new Date(item.dateStart);
        let dateEnd = new Date(item.dateEnd)
        var dateNow = new Date();
        if (dateNow > dateStart && dateNow < dateEnd) {
          $(item.id).eq(0).css("display", "block");
          $(item.id + " img").eq(0).attr("src", `${cdnImgPfx}ftp/${item.eventName}/${item.imgUrl}?cacheVersion=${cacheVersion}`);
          $(item.id + " img").eq(0).css("display", "inline-block");
          $(item.id + " a").eq(0).attr("href", item.href);
        } else {
          $(item.id).eq(0).css("display", "none");
        }
      });
    }
  </script>

</asp:Content>

