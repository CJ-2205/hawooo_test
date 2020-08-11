<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="200730mit_editors_picks.aspx.cs" Inherits="user_static_200730mit_editors_picks" %>

<%@ Import Namespace="hawooo" %>
<%@ Register Src="~/user/control/products.ascx" TagPrefix="uc1" TagName="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
  <link rel="stylesheet" href="assets/css/events_style.min.css">
  <link rel="stylesheet" href="assets/css/swiper.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
  <title>Mit Eeditors Picks</title>
  <style>
    .side-bar {
      top: 40%;
      width: 120px;
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

  <div class="am-g main-contain" style="background: #00736D">
    <div class="am-container am-margin-vertical-lg">
      <img src='<%= ConfigurationManager.AppSettings["imgUrl"] + "ftp/20200730/bbn_01.png" + "?cacheVersion=" + cacheVersion %>'>
      <%--Block1 (Start) ======================================================--%>

      <div class="am-margin-bottom-xl am-padding-top-xs shop-block" style="margin-right: -8px; margin-left:-8px;">
        <ul class="am-avg-sm-4">
          <%--後端帶入商品 (Start) --%>
           <asp:Repeater ID="rp1" runat="server" OnItemDataBound="rp1_ItemDataBound">
                  <ItemTemplate>
                    <asp:HiddenField runat="server" ID="hfWP01" Value='<%# Eval("WP01") %>' />
                    <li class="am-fl goods goods-flashsale">
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
                          <div class="goods-block">
                            <p class="goods-name">
                              <%# Eval("WP02").ToString() %>
                            </p>
                          </div>
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
         
          <%--後端帶入商品 (Start) --%>
        </ul>
      </div>
    </div>
  </div>
  <%--Block1 (End) =======================================================--%>


  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
  <script src="assets/js/events.js"></script>
  <script src="assets/js/swiper.min.js"></script>
  <script type="text/javascript">
    /*Load HTML*/
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
            initScript(

            );
          }
        });
      });
    });

    // 執行頁面的script
    function initScript() {
      $(".shop-block li").addClass("hvr-float");
    }
  </script>
</asp:Content>