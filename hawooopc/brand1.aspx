<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true"
    CodeFile="brand1.aspx.cs" Inherits="user_brand1" %>

<%@ Import Namespace="hawooo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <!-- 倒數計時用 -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" />
    <%--    <link rel="stylesheet" href="countdown/jquery.countdown.css" />--%>
    <link rel="stylesheet" href="assets/css/jquery.countdown.css">
    <!-- 引用 jQuery 1.4 -->
    <%--<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>--%>
    <!-- 類別滑動 -->
    <%--<link rel="stylesheet" href="assets/css/index.css">--%>
    <link rel="stylesheet" type="text/css" href="assets/css/login.css">
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/amazeui.min.css">
    <style type="text/css">
        .tag-chinese {
            padding: 0em 0.3em;
            display: inline-block;
            position: absolute;
            font-size: .9em;
            top: 5px;
            right: 5px;
            border: 1px solid #f1b13b;
            color: #f1b13b;
            background: rgba(255,255,255,.9);
        }


     body{
	background-color:#eee;
	}


	ul, li {
	margin: 0;
	padding: 0;
	list-style: none;
	}
	.abgne_tab {
	clear: left;
	width: 1000px;
	margin: 0 auto;
	background-color:#E5E4E5;
	}
	ul.tabs {
		width: 100%;
		height: 32px;
		border-bottom: 0px solid #999;
		border-left: 0px solid #999;/*此處加上背景色語法不會影響到標簽內容的背景*/
	}
	ul.tabs li {/*這裡可以改外框色*/
		float: left;
		height: 55px;
		line-height: 55px;
		overflow: hidden;
		position: relative;
		margin-bottom: -1px;	/* 讓 li 往下移來遮住 ul 的部份 border-bottom */
		background: #c9c5c9;
		width:25%;
		text-align: center;
		
	}
	ul.tabs li a {/*標籤標題設定*/
	display: block;
	padding: 0 20px;
	color:black;
	border: 0px solid #fff;
	text-decoration: none;
	}
	ul.tabs li a:hover {
		background: #ccc;
		color:#d1031c;
	}
	ul.tabs li.active  {/**/
		
		border-bottom: 6px solid #d1031c;
		color:#d1031c; 
		
	}
	ul.tabs li.active a:hover {
		background: #c9c5c9;/*滑鼠移上來時變色*/
	}
	div.tab_container {
		clear: left;
		width: 100%;
		
		border-top: none;
		background: white;/*標籤頁內容的背景*/
		
	}
	div.tab_container .tab_content {
		padding: 20px;
	}
	div.tab_container .tab_content h2 {
		margin: 0 0 20px;
	}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
	
}
		
	
	
	/*基本設定*/
	
		body{
			position: relative;
			height: auto;
		}
		
		
		.pname{
			margin: 10px 5px;
			height: 40px;
			overflow: hidden;
			font-size:14px;
			line-height: 20px;
			color:#535252	
		}
		
		.discountprice{
		    margin: 5px 5px 0 5px;
		    font-size:10px;
			color:red	
		}
		.saveprice{
		    line-height: 37px;
		    color:dimgrey;
			font-size:small;
			margin-bottom: -20px;
			float:right;
			margin-top: -3px;
		}
		
	    .redprice{
		 font-size:20px;
		 letter-spacing: -2px;
	     }
		
	    
	.product_5_space{
		padding: 0 10px;
		float:right;
		position: relative;
		z-index:50;
		background-color: black;
	}
	
	.product_5_box{
		width:18.5%;
		background: white;
		padding: 5px;
		margin: 15px 3px 0 3px;
		z-index: 50;
		margin-left: 10px;
	}
	
	.product_5_img{
		width:90%;
		margin-left: 8px;
	}
	
	
	.fire_product_4_space{
		padding: 0 10px;
		float:right;
		position: relative;
		z-index:50;
		background-color: white;
	}
	
	.fire_product_4_box{
		width:23%;
		background: white;
		padding: 10px;
		margin: 10px 5px;
		z-index: 50;
		margin-left: 13px;
	}
	
	.fire_product_4_img{
		width:90%;
		margin-left: 11px;
	}

		
		/*商品跳起來吧*/
        .hvr-float {
	display: inline-block;
	vertical-align: middle;
	-webkit-transform: perspective(1px) translateZ(0);
	transform: perspective(1px) translateZ(0);
	box-shadow: 0 0 1px transparent;
	-webkit-transition-duration: .3s;
	transition-duration: .3s;
	-webkit-transition-property: transform;
	transition-property: transform;
	-webkit-transition-timing-function: ease-out;
	transition-timing-function: ease-out
}
.hvr-float:active, .hvr-float:focus, .hvr-float:hover {
	-webkit-transform: translateY(-8px);
	transform: translateY(-8px)
}

		
	 .gift2 {
			
			background-size: 100%;
			height:auto;
			margin: 0px auto;
			padding:0px;
		    
		   
			
		}
	
