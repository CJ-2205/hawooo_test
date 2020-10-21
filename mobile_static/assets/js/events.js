/* 電梯*/
function goto(id, speed, type) {
  $("html,body").animate(
    { scrollTop: $("#" + id + "").offset().top - 130 },
    speed,
    type
  )
};

/*複製商品塊*/
function duplicate(id) {
  var ul = $("#" + id + " ul");
  ul.find("li:last").clone(true).appendTo(ul);
}

//將商品改成同樣的url
function allAnchorHrefRedirect() {
  let allAnchorParent = $(".all-anchor-href-redirect");
  for (let i = 0; i < allAnchorParent.length; i++) {
    let anchorParentData = allAnchorParent.eq(i).data("redirect");
    let allAnchor = allAnchorParent.eq(i).find("a");
    for (let j = 0; j < allAnchor.length; j++) {
      allAnchor.eq(j).attr("href", anchorParentData);
      allAnchor.eq(j).attr("target", "_blank");

      // console.log(allAnchor.eq(j).text());
      // console.log(anchorParentData);
    }
  }
}

/*隱藏手機FotterBar*/
function hiddenFooterMenu() {
  $("#footermenu").css("display", "none");
}

