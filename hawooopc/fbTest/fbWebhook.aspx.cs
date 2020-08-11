using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.Net.Sockets;
//using webcs;
//using hawooo;
using System.Data;
using System.Security.Cryptography;
using System.Text;
using System.Diagnostics;
using System.Data.SqlClient;

public partial class fb_fbWebhook : System.Web.UI.Page
{
    ////private string strCon = @"Data Source=localhost;Initial Catalog=FB;User ID=howard;Password=dqtmwxatvnmm";
    //private static string strCon = @"Data Source=WIN-6EMB9NE7GIP;Initial Catalog=HAWOOO_CS;User ID=hawooocs;Password=@54865706999"; //線上資料庫
    private string _FANPAGE_TOKEN = "EAAC62v0srwoBAPfOUw8RZBGYdmjB9j86P4IJFOZArRw6CZCkdPLuAklAt3ZB3m1JFnMbl7ynTGBayD8MZClRQUSKwPdUCY1135WkIkaxt1gMA5ktxOlwzCwh5OghRvofAkhhkRWZB4EdwC3Q5xMh354JIvXsgzNdPKOZCJBZAq1OGgZDZD";
    ////Socket serverSocket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.IP);


    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            //WebHook驗證CODE
            //string hub_mode = "";
            //string hub_challenge = "";
            //string hub_verify_token = "";
            //string strToken = "ghdf1612";
            //string strMode = "subscribe";
            //hub_mode = null == Request["hub.mode"] ? "" : Request["hub.mode"];
            //hub_challenge = null == Request["hub.challenge"] ? "" : Request["hub.challenge"];
            //hub_verify_token = null == Request["hub.verify_token"] ? "" : Request["hub.verify_token"];

            //if (hub_mode == strMode && hub_verify_token == strToken)
            //{
            //    Response.StatusCode = 200;
            //    Response.Write(Request.Params["hub.challenge"]);
            //}
            //else
            //{
            //    Response.StatusCode = 403;
            //    Response.Write("error");
            //}





            //自動回覆CODE
            try
            {
                var sr = new StreamReader(Request.InputStream);
                string content = sr.ReadToEnd();
                var mcs = JsonConvert.DeserializeObject<ReceiveBotModel>(content);
                string text = mcs.entry[0].messaging[0].message.text;
                Dictionary<string, string> dic = new Dictionary<string, string>();
                dic.Add("Howard", "帥");
                 
                if(dic.ContainsKey(text))
                {
                    text = dic[text].ToString();
                }
             

                SendTextToUser(mcs.entry[0].messaging[0].sender.id, text);


                if (!Directory.Exists(HttpContext.Current.Server.MapPath("fbtest")))
                {
                    Directory.CreateDirectory(HttpContext.Current.Server.MapPath("fbtest"));
                }
                HttpServerUtility Server = HttpContext.Current.Server;
                string fileName = DateTime.Now.ToString("yyyyMMdd") + ".txt";
                FileInfo fi = new FileInfo(Server.MapPath("fbtest" + "/" + fileName));
                StreamWriter sw;
                if (fi.Exists)
                {
                    sw = File.AppendText(Server.MapPath("fbtest" + "/" + fileName));
                }
                else
                {
                    File.Create(Server.MapPath("fbtest") + "/" + fileName).Close();
                    sw = File.AppendText(Server.MapPath("fbtest" + "/" + fileName));
                }
                //wex.Response.Headers.Get("www-authenticate").ToString()
                sw.WriteLine("*----------------------------------------------------------");
                sw.WriteLine("Time:" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "");
                sw.WriteLine("Message:" + text + "");
                sw.WriteLine("----------------------------------------------------------*");
                sw.Flush();
                sw.Close();

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

        }




        //if (!IsPostBack)
        //{
        //    //取得Request的資料
        //    var sr = new StreamReader(Request.InputStream);
        //    string content = sr.ReadToEnd();
        //    try
        //    {
        //        if (content != "")
        //        {
        //            //Json轉為List
        //            var mcs = JsonConvert.DeserializeObject<ReceiveBotModel>(content);