/*類別區塊開始*/
				 .tab_box{
					 width:100%;
					 margin:0 auto;
					 display:block;
					 width:1000px;
					 position: relative;
					 z-index: 2;
					 list-style-type:none;}
				 
				 .tab_box_space{
					 display: inline;
					 position: absolute;
					 z-index: 2;
					 top:-3px;
					 bottom:0;
					 left:118px;
					 right:0;
				 }
				 
				 .tab_box_box{
					 width:28.5%;
					 background: grey;
					 padding: 10px;
					 margin: 10px 5px;
					 z-index: 50;
				 }	
	/*loading bar開始*/
	}
.w3-light-grey, .w3-hover-light-grey:hover, .w3-light-gray, .w3-hover-light-gray:hover {
	color: #000!important;
	background-color: #f1f1f1!important
		}
	
.w3-round-xlarge {
	border-radius: 16px
}	
.bar-orange, .w3-hover-orange:hover {
	color: #fff!important;
	background-color: #FF4A1D!important;
	font-size:10px;
	text-align: center;
		
}
	
.bar-white, .w3-hover-white:hover {
	color: #fff!important;
	background-color: rgba(255,255,255,0.5)

		
}	
.w3-container, .w3-panel {
	padding: 0.01em 16px
}
.w3-container:after, .w3-container:before, .w3-panel:after, .w3-panel:before, .w3-row:after, .w3-row:before, .w3-row-padding:after, .w3-row-padding:before, .w3-cell-row:before, .w3-cell-row:after, .w3-clear:after, .w3-clear:before, .w3-bar:before, .w3-bar:after {
	content: "";
	display: table;
	clear: both
}
	.burn-text{
			color:white;
			text-align: center;
			position:absolute;
			right:60px;
			top:10%;
			font-size: 13px;	
			}
	
	/*品牌館開始*/
			 .brand_logo{
					  position:absolute;
					   top:57%;
					   margin:auto;
					   width:40%;
					   left:55%; 
					   outline: 4px solid white;
				   }
				   
			.brand_logo_text{
						margin-top: 30px;
						font-size:16px;
						line-height: 11px;
						color:black;
						font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
						text-align: center;
						margin-bottom:5px;
		           }
				   
			.brand_logo_slogan{
						margin: 0 5px;
						height: 40px;
						overflow: hidden;
						font-size:14px;
						line-height: 18px;
						color:#979697;
					    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
					    text-align: center;
				        padding-top: 3px;
		           }
	        	.edm_title{
						float:left;
						font-size: 22px;
						color:#424242;
						width:350px;
						overflow: hidden;
						text-overflow: ellipsis;
						white-space: nowrap;
						margin-top:15px;
	}
		
	.brand_space{
		padding: 0 50px;
		float:right;
		position: relative;
		z-index:50;
		background-color:#999;
	}
	
	.brand_box{
		width:23.8%;
		background: white;
		padding: 10px;
		margin: 10px 5px;
		z-index: 50;
	}
	
	.brand_logo_space{
		display: inline;
		position: absolute;
		z-index: 2;
		width:66%;
		top:0;
		bottom:0;
		left:0;
		right:0;
	}

	       	 /*旁邊小選單*/
			.invisible{
			position: fixed;
			bottom:5px;
			left:0;
			right:0;
			margin:0 auto;
			width: 1080px;
			height: 2px;
			z-index: 3;
			
		}	
	    		.box{
			position: fixed;
			top:15%;
			right:6%;
			width: 100px;
			height: 1530px;
			

		}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- 小選單開始-->
    <div class="invisible" style="z-index: 50;">
        <!-- box是固定的nav-->
        <div class="box">
           <a href="3rd_bday.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180918/sidebar_01.png" style="width: 150px; margin-bottom: -1px" alt="main page"></a>
            <a href="3rd_flashsale.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180918/sidebar_02.png" style="width: 150px; margin-bottom: -1px" alt="flash sale"></a>

            <a href="life1.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180918/sidebar_03.png" style="width: 150px; margin-bottom: -1px" alt="beautiful life"></a>

            <a href="life2.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180918/sidebar_04.png" style="width: 150px; margin-bottom: -1px" alt="elegant life"></a>

            <a href="life3.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180918/sidebar_05.png" style="width: 150px; margin-bottom: -1px" alt="easy life"></a>

            <a href="kol.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180918/sidebar_06.png" style="width: 150px; margin-bottom: -1px" alt="KOL"></a>

            <a href="brand1.aspx">
                <img src="https://www.hawooo.com/images/ftp/20180918/sidebar_07.png" style="width: 150px; margin-bottom: -1px" alt="top brands"></a>


        </div>
    </div>
    <!-- 小選單掰掰-->
    <!--主視覺-->
   <!--主視覺-->   	
	
