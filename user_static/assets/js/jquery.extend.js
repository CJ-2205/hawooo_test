
///该文件定义了一些jQuery扩展
/// Created By  xmx
////* <reference path="jquery-1.3.2-vsdoc.js" />*/

///	<summary>
///    jQuery原型扩展，重新封装Ajax请求WebServeice
///	</summary>
///	<param name="url" type="String">
///     处理请求的地址
///</param>
///	<param name="dataMap" type="String">
///     参数，json格式的字符串
///</param>
///	<param name="fnSuccess" type="function">
///     请求成功后的回调函数
///</param>
$.ajaxWebService = function (url, dataMap, fnSuccess, fnError, fnBeforeSend, fnComplete) {
    $.ajax({
        type: "POST",
        contentType: "application/json",
        url: url,
        data: dataMap,
        dataType: "json",
        success: fnSuccess,
        beforeSend: fnBeforeSend,
        complete: fnComplete,
        error: fnError
    });
}

///	<summary>
///    jQuery实例扩展，Ajax加载封装用户控件(*.ascx)，输出Html，仅适用于Asp.Net。
///     依赖 $.ajaxWebService(url, dataMap, fnSuccess)
///	</summary>
///	<param name="control" type="String">
///     需要加载的用户控件的相对路径
///</param>
///	<param name="page" type="String">
///     输出控件Html片段的页面，不一定是当前页面。可选，缺省值为当前页面。
///     该页面需继承代理基类PageProxy，详细代码C#：
//        [WebMethod]
//        public static string RenderUserControl(string control)
//        {
//            Page page = new Page();
//            UserControl ctl = (UserControl)page.LoadControl("~/" + control);
//            page.Controls.Add(ctl);
//            StringWriter writer = new StringWriter();
//            HttpContext.Current.Server.Execute(page, writer, false);
//            return writer.ToString();
//        }
///</param>
$.fn.loadUserControl = function (control, page) {
    var $dom = this;
    if (page == "" || page == null) {
        page = location.pathname.replace("/", "");
    }
    page += "/RenderUserControl"; //RenderUserControl是PageProxy中的方法，不要轻易修改
    $.ajaxWebService(page, "{control:'" + control + "'}", function (result) {
        $dom.html(result.d);
    });

}
