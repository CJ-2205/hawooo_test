// JavaScript Document

$(function () {



    $("#goTop").click(function () {

        $("html,body").animate({ scrollTop: 0 }, 900);

        //$("html,body").animate({scrollTop:0},900,"easeOutBounce");

        return false;

    });


    $("a[href=#q1]").click(function () {
        $("html,body").animate({ scrollTop: $("#q1").offset().top - 120 }, 500);
        return false;
    });


    $("a[href=#q2]").click(function () {
        $("html,body").animate({ scrollTop: $("#q2").offset().top - 120 }, 500);
        return false;
    });


    $("a[href=#q3]").click(function () {
        $("html,body").animate({ scrollTop: $("#q3").offset().top - 120 }, 500);
        return false;
    });


    $("a[href=#q4]").click(function () {
        $("html,body").animate({ scrollTop: $("#q4").offset().top - 120 }, 500);
        return false;
    });


    $("a[href=#q5]").click(function () {
        $("html,body").animate({ scrollTop: $("#q5").offset().top - 120 }, 500);
        return false;
    });


    $("a[href=#q6]").click(function () {
        $("html,body").animate({ scrollTop: $("#q6").offset().top - 120 }, 500);
        return false;
    });


    $("a[href=#da]").click(function () {
        $("html,body").animate({ scrollTop: $("#da").offset().top - 120 }, 500);
        return false;
    });


    $("a[href=#tian]").click(function () {
        $("html,body").animate({ scrollTop: $("#tian").offset().top - 120 }, 500);
        return false;
    });


    $("a[href=#shui]").click(function () {
        $("html,body").animate({ scrollTop: $("#shui").offset().top - 120 }, 500);
        return false;
    });


    $("a[href=#ya]").click(function () {
        $("html,body").animate({ scrollTop: $("#ya").offset().top - 120 }, 500);
        return false;
    });


    $("a[href=#dong]").click(function () {
        $("html,body").animate({ scrollTop: $("#dong").offset().top - 120 }, 500);
        return false;
    });


    $("a[href=#ma]").click(function () {
        $("html,body").animate({ scrollTop: $("#ma").offset().top - 120 }, 500);
        return false;
    });

    $("a[href=#du]").click(function () {
        $("html,body").animate({ scrollTop: $("#du").offset().top - 120 }, 500);
        return false;
    });

});