<div style="width:1000px;margin: 0 auto;">   

<img  src="https://www.hawooo.com/images/ftp/20180918/edm_04.png" alt="Brand" style="width: 1000px;float: left;">
 <!--主視覺結束-->
	
<!--beauty開始-->
<h4 class="edm_title">Beauty</h4>			
 <div style="width:100%;margin:0 auto;display:block;width:1000px;position: relative;z-index: 2;list-style-type:none;">

	 
         <div class="gift2 am-cf">
               
               
               	<div class="brand_space">
               	<ul class="" >
 <!--第一排-->              	
               	<li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=208" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_01.png" style="width:100%;">
						<h4 class="brand_logo_text">Dr. Cink</h4>
						<h4 class="brand_logo_slogan">Up to 67% off<br>+ Free Gift（RM400）</h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_01.png" alt="Dr.cink" />
						   </div>
						</a>
               
               	</li>
					
                <li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=239" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_02.png" style="width:100%;">
						<h4 class="brand_logo_text">userISM</h4>
						<h4 class="brand_logo_slogan">Up to 55% off</h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_02.png" alt="userISM" />
						   </div>
						</a>
               
               	</li>
				
				<li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=229" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_03.png" style="width:100%;">
						<h4 class="brand_logo_text">FreshO2</h4>
						<h4 class="brand_logo_slogan">Up to 46% off</h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_03.png" alt="FreshO2" />
						   </div>
						</a>
               
               	</li>
					
				<li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=39" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_04.png" style="width:100%;">
						<h4 class="brand_logo_text">LA BEAU</h4>
						<h4 class="brand_logo_slogan">Up to 67% off<br>+ Free Gift（RM400）</h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_04.png" alt="LA BEAU" />
						   </div>
						</a>
               
               	</li>	
					
    <!--第二排-->              	               	
                <li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=251" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_05.png" style="width:100%;">
						<h4 class="brand_logo_text">VIVI PAM</h4>
						<h4 class="brand_logo_slogan">Up to 39% off <br>+Free Gift（RM60）</h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_05.png" alt="VIVI PAM" />
						   </div>
						</a>
               
               	</li>
					
                <li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=211" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_06.png" style="width:100%;">
						<h4 class="brand_logo_text">Solone</h4>
						<h4 class="brand_logo_slogan">Up to 44% off</h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_06.png" alt="solone" />
						   </div>
						</a>
               
               	</li>
				
				<li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=202" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_07.png" style="width:100%;">
						<h4 class="brand_logo_text">廣源良</h4>
						<h4 class="brand_logo_slogan">Up to 24% off</h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_07.png" alt="廣源良" />
						   </div>
						</a>
               
               	</li>
					
				<li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=154" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_08.png" style="width:100%;">
						<h4 class="brand_logo_text">UNT</h4>
						<h4 class="brand_logo_slogan">Up to 29% off </h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_08.png" alt="UNT" />
						   </div>
						</a>
               
               	</li>	 
					
     <!--第三排-->              	               	
                <li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=230" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_09.png" style="width:100%;">
						<h4 class="brand_logo_text">ttm面膜</h4>
						<h4 class="brand_logo_slogan">Up to 32% off <br>+Free Gift（RM10）</h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_09.png" alt="ttm面膜" />
						   </div>
						</a>
               
               	</li>
					
                <li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=199" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_10.png" style="width:100%;">
						<h4 class="brand_logo_text">Dayla</h4>
						<h4 class="brand_logo_slogan">Up to 30% off <br>+Free Gift（RM10）</h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_10.png" alt="Dayla" />
						   </div>
						</a>
               
               	</li>
				
				<li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=164" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_11.png" style="width:100%;">
						<h4 class="brand_logo_text">NiceDoctor</h4>
						<h4 class="brand_logo_slogan">Up to 33% off </h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_11.png" alt="NiceDoctor" />
						   </div>
						</a>
               
               	</li>
					
				<li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=247" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_12.png" style="width:100%;">
						<h4 class="brand_logo_text">BeautyMaker</h4>
						<h4 class="brand_logo_slogan">Up to 20% off </h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_12.png" alt="BeautyMaker" />
						   </div>
						</a>
               
               	</li>	 				
               	               	
               	</ul>	
               	</div>
               </div>
               
 </div>