        //            //粉絲團ID
        //            Dictionary<string, string> d = new Dictionary<string, string>();
        //            d.Add("780442165450140", "Sdfsdf");
        //            d.Add("464335860593655", "Khjkhjkhjkhjk");
        //            d.Add("1930924023903393", "XCCC");
        //            d.Add("1450151798399229", "Sdddd");
        //            d.Add("334712033639183", "Zxc");
        //            d.Add("1650338545038282", "Asdasd");

        //            //0:客戶，1:粉絲團
        //            string st = "0";
        //            //發件者ID是否為粉絲團
        //            string strName = string.Empty;
        //            string strID = string.Empty;
        //            foreach (var v in d)
        //            {
        //                if (mcs.entry[0].messaging[0].sender.id == v.Key)
        //                {
        //                    st = "1";
        //                    strName = v.Value;
        //                    strID = v.Key;
        //                    break;
        //                }
        //                else if (mcs.entry[0].messaging[0].recipient.id == v.Key)
        //                {
        //                    strName = v.Value;
        //                    strID = v.Key;
        //                    //var path = "https://www.hawooo.com/user/fbTest/fbBoardNew.aspx?id=" + strID;
        //                    //var request = (HttpWebRequest)WebRequest.Create(path);
        //                    break;
        //                }
        //            }














        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        if (!Directory.Exists(HttpContext.Current.Server.MapPath("fbtest")))
        //        {
        //            Directory.CreateDirectory(HttpContext.Current.Server.MapPath("fbtest"));
        //        }
        //        HttpServerUtility Server = HttpContext.Current.Server;
        //        string fileName = DateTime.Now.ToString("yyyyMMdd") + ".txt";
        //        FileInfo fi = new FileInfo(Server.MapPath("fbtest" + "/" + fileName));
        //        StreamWriter sw;
        //        if (fi.Exists)
        //        {
        //            sw = File.AppendText(Server.MapPath("fbtest" + "/" + fileName));
        //        }
        //        else
        //        {
        //            File.Create(Server.MapPath("fbtest") + "/" + fileName).Close();
        //            sw = File.AppendText(Server.MapPath("fbtest" + "/" + fileName));
        //        }
        //        //wex.Response.Headers.Get("www-authenticate").ToString()
        //        sw.WriteLine("*----------------------------------------------------------");
        //        sw.WriteLine("Time:" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "");
        //        sw.WriteLine("Request:" + content + "");
        //        sw.WriteLine("Message:" + ex.ToString() + "");
        //        sw.WriteLine("----------------------------------------------------------*");
        //        sw.Flush();
        //        sw.Close();
        //    }

