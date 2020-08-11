<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="membercommend.aspx.cs" Inherits="user_membercommend" %>

<%@ Register Src="~/user/control/memberclass.ascx" TagPrefix="uc1" TagName="memberclass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .featured_like_class {
            margin: 8px;
            font-size: 12px;
            color: #999;
        }

        .user-share-text {
            margin-top: 5px;
            background-color: #F6F6F6;
            border-top: 1px solid #E9E9E9;
            border-bottom: 1px solid #E9E9E9;
            padding: 3px;
        }

        .user-share-info {
            background-color: #F6F6F6;
            padding: 5px;
        }

        .user-share-info-text {
            padding: 0px;
            margin: 0px;
            font-size: 13px;
            vertical-align: middle;
            padding-top: 10px;
        }
    </style>
    <div class="am-container" style="padding-top: 20px">
        <div class="am-u-md-2">
            <uc1:memberclass runat="server" ID="memberclass" />
        </div>
        <div class="am-u-md-10" style="padding-left: 0px">

            <div class="am-panel boxshadow">
                <legend style="padding: 12px; background-color: #ffffff; margin-bottom: 1px;"><i class="am-icon-heart"></i>&nbsp;推薦紀錄 - Recommend Records </legend>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <ul class="am-avg-md-4 am-avg-sm-1 am-gallery-bordered product">
                            <asp:Repeater ID="rp_product_list" runat="server" OnItemCreated="rp_product_list_ItemCreated">
                                <ItemTemplate>
                                    <li>
                                        <div class="am-panel am-panel-default pitem">
                                            <div class="imgContain">
                                                <asp:HiddenField ID="hf_AC01" runat="server" Value='<%# Eval("AC01") %>' />

                                                <asp:Image ID="img_WP08_1" runat="server" CssClass="am-img-responsive" ImageUrl='<%# "../images/webimgs/" + Eval("WP08_1") %>' />

                                            </div>
                                            <div class="am-panel-bd">
                                                <div class="gallery-title">

                                                    <asp:Literal ID="lit_productname" runat="server" Text='<%# Eval("WP02") %>'></asp:Literal>
                                                </div>
                                                <div class="user-share-text">
                                                    <asp:Literal ID="lit_recommend_content" runat="server" Text='<%# Eval("AC04") %>'></asp:Literal>

                                                </div>
                                                <div class="user-share-info">
                                                    <div class="am-g">
                                                        <asp:Literal ID="lit_time" runat="server" Text='<%# Convert.ToDateTime(Eval("AC02").ToString()).ToString("yyyy-MM-dd HH:mm") %>'></asp:Literal>
                                                        <span style="padding-left: 30px">
                                                            <asp:ImageButton ID="img_edit" runat="server" ImageUrl="../images/icon/edit.png" OnClick="img_edit_Click" />
                                                            <asp:ImageButton ID="img_del" runat="server" ImageUrl="../images/icon/del.png" OnClick="img_del_Click" OnClientClick="if(!confirm('是否確認刪除該筆推薦?')) return false;" />
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:Literal ID="lit_show" runat="server"></asp:Literal>
            </div>
        </div>
    </div>
    <div class="am-modal am-modal-no-btn" tabindex="-1" id="pmodal">
        <div class="am-modal-dialog">
            <div class="am-modal-hd">
                編輯推薦內容
      <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
            </div>
            <div class="am-modal-bd" style="background-color: #ffffff">
                <div style="height: 10px">
                </div>

                <table>
                    <tr>
                        <td>
                            <asp:UpdatePanel ID="up_content" runat="server">
                                <ContentTemplate>
                                    <asp:HiddenField ID="hf_AC01" runat="server" />
                                    <asp:TextBox ID="txt_AC04" runat="server" TextMode="MultiLine" Width="380px" Height="150px"></asp:TextBox>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                    </tr>

                    <tr style="height: 50px">

                        <td style="text-align: right">
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <asp:Button ID="btn_recommnet" runat="server" Text="Send" CssClass="btn" OnClick="btn_recommnet_Click" />
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="btn_recommnet" EventName="Click" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
                </table>

            </div>
        </div>
    </div>
    <script>
        function openPMODAL() {
            $("#pmodal").modal().width(400);
        }
        function closePMODAL() {
            $("#pmodal").modal('close');
        }
    </script>

    <script>
        $(function () {
            $("#mc07").addClass("select");
        })
    </script>
</asp:Content>