<!--beauty結束-->	
	
<!--Health開始-->
<h4 class="edm_title">Health</h4>			
 <div style="width:100%;margin:0 auto;display:block;width:1000px;position: relative;z-index: 2;list-style-type:none;">

	 
         <div class="gift2 am-cf">
               
               
               	<div class="brand_space">
               	<ul class="" >
 <!--第一排-->              	
               	<li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=12" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_13.png" style="width:100%;">
						<h4 class="brand_logo_text">BHK's</h4>
						<h4 class="brand_logo_slogan">Up to 26% off</h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_13.png" alt="BHK's" />
						   </div>
						</a>
               
               	</li>
					
                <li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=170&cid=1296" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_14.png" style="width:100%;">
						<h4 class="brand_logo_text">KGCHECK凱綺萃</h4>
						<h4 class="brand_logo_slogan">Up to 33% off <br>+Free Gift（RM29.9）</h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_14.png" alt="KGCHECK" />
						   </div>
						</a>
               
               	</li>
				
				<li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=51" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_15.png" style="width:100%;">
						<h4 class="brand_logo_text">Beauty Shop</h4>
						<h4 class="brand_logo_slogan">Up to 52% off </h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_15.png" alt="Beauty小舖" />
						   </div>
						</a>
               
               	</li>
					
				<li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=235" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_16.png" style="width:100%;">
						<h4 class="brand_logo_text">DV笛絲薇夢 </h4>
						<h4 class="brand_logo_slogan">10% off Storewide</h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_16.png" alt="DV笛絲薇夢" />
						   </div>
						</a>
               
               	</li>	
					
    <!--第二排-->              	               	
                <li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=222" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_17.png" style="width:100%;">
						<h4 class="brand_logo_text">Dr.Lady達特蕾蒂</h4>
						<h4 class="brand_logo_slogan">Up to 66% off <br>+ Free Gift (RM102.8)</h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_17.png" alt="Dr.Lady達特蕾蒂" />
						   </div>
						</a>
               
               	</li>
					
                <li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=54" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_18.png" style="width:100%;">
						<h4 class="brand_logo_text">Realwoman</h4>
						<h4 class="brand_logo_slogan">Up to 35% off <br>+ Free Gift (RM28.8)</h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_18.png" alt="Realwoman" />
						   </div>
						</a>
               
               	</li>
				
				<li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=203" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_19.png" style="width:100%;">
						<h4 class="brand_logo_text">SUPERCUT</h4>
						<h4 class="brand_logo_slogan">Up to 35% off </h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_19.png" alt="SUPERCUT" />
						   </div>
						</a>
               
               	</li>
					
				<li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=122" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_20.png" style="width:100%;">
						<h4 class="brand_logo_text">YohoPower悠活原力</h4>
						<h4 class="brand_logo_slogan">Up to 15% off <br>+ Free Gift (RM60.0)</h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_20.png" alt="YohoPower悠活原力" />
						   </div>
						</a>
               
               	</li>	 
    <!--第三排-->              	               	
                <li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=189" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_21.png" style="width:100%;">
						<h4 class="brand_logo_text">Ruijia 露奇亞</h4>
						<h4 class="brand_logo_slogan">Up to 21% off </h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_21.png" alt="Ruijia 露奇亞" />
						   </div>
						</a>
               
               	</li>							
               	               	
               	</ul>	
               	</div>
               </div>
               
 </div>
<!--Health結束-->		

