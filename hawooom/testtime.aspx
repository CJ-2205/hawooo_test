<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/mobile.master" AutoEventWireup="true" CodeFile="testtime.aspx.cs" Inherits="mobile_testtime" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        $(document).ready(function () {
            var start = new Date($.now());
            alert(start);
            var arr = "2017-02-01 00:00:00".split(/[- :]/);
            etime = new Date(arr[0], arr[1] - 1, arr[2], arr[3], arr[4], arr[5]);
            setTime(start, etime);
        })
        function setTime(stime, etime) {
            var spantime = (etime - stime) / 1000;
            alert(etime);
            alert(spantime);
        }
        function dateString2Date(dateString) {
            var dt = dateString.split(/\-|\s/);
            return new Date(dt.slice(0, 3).reverse().join('-') + ' ' + dt[3]);
        }
    </script>
</asp:Content>

