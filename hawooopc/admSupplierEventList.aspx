<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/adm.master" CodeFile="admSupplierEventList.aspx.cs" Inherits="admSupplierEventList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/css/jquery-ui.css" />
    <style>
        .datetimepicker {
            margin-top: 0 !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-cf am-padding">
        <strong class="am-text-primary am-text-lg">電商活動頁列表</strong>
    </div>
    <hr />
    <div class="am-g" style="min-height: 400px">
        <div class="am-form am-u-sm-12">
            <div class="am-form-inline am-form-group">
                <div class="am-form-group">
                    <asp:LinkButton ID="btnCreate" runat="server" CssClass="am-btn am-radius am-btn-primary" PostBackUrl="admSupplierEventEdit.aspx"><i class="am-icon-plus"></i>新增活動</asp:LinkButton>
                </div>

                <div class="am-fr">
                    <div class="am-form-group">
                        <asp:DropDownList ID="ddlBrandList" runat="server" data-am-selected="{searchBox: 1}">
                        </asp:DropDownList>
                    </div>
                    <span>活動開始日從</span>
                    <div class="am-form-group am-form-icon">
                        <i class="am-icon-calendar am-icon-sm"></i>
                        <input type="text" id="txtSDay" class="am-radius am-form-field datepicker" runat="server" readonly="true" />
                    </div>
                    <span>至</span>
                    <div class="am-form-group am-form-icon">
                        <i class="am-icon-calendar am-icon-sm"></i>
                        <input type="text" id="txtEDay" class="am-radius am-form-field datepicker" runat="server" readonly="true" />
                    </div>
                    <div class="am-form-group">
                        <asp:LinkButton ID="btnSearch" runat="server" CssClass="am-btn am-radius am-btn-primary" OnClick="btnSearch_Click"><i class="am-icon-search"></i></asp:LinkButton>
                        <asp:LinkButton ID="btnAllData" runat="server" CssClass="am-btn am-radius am-btn-primary" OnClick="btnAllData_Click"><i class="am-icon-list"></i>全部</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>

        <div class="am-form am-u-sm-12">
            <asp:UpdatePanel ID="list_panel" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <table class="am-table am-table-striped am-table-hover">
                        <thead>
                            <tr class="am-primary">
                                <th>供應商名稱</th>
                                <th>活動開始日</th>
                                <th>活動結束日</th>
                                <th>活動備註</th>
                                <th>狀態</th>
                                <th>操作</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="rptList" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <asp:HiddenField ID="hfMSysId" runat="server" Value='<%# Eval("MSysId") %>' />
                                            <%# Eval("B02") %>
                                            <a href='http://test.hawoo.com/user/brandeventpage.aspx?bid=<%# Eval("B01") %>' class="am-badge am-badge-secondary am-text-default" target="_blank">[桌]</a>

                                        </td>
                                        <td><%# DateTime.Parse(Eval("STime").ToString()).ToString("yyyy-MM-dd HH:mm:ss") %></td>
                                        <td><%# DateTime.Parse(Eval("ETime").ToString()).ToString("yyyy-MM-dd HH:mm:ss") %></td>
                                        <td style="width: 250px"><%# Eval("FGNote").ToString() %></td>
                                        <td><%# Eval("Status").ToString().Equals("1")? "開啟":"關閉" %></td>
                                        <td>
                                            <a href='http://test.hawoo.com/user/admBEventPagePreview.aspx?id=<%# Eval("MSysId") %>' class="am-btn am-btn-success am-btn-xs" target="_blank">[桌]</a>
                                            <asp:Button ID="btnEdit" runat="server" Text="編輯資料" CssClass="am-btn am-btn-success am-btn-xs" OnClick="btnEdit_Click" />
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>

    </div>

    <script>
        $(function () {
            Init();
        });

        function Init() {
            var opt = { dateFormat: 'yy-mm-dd' };
            $('.datepicker').datepicker(opt);
        }
    </script>
</asp:Content>
