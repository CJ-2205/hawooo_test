//put after phone_menulist.js（放在主要的js後面）
//this is for brands（這裡是品牌館專用js）

// the original function is in phone_menulist.js
// (主要的function 新增在 phone_menulist.js 下面)

detectLength($(".brands-catalog-wrapper li"),10);

detectLength($(".brand-inside-banner li"),0);


// close brands nav

function closeBrandsNav(e){
	$("#brands-nav").collapse('close')
}

function toggle(e){
	$(".admin-sidebar-list").slideToggle(300)
}

function closeBrandsInsideNav(e){
	$("#collapase-nav-1").slideUp();
}