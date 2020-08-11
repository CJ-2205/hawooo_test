$(function () {
  $.each($('.rating-wrapper'), function (key, value) {
      $(this).find('.rating-stars').star($(this));
  });
});
$.fn.star = function (value) {
  var val = 0, stars = 5, percentage = 0;
  return this.each(function (i, e) {
      val = parseFloat(value.find(".rating-avg").text());
      percentage = (val / stars) * 100;
      percentage = percentage > 100 ? 100 : percentage;
      percentage = percentage < 0 ? 0 : percentage;
      value.find('.rating-stars-filled').animate({ width: percentage + '%' }, 0);
  });
};