        //}

    }








    //傳送的code
    //private RootObject SendTextToUser(string userId, string strText)
    //{
    //    int i = 0;
    //    if (!Directory.Exists(HttpContext.Current.Server.MapPath("fbtest")))
    //    {
    //        Directory.CreateDirectory(HttpContext.Current.Server.MapPath("fbtest"));
    //    }
    //    HttpServerUtility Server = HttpContext.Current.Server;
    //    string fileName = DateTime.Now.ToString("yyyyMMdd") + ".txt";
    //    FileInfo fi = new FileInfo(Server.MapPath("fbtest" + "/" + fileName));
    //    StreamWriter sw;
    //    if (fi.Exists)
    //    {
    //        sw = File.AppendText(Server.MapPath("fbtest" + "/" + fileName));
    //    }
    //    else
    //    {
    //        File.Create(Server.MapPath("fbtest") + "/" + fileName).Close();
    //        sw = File.AppendText(Server.MapPath("fbtest" + "/" + fileName));
    //    }

    //    var d = new SendModel();
    //    d.message = new message { text = strText };
    //    d.recipient = new recipient { id = userId };

    //    string result = string.Empty;
    //    var path = "https://graph.facebook.com/v2.6/me/messages?access_token=" + _FANPAGE_TOKEN;
    //    var request = (HttpWebRequest)WebRequest.Create(path);
    //    request.ContentType = "application/json";
    //    request.Method = "POST";
    //    RootObject r = new RootObject();
    //    try
    //    {
    //        using (var streamWriter = new StreamWriter(request.GetRequestStream()))
    //        {
    //            streamWriter.Write(JsonConvert.SerializeObject(d));
    //            streamWriter.Flush();
    //            streamWriter.Close();
    //        }

    //        using (var response = request.GetResponse() as HttpWebResponse)
    //        {
    //            if (request.HaveResponse && response != null)
    //            {
    //                using (var reader = new StreamReader(response.GetResponseStream()))
    //                {
    //                    result = reader.ReadToEnd();
    //                    r = JsonConvert.DeserializeObject<RootObject>(result);
    //                    i = 1;
    //                }
    //            }

    //        }

    //        sw.WriteLine("*----------------------------------------------------------");
    //        sw.WriteLine("Time:" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "");
    //        sw.WriteLine("Recipient:" + userId + "");
    //        sw.WriteLine("Message:" + strText + "");
    //        sw.WriteLine("Request:" + JsonConvert.SerializeObject(d) + "");
    //        sw.WriteLine("Response:" + result + "");
    //        sw.WriteLine("----------------------------------------------------------*");

    //    }
    //    catch (Exception exx)
    //    {
    //        sw.WriteLine("*----------------------------------------------------------");
    //        sw.WriteLine("Time:" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "");
    //        sw.WriteLine("Recipient:" + userId + "");
    //        sw.WriteLine("Message:" + strText + "");
    //        sw.WriteLine("Request:" + JsonConvert.SerializeObject(d) + "");
    //        sw.WriteLine("Response:" + exx.ToString() + "");
    //        sw.WriteLine("----------------------------------------------------------*");

    //    }
    //    finally
    //    {
    //        sw.Flush();
    //        sw.Close();
    //    }

    //    if (i == 1)
    //        return r;
    //    else
    //        return null;
    //}


    //傳送的code
    private void SendTextToUser(string userId, string userText)
    {
        var d = new SendModel();

        d.message = new message { text = userText };
        d.recipient = new recipient { id = userId };

        var path = "https://graph.facebook.com/v2.6/me/messages?access_token=" + _FANPAGE_TOKEN;
        var request = (HttpWebRequest)WebRequest.Create(path);
        //   request.ContentType = "application/x-www-form-urlencoded";
        request.ContentType = "application/json";
        request.Method = "POST";
        //request.ContentType = "application/json";
        using (var streamWriter = new StreamWriter(request.GetRequestStream()))
        {
            streamWriter.Write(JsonConvert.SerializeObject(d));
            streamWriter.Flush();
            streamWriter.Close();
        }

        using (var response = request.GetResponse() as HttpWebResponse)
        {
            if (request.HaveResponse && response != null)
            {
                using (var reader = new StreamReader(response.GetResponseStream()))
                {
                    string result = reader.ReadToEnd();
                    Response.Write(result);
                }
            }
        }


    }



    public class Sender
    {
        public string id { get; set; }
    }

    public class Recipient
    {
        public string id { get; set; }
    }

    public class Message
    {
        public string mid { get; set; }
        public int seq { get; set; }
        public string text { get; set; }
    }

    public class Messaging
    {
        public Sender sender { get; set; }
        public Recipient recipient { get; set; }
        public long timestamp { get; set; }
        public Message message { get; set; }
    }

    public class Entry
    {
        public string id { get; set; }
        public long time { get; set; }
        public List<Messaging> messaging { get; set; }
    }

    public class ReceiveBotModel
    {
        public string @object { get; set; }
        public List<Entry> entry { get; set; }
    }



    public class SendModel
    {
        public recipient recipient { get; set; }

        public message message { get; set; }
    }

    public class recipient
    {
        public string id { get; set; }
    }

    public class message
    {
        public string text { get; set; }
    }



    public class RootObject
    {
        public string recipient_id { get; set; }
        public string message_id { get; set; }
    }

    public class RootObject_user
    {
        public string first_name { get; set; }
        public string last_name { get; set; }
        public string profile_pic { get; set; }
        public string locale { get; set; }
        public int timezone { get; set; }
        public string gender { get; set; }
    }

}

