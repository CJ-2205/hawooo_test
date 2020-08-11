<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="shiptracking.aspx.cs" Inherits="user_shiptracking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .banner {
            background-color: #f7f7f7;
            background-size: cover;
            background-position: 50%;
            padding-bottom: 2.5rem;
            background-image: linear-gradient(rgba(255, 255, 255, 0.8), rgba(255, 255, 255, 0.8)), url(https://trackingmy.cdnspeed.top/img/banner.jpg);
            height: 300px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container">
        <div class="am-g">
            <div class="am-u-sm-12 banner">
                <div style="font-size: 24px; font-weight: 700; padding: 50px">Hawooo Shipment Tracking Platform</div>
                <div class="am-u-sm-12">
                    <div class="am-input-group " style="max-width: 400px; margin: 0 auto;">
                        <input type="text" id="TrackNo" maxlength="50" class="am-form-field">
                        <span class="am-input-group-btn">
                            <input type="button" value="Search" onclick="inputTrack()" class="am-btn am-btn-default ">
                        </span>
                        <script src="//www.tracking.my/track-button.js"></script>
                        <script>
                            function inputTrack() {
                                var num = document.getElementById("TrackNo").value;
                                if (num === "") {
                                    alert("Please enter tracking number");
                                    return;
                                }
                                TrackButton.track({
                                    tracking_no: num
                                });
                            }
                            function doTrack() {
                                var track = '<%= Request.QueryString["track"] != null ? Request.QueryString["track"].ToString() : null %>';
                                if (track != null) {
                                    console.log(track);
                                    $("#TrackNo").val(track);
                                    inputTrack();
                                }
                            }
                            $(function () {
                                doTrack();
                            })
                        </script>
                    </div>


                </div>

            </div>

        </div>
    </div>
</asp:Content>

