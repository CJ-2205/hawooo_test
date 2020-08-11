using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string str = "?p=111&type=123&stxt=1231fdsdg";
        //Response.Write(Regex.Replace(str, "(p=[0-9]+)", ""));
        //string strHtml = String.Empty;
        //WebRequest myHttpWebRequest = WebRequest.Create("http://192.168.168.66:80/bfyQuotation.aspx?oid=71F6A174-DA84-4894-BB20-DAC1D9F45224");
        ////WebRequest myHttpWebRequest = WebRequest.Create("http://192.168.168.66/bfyQuotation.aspx?oid=71F6A174-DA84-4894-BB20-DAC1D9F45224");
        //myHttpWebRequest.Method = "GET";
        //HttpWebRequest httpRequest = myHttpWebRequest as HttpWebRequest;
        ////myHttpWebRequest.ContentType = "application/x-www-form-urlencoded";

        //using (WebResponse myWebResponse = myHttpWebRequest.GetResponse())
        //{
        //    using (Stream myStream = myWebResponse.GetResponseStream())
        //    {
        //        using (StreamReader myStreamReader = new StreamReader(myStream))
        //        {
        //            strHtml = myStreamReader.ReadToEnd();
        //        }
        //    }
        //}
        //Response.Write(strHtml);
    }
}