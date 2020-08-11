// JavaScript Document

$(function () {

    $("#gift5").click(function () {

        $("html,body").animate({ scrollTop: 0 }, 900);

        //$("html,body").animate({scrollTop:0},900,"easeOutBounce");

        return false;

    });


    $("a[href=#gobuy1]").click(function () {
        $("html,body").animate({ scrollTop: $("#gobuy1").offset().top }, 500);
        return false;
    });


    $("a[href=#gift1]").click(function () {
        $("html,body").animate({ scrollTop: $("#gift1").offset().top - (100) }, 500);
        return false;
    });


    $("a[href=#gift2]").click(function () {
        $("html,body").animate({ scrollTop: $("#gift2").offset().top - (100) }, 500);
        return false;
    });


    $("a[href=#gift3]").click(function () {
        $("html,body").animate({ scrollTop: $("#gift3").offset().top - (100) }, 500);
        return false;
    });


    $("a[href=#gift4]").click(function () {
        $("html,body").animate({ scrollTop: $("#gift4").offset().top - (100) }, 500);
        return false;
    });

    $("a[href=#gift5]").click(function () {
        $("html,body").animate({ scrollTop: $("#gift51").offset().top - (100) }, 500);
        return false;
    });

    $("a[href=#gotop]").click(function () {
        $("html,body").animate({ scrollTop: $("#gotop").offset().top }, 500);
        return false;
    });


    $("a[href=#da]").click(function () {
        $("html,body").animate({ scrollTop: $("#da").offset().top }, 500);
        return false;
    });


    $("a[href=#tian]").click(function () {
        $("html,body").animate({ scrollTop: $("#tian").offset().top }, 500);
        return false;
    });


    $("a[href=#shui]").click(function () {
        $("html,body").animate({ scrollTop: $("#shui").offset().top }, 500);
        return false;
    });


    $("a[href=#ya]").click(function () {
        $("html,body").animate({ scrollTop: $("#ya").offset().top }, 500);
        return false;
    });


    $("a[href=#dong]").click(function () {
        $("html,body").animate({ scrollTop: $("#dong").offset().top }, 500);
        return false;
    });


    $("a[href=#ma]").click(function () {
        $("html,body").animate({ scrollTop: $("#ma").offset().top }, 500);
        return false;
    });

    $("a[href=#du]").click(function () {
        $("html,body").animate({ scrollTop: $("#du").offset().top }, 500);
        return false;
    });

});