<!--Fashion開始-->
<h4 class="edm_title">Fashion</h4>			
 <div style="width:100%;margin:0 auto;display:block;width:1000px;position: relative;z-index: 2;list-style-type:none;">

	 
         <div class="gift2 am-cf">
               
               
               	<div class="brand_space">
               	<ul class="" >
 <!--第一排-->              	
               	<li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=186" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_22.png" style="width:100%;">
						<h4 class="brand_logo_text">BC</h4>
						<h4 class="brand_logo_slogan">Up to 26% off </h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_22.png" alt="BC" />
						   </div>
						</a>
               
               	</li>
					
                <li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=263" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_23.png" style="width:100%;">
						<h4 class="brand_logo_text">TOKICHOI東京著衣</h4>
						<h4 class="brand_logo_slogan">Up to 30% off </h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_23.png" alt="東京著衣" />
						   </div>
						</a>
               
               	</li>
				
				<li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=136" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_24.png" style="width:100%;">
						<h4 class="brand_logo_text">eDELE伊黛爾</h4>
						<h4 class="brand_logo_slogan">Up to 29% off </h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_24.png" alt="eDELE伊黛爾" />
						   </div>
						</a>
               
               	</li>
					
				<li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=128" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_25.png" style="width:100%;">
						<h4 class="brand_logo_text">Qmomo</h4>
						<h4 class="brand_logo_slogan">Up to 25% off </h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_25.png" alt="Qmomo" />
						   </div>
						</a>
               
               	</li>	
					
    <!--第二排-->              	               	
					
                <li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=33" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_26.png" style="width:100%;">
						<h4 class="brand_logo_text">myBRA</h4>
						<h4 class="brand_logo_slogan">Up to 31% off</h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_26.png" alt="myBRA" />
						   </div>
						</a>
               
               	</li>
				
				<li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=8" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_27.png" style="width:100%;">
						<h4 class="brand_logo_text">FM Shoes</h4>
						<h4 class="brand_logo_slogan">Up to 31% off</h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_27.png" alt="FM shoes" />
						   </div>
						</a>
               
               	</li>
					
				<li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=7" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_28.png" style="width:100%;">
						<h4 class="brand_logo_text">玉如阿姨</h4>
						<h4 class="brand_logo_slogan">Up to 35% off</h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_28.png" alt="玉如阿姨" />
						   </div>
						</a>
               
               	</li>	 
					
				<li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=245" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_29.png" style="width:100%;">
						<h4 class="brand_logo_text">Pixy</h4>
						<h4 class="brand_logo_slogan">Up to 38% off </h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_29.png" alt="Pixy" />
						   </div>
						</a>
               
               	</li>	
    <!--第三排-->              	               	
                <li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=108" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_30.png" style="width:100%;">
						<h4 class="brand_logo_text">LaQueen</h4>
						<h4 class="brand_logo_slogan">Up to 50% off </h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_30.png" alt="LaQueen" />
						   </div>
						</a>
               
               	</li>							
               	               	
               	</ul>	
               	</div>
               </div>
               
 </div>
<!--Fashion結束-->	
	
