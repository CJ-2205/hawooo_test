<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true" CodeFile="forumedit.aspx.cs" Inherits="user_forumedit" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="../ckeditor/ckeditor.js"></script>
    <link href="../Huploadify/Huploadify.css" rel="stylesheet" />
    <script src="../Huploadify/jquery.Huploadify.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container" style="padding-top: 10px">
        <div class="am-g">
            <div class="am-form" style="background-color: #ffffff; padding: 30px">
                <fieldset>
                    <legend style="padding-top: 20px;">主題文章 </legend>

                    <div class="am-form-group">
                        <label for="doc-ipt-email-1">討論主題(200字以內)</label>
                        <asp:TextBox ID="txt_FM02" runat="server" MaxLength="200" placeholder="輸入主題"></asp:TextBox>
                    </div>
                    <hr />
                    <div class="am-form-group">
                        <label for="doc-ipt-email-1">請選擇類別</label>
                        <asp:DropDownList ID="ddl_class" runat="server">
                        </asp:DropDownList>
                    </div>
                    <hr />
                    <div class="am-form-group">
                        <asp:HiddenField ID="hf_FM12" runat="server" />
                        <%-- <label for="doc-ipt-file-1">
                        </label>--%>
                        <table>
                            <tr>
                                <td>圖片上傳</td>
                                <td style="text-align: left">
                                    <p id="upload"></p>

                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:Image ID="img_upimg" runat="server" ClientIDMode="Static" Width="200px" />
                                            </td>
                                        </tr>

                                    </table>
                                </td>
                            </tr>
                        </table>
                        <p>
                            <asp:Label ID="lab_path" runat="server" Text="" ClientIDMode="Static"></asp:Label>
                        </p>
                        <p class="am-form-help">*格式限制為(jpg,png,gif)，檔案需小於2MB的圖片檔案</p>
                        <script>
                            $(function () {
                                $('#upload').Huploadify({
                                    auto: true,
                                    fileTypeExts: '*.jpg;*.png;*.gif;*.jpeg;*.JPG;*.PNG,*.GIF,*.JPEG',
                                    multi: false,
                                    formData: { savepath: "../images/forum" },
                                    fileSizeLimit: 20000,
                                    showUploadedPercent: true,//是否实时显示上传的百分比，如20%
                                    showUploadedSize: true,
                                    removeTimeout: 1000,
                                    uploader: '../Huploadify/UploadUser.ashx',
                                    onUploadStart: function () {
                                        //alert('开始上传');

                                    },
                                    onInit: function () {
                                        //alert('初始化');
                                    },
                                    onUploadComplete: function (file, response) {
                                        //alert(file.name);
                                        var rsp = response;
                                        //setImgSrc(rsp);
                                        $("#lab_path").text("圖片路徑：http://www.hawooo.com/images/forum/" + rsp);
                                        $("#img_upimg").attr("src", "../images/forum/" + rsp);

                                    },
                                    onDelete: function (file) {
                                        console.log('删除的文件：' + file);
                                        console.log(file);
                                    }
                                });
                            });
                        </script>
                        <%--<table>
                            <tr>
                                <td>
                                    <asp:FileUpload ID="FileUpload1" runat="server" /></td>
                                <td>
                                    <span style="color: #ff0000">
                                        <asp:Literal ID="lit_up_msg" runat="server"></asp:Literal></span>
                                </td>
                                <td>
                                    <asp:Button ID="btn_upimg" runat="server" Text="上傳圖片" OnClick="btn_upimg_Click" /></td>
                            </tr>
                        </table>--%>
                    </div>
                    <hr />


                    <div class="am-form-group">
                        <label for="doc-ta-1">內容</label>
                        <asp:HiddenField ID="hf_content" runat="server" ClientIDMode="Static" />

                        <asp:TextBox ID="txt_content" runat="server" ClientIDMode="Static" TextMode="MultiLine"></asp:TextBox>

                        <script>
                            // Replace the <textarea id="editor1"> with a CKEditor
                            // instance, using default configuration.

                            $(function () {
                                setcontent();
                            })
                            function setcontent() {
                                CKEDITOR.replace('txt_content', {
                                    toolbar: [
                                        { name: 'document', items: ['Source', '-', 'NewPage', 'Preview', '-', 'Templates'] },	// Defines toolbar group with name (used to create voice label) and items in 3 subgroups.
                                        ['Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Undo', 'Redo', 'links'],
                                        { name: 'links', items: ['Link', 'Unlink', 'Image'] },
                                        { name: 'tools', items: ['Maximize'] },
                                        '/',																					// Line break - next group will be placed in new line.
                                        { name: 'basicstyles', items: ['Bold', 'Italic'] }
                                    ]
                                });
                            }
                        </script>
                    </div>




                    <div class="am-form-group">
                        <label class="am-checkbox-inline">
                            <asp:CheckBox ID="chk_check" runat="server" />
                            我已閱讀過並同意遵守討論區規則(<a href="#" data-am-modal="{target: '#my-alert'}">討論區規則</a>)
                        </label>

                    </div>
                    <hr />
                    <p>
                        <asp:UpdatePanel ID="up_edit" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <asp:HiddenField ID="hf_FM01" runat="server" />
                                <asp:Button ID="btn_send" runat="server" Text="SEND" CssClass="btn btn-blue" OnClick="btn_send_Click" OnClientClick="setCkEditer()" />
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="btn_send" EventName="Click" />
                            </Triggers>
                        </asp:UpdatePanel>
                    </p>
                    <script>
                        function setCkEditer() {
                            $("#hf_content").val(CKEDITOR.instances['txt_content'].getData());
                        }
                    </script>
                </fieldset>
            </div>

        </div>
        <div class="am-modal am-modal-alert" tabindex="-1" id="my-alert">
            <div class="am-modal-dialog">
                <div class="am-modal-hd">
                    HaWooo 討論區規則
      <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
                </div>
                <div class="am-modal-bd">
                    <%-- <table style="text-align: left; line-height: 40px">

                        <tr>
                            <td>本站對會員發布的文字、圖片或檔案保有片面修改或移除的權利。當會員使用本網站服務時，代表會員已經詳細閱讀並完全了解，並同意配合下述規定：
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td>>留言內容必須不抵觸馬來西亞及台灣相關法律。<br />
                                >不可張貼任何涉及色情、暴力、賭博訊息內容。<br />
                                >貼圖者須確保所貼圖片並無侵犯他人版權，貼圖者需自行承擔有關法律責任。<br />
                                >不可在討論區內作任何商業宣傳及張貼廣告。<br />
                                >留言內容請盡量貼近討論區主題<br />
                                >留言內容請盡量具體，方便網友討論。<br />
                                >言論請中肯，對事不對人。你可以不同意某某人的說話，反之亦然，你的說話同樣會被尊重。<br />
                                >不可粗言穢語或人身攻擊。<br />
                                >留言者須同意上列全部板規。<br />
                            </td>
                        </tr>
                    </table>--%>
                    <div style="border: 1px solid #808080; text-align: left; padding-top: 5px">

                        <ul class="forumrule">
                            <li>留言者必須遵守下列規則 :
                            </li>
                            <li>不可粗言穢語
                            </li>
                            <li>不可使用不雅及淫褻字眼
                            </li>
                            <li>不可人身攻擊、誹謗、及中傷別人
                            </li>
                            <li>不可種族及性別歧視
                            </li>
                            <li>不可作商業宣傳
                            </li>
                            <li>不可抄襲及文責自負
                            </li>
                            <li>請各位網友自重，切勿張貼與本網頁無關的討論主題
                            </li>
                            <li>本討論區屬「開放」型，內容純屬留言者個人意見，不代表本網站立場。
                            </li>
                            <li>HaWooo保留編輯或刪除留言的權利。
                            </li>
                        </ul>
                        <hr />
                        <ul class="forumrule">
                            <li>Users must adhere to the following Rules and Regulations:
                            </li>
                            <li>No vulgar language is permitted
                            </li>
                            <li>No indecent and obscene wordings
                            </li>
                            <li>No personal attacks, defamation and slander
                            </li>
                            <li>No racial and sexual discrimination
                            </li>
                            <li>No commercial advertisements
                            </li>
                            <li>No illegal copying and users are responsible for their post-up messages
                            </li>
                            <li>Users are reminded to behave and not to post up messages that are irrelevant to the discussion topic
                            </li>
                            <li>The discussion board is open to all. Please note that all the messages posted by net- users do not represent HaWooo point of view.
                            </li>
                            <li>HaWooo reserves the right to edit and remove messages. 
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <script>
        $(function () {

            $("#navMenu > li").eq(3).addClass('selected');
        });
    </script>
</asp:Content>

