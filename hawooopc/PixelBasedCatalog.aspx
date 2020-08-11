<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PixelBasedCatalog.aspx.cs" Inherits="adm_fbevent_PixelBasedCatalog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../assets/js/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            <asp:HiddenField ID="hdnProductId" runat="server" />
        </div>
    </form>
    <!-- Facebook Pixel Code -->
    <script>
        !function (f, b, e, v, n, t, s) {
            if (f.fbq) return; n = f.fbq = function () {
                n.callMethod ?
                n.callMethod.apply(n, arguments) : n.queue.push(arguments)
            };
            if (!f._fbq) f._fbq = n; n.push = n; n.loaded = !0; n.version = '2.0';
            n.queue = []; t = b.createElement(e); t.async = !0;
            t.src = v; s = b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t, s)
        }(window, document, 'script',
            'https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '2322751841094594');
        fbq('track', 'PageView');
        fbq('track', 'ViewContent', {
            content_ids: $('#<%=hdnProductId.ClientID %>').val()
        });

    </script>
    <noscript><img height="1" width="1" style="display:none"
        src="https://www.facebook.com/tr?id=2322751841094594&ev=PageView&noscript=1"
        /></noscript>
    <!-- End Facebook Pixel Code -->
</body>
</html>