<!--Home&Living開始-->
<h4 class="edm_title">Home & Living</h4>			
 <div style="width:100%;margin:0 auto;display:block;width:1000px;position: relative;z-index: 2;list-style-type:none;">

	 
         <div class="gift2 am-cf">
               
               
               	<div class="brand_space">
               	<ul class="" >
 <!--第一排-->              	
               	<li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=138" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_31.png" style="width:100%;">
						<h4 class="brand_logo_text"> icon愛康</h4>
						<h4 class="brand_logo_slogan">Up to 37% off </h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_31.png" alt=" icon愛康" />
						   </div>
						</a>
               
               	</li>
					
                <li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=264" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_32.png" style="width:100%;">
						<h4 class="brand_logo_text">HH草本</h4>
						<h4 class="brand_logo_slogan">Up to 33% off </h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_32.png" alt="HH草本" />
						   </div>
						</a>
               
               	</li>
				
				<li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=180" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_33.png" style="width:100%;">
						<h4 class="brand_logo_text">SOFEI舒妃</h4>
						<h4 class="brand_logo_slogan">Up to 35% off <br>+ Free Gift (RM13.8)</h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_33.png" alt="SOFEI舒妃" />
						   </div>
						</a>
               
               	</li>
					
				<li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=196" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_34.png" style="width:100%;">
						<h4 class="brand_logo_text">Is Lounge嗜香氛</h4>
						<h4 class="brand_logo_slogan">Up to 15% off <br>+ Free Gift</h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_34.png" alt="Is Lounge嗜香氛" />
						   </div>
						</a>
               
               	</li>	
					
    <!--第二排-->              	               	
                <li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=115" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_35.png" style="width:100%;">
						<h4 class="brand_logo_text">ANRIEA艾黎亞</h4>
						<h4 class="brand_logo_slogan">Up to 45% off </h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_35.png" alt="ANRIEA艾黎亞" />
						   </div>
						</a>
               
               	</li>
					
                <li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=116" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_36.png" style="width:100%;">
						<h4 class="brand_logo_text">Hinoki Life清檜</h4>
						<h4 class="brand_logo_slogan">Up to 30% off <br>+ Free Gift (RM49.9)</h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_36.png" alt="Hinoki Life清檜" />
						   </div>
						</a>
               
               	</li>
				
				<li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=127" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_37.png" style="width:100%;">
						<h4 class="brand_logo_text">GOLDSHIELD黃金盾</h4>
						<h4 class="brand_logo_slogan">Up to 21% off</h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_37.png" alt="GOLDSHIELD黃金盾" />
						   </div>
						</a>
               
               	</li>
					
				<li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?cid=1269&bid=167" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_38.png" style="width:100%;">
						<h4 class="brand_logo_text">Love Ways羅崴詩</h4>
						<h4 class="brand_logo_slogan">Up to 20% off <br>+ Free Gift (RM44.9)</h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_38.png" alt="Love Ways羅崴詩" />
						   </div>
						</a>
               
               	</li>	 
					
     <!--第三排-->              	               	
                <li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/search.aspx?stxt=小夫妻Q麵" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_39.png" style="width:100%;">
						<h4 class="brand_logo_text">Little Couples小夫妻Q麵</h4>
						<h4 class="brand_logo_slogan">Up to 44% off <br>+ Free Gift</h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_39.png" alt="小夫妻Q麵" />
						   </div>
						</a>         
               	</li>
					
                <li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=225" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_40.png" style="width:100%;">
						<h4 class="brand_logo_text">Mamaway媽媽餵</h4>
						<h4 class="brand_logo_slogan">Up to 47% off </h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_40.png" alt="Mamaway" />
						   </div>
						</a>
               
               	</li>
				
				<li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=32" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_41.png" style="width:100%;">
						<h4 class="brand_logo_text">sNug</h4>
						<h4 class="brand_logo_slogan">Up to 26% off </h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_41.png" alt="sNug" />
						   </div>
						</a>
               
               	</li>
					
				<li class="am-fl hvr-float brand_box">
						<a href="https://www.hawooo.com/user/brands.aspx?bid=94" target="_blank">
						<img src="https://www.hawooo.com/images/ftp/20180918/bn_42.png" style="width:100%;">
						<h4 class="brand_logo_text">阿嬤的配方</h4>
						<h4 class="brand_logo_slogan">Up to 32% off </h4>
						   <div class="brand_logo_space">
							   <img class="go_bt brand_logo" src="https://www.hawooo.com/images/ftp/20180918/logo_42.png" alt="阿嬤的配方" />
						   </div>
						</a>
               
               	</li>	 				
               	               	
               	</ul>	
               	</div>
               </div>
               
 </div>
<!--Health結束-->			
	
<!--品牌館結束-->	

	<img class="twoyearbottom" src="https://www.hawooo.com/images/ftp/20180312/footer.png" alt="hawooo.com" style="width: 100%;">

