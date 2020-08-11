<%@ Page Language="C#" AutoEventWireup="true" CodeFile="20180116.aspx.cs" Inherits="_20180116" MasterPageFile="~/mobile/mobile.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <%--  <link href="../2017motherday/assets/css/newyearmom.css" rel="stylesheet" />
    <script>
        $(function () {
            $("#body").removeClass("am-container");
            $("#body").attr("onscroll", "twoYearsSideHide()");
        })
    </script>--%>
    <link rel="stylesheet" href="assets/css/newyearmom.css">
        <script>
        $(document).ready(function () {
            if (document.body.clientWidth < 530) {
                $(".am-img-responsive").height = "50%";
            }
        });
    </script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <script>
        $(function () {
            $("#body").removeClass("am-container");
        })
    </script>
   
   <!--活動開始-->
    <div class="am-cf" style="width:100%;margin:0 auto;display:block;max-width:650px;">          
                      <img alt="新年紅包rm100" src="https://www.hawooo.com/images/ftp/20180116/edmm_01.png" style="float:left;display:block;width:100%;" />   
                      
                       <img src="https://www.hawooo.com/images/ftp/20180116/edmm_02.png" style="float:left;display:block;width:60%;" /> 
                      
                        <img alt="紅包領不完" src="https://www.hawooo.com/images/ftp/20180116/edmm_031.gif" style="float:left;display:block;width:20%;" />   
                        
                          <img src="https://www.hawooo.com/images/ftp/20180116/edmm_032.png" style="float:left;display:block;width:20%;" />  
                      
                       <img src="https://www.hawooo.com/images/ftp/20180116/edmm_04.png" style="float:left;display:block;width:100%;" />  
                       
                        <img alt="送紅包rm100" src="https://www.hawooo.com/images/ftp/20180116/edmm_05.png" style="float:left;display:block;width:50%;" /> 
                        
                         <a href="https://www.hawooo.com/mobile/20180110.aspx" target="_blank"><img alt="新年禮籃" src="https://www.hawooo.com/images/ftp/20180116/edmm_06.png" style="float:left;display:block;width:50%;" /></a>
                        
                       <a href="https://www.hawooo.com/mobile/20180119.aspx" target="_blank"><img alt="正妹打造術" src="https://www.hawooo.com/images/ftp/20180116/edmm_07.png" style="float:left;display:block;width:50%;" /></a>
                        
                       <a href="https://www.hawooo.com/mobile/20180123rank.aspx" target="_blank"> <img alt="排名賽" src="https://www.hawooo.com/images/ftp/20180116/edmm_08.png" style="float:left;display:block;width:50%;" /></a>
     </div>           
        <!--第一塊開始-->    

    <div class="am-cf" style="width:100%;margin:0 auto;display:block;max-width:650px;background-color: #eb3a27">

       
               
         <a href="angpao1.aspx" target="_blank"><img alt="台灣年貨大街" src="https://www.hawooo.com/images/ftp/20180116/edmm_09.gif" style="float:left;display:block;width:100%;" /></a>
         
   <div class="am-cf" style="width:100%;margin:0 auto;display:block;max-width:650px;background-color:#2b2b2b">    
   <iframe max-width="560px" max-height="315px" style="margin: auto;z-index: 2; float: none; display: inherit;background-color: black;" src="https://www.youtube.com/embed/I3AcWcyxqZw" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>    
   </div>
    
     <div style="position: relative; max-width: 650px;float: center;margin: 0 auto;">            
     <div style="top:0;bottom: 0;left:0;right:0;margin: auto;height: auto;">
     
     <ul style="height: 50%;list-style-type:none;margin:0px 6%;padding: 0;background-color: #eb3a27">
                  <asp:Repeater ID="rp_product_list_1" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
              	<li class="am-fl" style="width:calc(50% - 10px);background: white;padding: 5px;margin: 5px;height: calc(100% - 20px);">
                               
                                        <a href="product.aspx?id=<%# Eval("WP01") %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 5px 5px;height: 40px;overflow: hidden;font-size:medium;line-height: 20px;color:#535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 5px 5px 0 5px;font-size:small;color:red">RM<span style="font-size:medium;letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px;color:dimgrey;font-size:smaller;margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                            </p>
                                        </a>
                                    </li>

                                </ItemTemplate>
                            </asp:Repeater>           
           </ul>

     </div>
     </div>
      
        <a href="angpao1.aspx" ><img alt="看更多" src="https://www.hawooo.com/images/ftp/20180116/edmm_11.png" style="float:left;display:block;width:100%;" /></a>
        
     </div>
     
    <!--第二塊開始-->    
   <div class="am-cf" style="width:100%;margin:0 auto;display:block;max-width:650px;background-color: #eb3a27">

       
               
         <a href="angpao2.aspx" target="_blank"><img alt="台灣年貨大街" src="https://www.hawooo.com/images/ftp/20180116/edmm_12.gif" style="float:left;display:block;width:100%;" /></a>
         
   <div class="am-cf" style="width:100%;margin:0 auto;display:block;max-width:650px;background-color:#2b2b2b">    
   <iframe max-width="560px" max-height="315px" style="margin: auto;z-index: 2; float: none; display: inherit;background-color: black;" src="https://www.youtube.com/embed/M7gVI7Rym_g" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>    
   </div>
    
     <div style="position: relative; max-width: 650px;float: center;margin: 0 auto;">
      
       
    
     <div style="top:0;bottom: 0;left:0;right:0;margin: auto;height: auto;">
          
     <ul style="height: 50%;list-style-type:none;margin:0px 6%;padding: 0;background-color: #eb3a27">
                  <asp:Repeater ID="rp_product_list_2" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
              	<li class="am-fl" style="width:calc(50% - 10px);background: white;padding: 5px;margin: 5px;height: calc(100% - 20px);">
                               
                                        <a href="product.aspx?id=<%# Eval("WP01") %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 5px 5px;height: 40px;overflow: hidden;font-size:medium;line-height: 20px;color:#535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 5px 5px 0 5px;font-size:small;color:red">RM<span style="font-size:medium;letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px;color:dimgrey;font-size:smaller;margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                            </p>
                                        </a>
                                    </li>

                                </ItemTemplate>
                            </asp:Repeater>           
           </ul>
  
     </div>
     </div>
      
        <a href="angpao2.aspx" ><img alt="看更多" src="https://www.hawooo.com/images/ftp/20180116/edmm_11.png" style="float:left;display:block;width:100%;" /></a>
        
     </div>    
     
      
        <!--第三塊開始-->    
      <div class="am-cf" style="width:100%;margin:0 auto;display:block;max-width:650px;background-color: #eb3a27">

       
               
         <a href="angpao3.aspx" target="_blank"><img alt="家裡就有髮型師" src="https://www.hawooo.com/images/ftp/20180116/edmm_15.gif" style="float:left;display:block;width:100%;" /></a>
         
   <div class="am-cf" style="width:100%;margin:0 auto;display:block;max-width:650px;background-color:#2b2b2b">    
   <iframe max-width="560px" max-height="315px" style="margin: auto;z-index: 2; float: none; display: inherit;background-color: black;" src="https://www.youtube.com/embed/UAkbNv_RjGQ" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>    
   </div>
    
     <div style="position: relative; max-width: 650px;float: center;margin: 0 auto;">
      
       
    
     <div style="top:0;bottom: 0;left:0;right:0;margin: auto;height: auto;">
          
     <ul style="height: 50%;list-style-type:none;margin:0px 6%;padding: 0;background-color: #eb3a27">
                  <asp:Repeater ID="rp_product_list_3" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
              	<li class="am-fl" style="width:calc(50% - 10px);background: white;padding: 5px;margin: 5px;height: calc(100% - 20px);">
                               
                                        <a href="product.aspx?id=<%# Eval("WP01") %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 5px 5px;height: 40px;overflow: hidden;font-size:medium;line-height: 20px;color:#535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 5px 5px 0 5px;font-size:small;color:red">RM<span style="font-size:medium;letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px;color:dimgrey;font-size:smaller;margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                            </p>
                                        </a>
                                    </li>

                                </ItemTemplate>
                            </asp:Repeater>           
           </ul>

     </div>
     </div>
      
        <a href="angpao3.aspx" ><img alt="看更多" src="https://www.hawooo.com/images/ftp/20180116/edmm_11.png" style="float:left;display:block;width:100%;" /></a>
        
     </div>    
        
      
      
      
      
     
    <!--第四塊開始-->    
   <div class="am-cf" style="width:100%;margin:0 auto;display:block;max-width:650px;background-color: #eb3a27">

       
               
         <a href="angpao4.aspx" target="_blank"><img alt="春節除舊佈新" src="https://www.hawooo.com/images/ftp/20180116/edmm_18.gif" style="float:left;display:block;width:100%;" /></a>
         
   <div class="am-cf" style="width:100%;margin:0 auto;display:block;max-width:650px;background-color:#2b2b2b">    
   <iframe max-width="560px" max-height="315px" style="margin: auto;z-index: 2; float: none; display: inherit;background-color: black;" src="https://www.youtube.com/embed/Sd8T7ekEwLE" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>    
   </div>
    
     <div style="position: relative; max-width: 650px;float: center;margin: 0 auto;">
      
       
    
     <div style="top:0;bottom: 0;left:0;right:0;margin: auto;height: auto;">
     
     <ul style="height: 50%;list-style-type:none;margin:0px 6%;padding: 0;background-color: #eb3a27">
                  <asp:Repeater ID="rp_product_list_4" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
              	<li class="am-fl" style="width:calc(50% - 10px);background: white;padding: 5px;margin: 5px;height: calc(100% - 20px);">
                               
                                        <a href="product.aspx?id=<%# Eval("WP01") %>">
                                            <img data-sizes="auto" src="https://www.hawooo.com/noimg.png" data-src='<%# "../images/webimgs/" + Eval("WP08_1") %>' class="lazyload am-img-responsive" />
                                            <h4 style="margin: 5px 5px;height: 40px;overflow: hidden;font-size:medium;line-height: 20px;color:#535252"><a href="productdetail.aspx?id=<%# Eval(" WP01") %>">
                                                <asp:Literal ID="lit_WP02" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal></a></h4>
                                            <p style="margin: 5px 5px 0 5px;font-size:small;color:red">RM<span style="font-size:medium;letter-spacing: -2px;"><asp:Literal ID="lit_WPA06" runat="server" Text='<%# hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()) %>'></asp:Literal></span><del class="am-fr" style="line-height: 28px;color:dimgrey;font-size:smaller;margin-bottom: -20px;"><asp:Literal ID="lit_WPA10" runat="server" Text='<%# hawooo.PbClass.SHOWWPA10(hawooo.PbClass.CashRate(Eval("WPA06").ToString(),Application["mycashrate"].ToString()),hawooo.PbClass.CashRate(Eval("WPA10").ToString(),Application["mycashrate"].ToString()))  %>'></asp:Literal></del>
                                            </p>
                                        </a>
                                    </li>

                                </ItemTemplate>
                            </asp:Repeater>           
           </ul>
  
     </div>
     </div>
      
        <a href="angpao4.aspx"><img alt="看更多" src="https://www.hawooo.com/images/ftp/20180116/edmm_11.png" style="float:left;display:block;width:100%;" /></a>
               
        <img alt="hawooo.com" src=" https://www.hawooo.com/images/ftp/20171219/bhk/footerM.png" style="float:left;display:block;width:100%;" />
       
     </div>           
             
       








    <script src="assets/js/jquery.url.js"></script>
    <script type="text/javascript">
        function GoID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 200 }, 500);
        }

        function GosaleID(id) {
            $("html,body").animate({ scrollTop: $("#" + id + "").offset().top - 115 }, 500);
        }

        function twoYearsSideHide(e) {
            var sidebottom = $(".invisible").offset().top - 100;
            var yearbodybot = $(".twoyearbottom").offset().top + $(".twoyearbottom").height();
            if (sidebottom > yearbodybot) {
                $(".box").fadeOut();
            } else {
                $(".box").fadeIn();
            }
        }
        $(document).ready(function () {
            $(window).scroll(function () {
                twoYearsSideHide();
            })
        })


        $(function () {
            var tagid = $.url.param("tid");
            if (tagid != '') {
                GoID(tagid);
            }
        })

    </script>

</asp:Content>

