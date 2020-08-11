<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="jqueryconfirm.aspx.cs" Inherits="user_jqueryconfirm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%-- <asp:Button ID="Button1" runat="server" Text="Button" OnClientClick="confirm('123','123');" />
    <script>
        function confirm(_title, _content) {
            $.confirm({
                title: _title,
                content: _content,
                buttons: {
                    confirm: function () {
                        $.alert('Confirmed!');
                    },
                    cancel: function () {
                        $.alert('Canceled!');
                    //}
                    },
                    somethingElse: {
                        text: 'Something else',
                        btnClass: 'btn-blue',
                        keys: ['enter', 'shift'],
                        action: function () {
                            $.alert('Something else?');
                        }
                    }
                }
            });
        }
    </script>--%>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
         <%--   <asp:Button ID="Button1" runat="server" Text="Button" OnClientClick="confirm2url('123456','https://www.google.com.tw');" />--%>
              <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
        </ContentTemplate>
    </asp:UpdatePanel>

   <%-- <div class="am-modal am-modal-confirm" tabindex="-1" id="my-confirm">
        <div class="am-modal-dialog">
           
            <div class="am-modal-bd">
                <span id="confirm-msg"></span>
            </div>
            <div class="am-modal-footer">
                <span class="am-modal-btn" data-am-modal-cancel>Cancel</span>
                <span class="am-modal-btn" data-am-modal-confirm>Confirm</span>
            </div>
        </div>
    </div>
    <div class="am-modal am-modal-alert" tabindex="-1" id="my-alert">
        <div class="am-modal-dialog">
            <div class="am-modal-bd">
                <span id="alert-msg"></span>
            </div>
            <div class="am-modal-footer">
                <span class="am-modal-btn">Confirm</span>
            </div>
        </div>
    </div>
    <script>
        function confirm2url(msg, url) {
            $("#confirm-msg").html(msg);
            $('#my-confirm').modal({
                relatedTarget: this,
                onConfirm: function (options) {
                    location.href = url;
                },
                onCancel: function () {
                }
            });
        }
    </script>
    <script>
        function alert(msg) {
            $("#alert-msg").html(msg);
            $("#my-alert").modal('open');
        }
    </script>--%>
</asp:Content>