</div>	

    <!--活動辦法開始吧-->
    <div style="width: 100%; position: relative; width: 1000px; margin: 0 auto">

        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>


                    <td width="100%" bgcolor="#000000" style="text-align: left; font-family: Arial,Helvetica,sans-serif; font-size: small; color: #f8d1dd; padding: 20px; line-height: normal;">HaWooo 3rd Birthday Sale:<br>
                        <span style="color: white;">
                            <br>
                        </span>
                        <br>
                        1. Promotion Date<br>
                        <span style="color: white;">. Round 1: Now - September 30, 2018<br />
                            . Round 2: October 1-18, 2018<br />
                        </span>
                        <br>
                        2. Promotion Description<br />
                        <span style="color: white;">． FLASH SALE<br />
                            Limited time - valid for 48 hours only, according to checkout time<br />
                            Limited quantity - ends when all products are sold out<br />
                        </span>
                        <span style="color: white;">．Coupon<br />
                            Spend RM190 and get RM20 off - use promo code "bday20"<br />
                            Spend RM250 and get RM30 off - use promo code "bday30"<br />
                            Spend RM390 and get RM50 off - use promo code "bday50"<br />
                        </span>

                        3. Notice<br />
                        <span style="color: white;">※ Promo codes are not applicable to the following brands/products: BHK's, DR.CINK, Dr.Lady, UNIQMAN,Keep Perfume, H&J, SHARE and FLASH SALE products.<br />
                            ※ All brand promotional activities are not applicable to FLASH SALE products.
                        </span>
                    </td>


                </tr>
            </tbody>
        </table>

        <img class="twoyearbottom" src="https://www.hawooo.com/images/ftp/20180312/footer.png" alt="hawooo.com" style="width: 100%;">
    </div>


    <script>
        $(function () {
            for (var i = 1; i <= 3; i++) {
                $("#tab" + i + " > li").mouseover(function () {

                    if ($(this).hasClass("am-active"))

                        return;

                    else {

                        $(this).find('a').tabs('open');

                    }

                });
            };

            //var note = $('#note'),
            //ts = new Date(2018, 9, 17),
            //newYear = true;

            //    if ((new Date()) > ts) {
            //        // The new year is here! Count towards something else.
            //        // Notice the *1000 at the end - time must be in milliseconds
            //        ts = (new Date()).getTime() + 2 * 24 * 60 * 60 * 1000;
            //        newYear = false;
            //    }

            //    $('#countdown').countdown({
            //        timestamp: ts,
            //        callback: function (days, hours, minutes, seconds) {

            //            var message = "";

            //            message += days + " day" + (days == 1 ? '' : 's') + ", ";
            //            message += hours + " hour" + (hours == 1 ? '' : 's') + ", ";
            //            message += minutes + " minute" + (minutes == 1 ? '' : 's') + " and ";
            //            message += seconds + " second" + (seconds == 1 ? '' : 's') + " <br />";

            //            if (newYear) {
            //                message += "left until the new year!";
            //            }
            //            else {
            //                message += "left to 10 days from now!";
            //            }

            //            note.html(message);
            //        }
            //    });


        });




    </script>
    <!--DK 三大類別tab用 結束-->
    <!--倒數計時用的-->
    <!-- JavaScript includes -->
    <%--    <script src="https://code.jquery.com/jquery-1.7.1.min.js"></script>--%>
    <%--  <script src="countdown/jquery.countdown.js"></script>--%>
    <script src="assets/js/jquery.countdown.js"></script>
    <script src="assets/js/script.js"></script>
    <%--   <script src="js/script.js"></script>--%>
    <!--倒數計時用的結束-->
    <!--    <script src="assets/js/jquery.min.js"></script>-->
    <%--  <script src="assets/js/amazeui.min.js"></script>--%>
    <script type="text/javascript">

        function duplicate(id) {
            var ul = $('#' + id + ' ul');
            ul.find('li:last').clone(true).appendTo(ul);
        };

    </script>
    <script src="assets/js/clipboard.min.js"></script>
    <script>
        var clipboard = new ClipboardJS('.btnn');

        clipboard.on('success', function (e) {
            console.info('Action:', e.action);
            console.info('Text:', e.text);
            alert("已複製，請記得在結帳時輸入喔～");
            e.clearSelection();
        });

        clipboard.on('error', function (e) {
            console.error('Action:', e.action);
            console.error('Trigger:', e.trigger);
        });
    </script>



    <%--     <script>
            function RedeemCoupon() {

                var u = <%= Session["A01"] == null ? "null" : Session["A01"].ToString() %>;
                if (u != null)
                    $("#<%= button1.ClientID %>").click();
                else
                    doLogin('newarrivals1.aspx');
            }
   
        </script>
        <asp:UpdatePanel ID="up_add" runat="server">
            <ContentTemplate>
                <asp:Button runat="server" Text="Button" Style="display: none;" ID="button1" OnClick="button1_Click"></asp:Button>
     
            </ContentTemplate>
        </asp:UpdatePanel>--%>
<script src="assets/js/bday.js"></script>
</asp:Content>
