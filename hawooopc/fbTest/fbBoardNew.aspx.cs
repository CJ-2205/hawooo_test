//using Microsoft.AspNet.SignalR;
using Newtonsoft.Json;
//using Owin;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using webcs;
using hawooo;
using System.Threading;

public partial class fb_fbBoardNew : System.Web.UI.Page
{
    //留言數
    public int count { get; set; }

    //得到粉絲團底下貼文資訊的Json架構
    public class Datum
    {
        public string created_time { get; set; }
        public string message { get; set; }
        public string id { get; set; }
    }

    public class Cursors
    {
        public string before { get; set; }
        public string after { get; set; }
    }

    public class Paging
    {
        public Cursors cursors { get; set; }
    }

    public class RootObject
    {
        public List<Datum> data { get; set; }
        public Paging paging { get; set; }
    }

    //得到貼文底下留言資訊的Json架構
    public class From
    {
        public string name { get; set; }
        public string id { get; set; }
    }

    public class Datum2
    {
        public string created_time { get; set; }
        public From from { get; set; }
        public string message { get; set; }
        public string id { get; set; }
    }

    public class Cursors2
    {
        public string before { get; set; }
        public string after { get; set; }
    }

    public class Paging2
    {
        public Cursors2 cursors { get; set; }
    }

    public class RootObject2
    {
        public List<Datum2> data { get; set; }
        public Paging2 paging { get; set; }
    }

    public class getToken
    {
        public string access_token { get; set; }
        public string id { get; set; }
    }

    public class RootObject_pm
    {
        public string recipient_id { get; set; }
        public string message_id { get; set; }
    }

    //轉換長期Token教學網址:https://developers.facebook.com/docs/facebook-login/access-tokens/expiration-and-extension

    //粉絲團Tolen
    //Access Token並不是永久存在預設保留時間是2小時
    public string _strToken = string.Empty;

    //粉絲團ID
    public string _strID = string.Empty;

    //private string strCon = @"Data Source=localhost;Initial Catalog=FB;User ID=howard;Password=dqtmwxatvnmm";
    private static string strCon = @"Data Source=WIN-6EMB9NE7GIP;Initial Catalog=HAWOOO_CS;User ID=hawooocs;Password=@54865706999"; //線上資料庫

    protected void Page_Load(object sender, EventArgs e)
    {
        ////長期TOKEN         
        //strToken = Regex.Replace(ltTk.Text, @"<[^>]*>", string.Empty);
        //strToken = "EAACEdEose0cBADqxt55QHYCqUpN4cRN4XyCOvieEcslZAQMAgyUTvcrhX8koZC9lZA9GcVvzlA7b3je2hqia4JZC0bXBr74BBAyJjldHPyZCSZCGhnUe4pSrGg3miJbVEUEjHRDmFomq4YAufWZBsvgN1lwgV0l8WJ7XDji9Dtw0WRZBzbvw3cWXtwioXC5PbKUZD";
        //strToken = string.Empty;
        //if (Request.QueryString["tk"] != null)
        //    strToken = Request.QueryString["tk"].ToString();
        //else
        //    strToken = txtToken.Text.Trim();

        if (ViewState["strToken"] != null)
            _strToken = ViewState["strToken"].ToString();

    }
    /// <summary>
    /// 取得網頁內容方法
    /// </summary>
    /// <param name="Url"></param>
    /// <returns></returns>
    private string GetWebData(string Url)
    {
        try
        {
            HttpWebRequest req = (HttpWebRequest)WebRequest.Create(Url);
            req.Method = "GET";
            req.ContentType = "application/json";
            using (WebResponse wr = req.GetResponse())
            {
                using (StreamReader myStreamReader = new StreamReader(wr.GetResponseStream()))
                {
                    string data = myStreamReader.ReadToEnd();
                    return data;
                }
            }
        }
        catch (Exception ex)
        {
            return null;
        }
    }

    public enum method { 回覆, 私覆 };

    /// <summary>
    /// 取得網頁內容方法
    /// </summary>
    /// <param name="Url"></param>
    /// <returns></returns>
    private Tuple<bool, string> PostWebData(method md, string strID, string strText)
    {
        string s = string.Empty;

        switch (md)
        {
            case method.回覆:
                {
                    s = "comments";
                    break;
                }
            case method.私覆:
                {
                    s = "private_replies";
                    break;
                }
        }

        try
        {
            HttpWebRequest req = (HttpWebRequest)WebRequest.Create("https://graph.facebook.com/v2.10/" + strID + "/" + s + "?access_token=" + _strToken);
            req.Method = "POST";
            req.ContentType = "application/json";
            req.Headers.Add("access_token:" + _strToken);
            string ro = @"{'message':'" + strText + "'}";
            using (var streamWriter = new StreamWriter(req.GetRequestStream()))
            {
                streamWriter.Write(ro);
                streamWriter.Flush();
                streamWriter.Close();
            }

            using (WebResponse wr = req.GetResponse())
            {
                using (StreamReader myStreamReader = new StreamReader(wr.GetResponseStream()))
                {
                    string data = myStreamReader.ReadToEnd();
                    return new Tuple<bool, string>(true, data);
                }
            }
        }
        catch (WebException wex)
        {
            return new Tuple<bool, string>(false, wex.Response.Headers.Get("www-authenticate").ToString());
        }
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

    protected void rp1_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            DataTable dt2 = _dt(((HiddenField)e.Item.FindControl("ltBID")).Value);
            DataView dv = dt2.DefaultView;
            dv.Sort = "create_time ASC";
            ((Repeater)e.Item.FindControl("rp2")).DataSource = dv;
            ((Repeater)e.Item.FindControl("rp2")).DataBind();
            count += dt2.Rows.Count;
        }
    }



    protected void rp2_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "replyP" || e.CommandName == "replyB")
        {
            if (((TextBox)e.Item.FindControl("txtRp")).Text == "")
                ((TextBox)e.Item.FindControl("txtRp")).Visible = true;
            else
            {
                string id = e.CommandArgument.ToString();
                string str = ((TextBox)e.Item.FindControl("txtRp")).Text;

                Tuple<bool, string> t = null;

                if (e.CommandName == "replyP")
                    t = PostWebData(method.私覆, id, str);
                else if (e.CommandName == "replyB")
                    t = PostWebData(method.回覆, id, str);


                if (t.Item1 == false)
                    ((Literal)e.Item.FindControl("ltSt")).Text = "狀態:" + t.Item1 + "，" + t.Item2;
                else
                {
                    ((Literal)e.Item.FindControl("ltSt")).Text = "狀態:" + t.Item1;
                    DataTable dt2 = _dt(((HiddenField)e.Item.FindControl("hfMID")).Value);
                    DataView dv = dt2.DefaultView;
                    dv.Sort = "create_time ASC";
                    ((Repeater)e.Item.FindControl("rp3")).DataSource = dv;
                    ((Repeater)e.Item.FindControl("rp3")).DataBind();
                }
            }
        }
    }

    protected void btnToken_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;

        if (txtToken.Text != "")
            _strToken = txtToken.Text.Trim();
        else if (hfTk.Value != null)
            _strToken = hfTk.Value;

        _strID = ddl_ID.SelectedValue;

        string strToken2 = GetWebData("https://graph.facebook.com/" + _strID + "?fields=access_token&access_token=" + _strToken);
        if (strToken2 != null)
        {
            var token2 = JsonConvert.DeserializeObject<getToken>(strToken2);
            _strToken = token2.access_token;
            ViewState["strToken"] = _strToken;
            //取得粉絲團全部的貼文資訊
            //string s = GetWebData("https://graph.facebook.com/v2.9/" + _strID + "/posts?limit=100&access_token=" + _strToken);
            string s = GetWebData("https://graph.facebook.com/v2.9/" + _strID + "/posts?access_token=" + _strToken);
            if (s != null)
            {
                var mcs = JsonConvert.DeserializeObject<RootObject>(s);
                //建立一個dt展示貼文資訊
                DataTable dt = new DataTable();
                dt.Columns.Add("create_time");
                dt.Columns.Add("message");
                dt.Columns.Add("BID");

                //挑data資料
                foreach (var v in mcs.data)
                {
                    DataRow dr = dt.NewRow();
                    dr["create_time"] = v.created_time;
                    dr["message"] = v.message;
                    dr["BID"] = v.id;
                    dt.Rows.Add(dr);
                }

                rp1.DataSource = dt;
                rp1.DataBind();
                ltCount.Text = count.ToString();


                //DataTable dt2 = SqlDbmanager.queryBySql("SELECT DISTINCT FC02,(SELECT TOP 1 FC06 FROM HAWOOO_CS.dbo.FBCHAT AS B WHERE A.FC02=B.FC02) AS FC06,(SELECT TOP 1 FC07 FROM HAWOOO_CS.dbo.FBCHAT AS C WHERE A.FC02=C.FC02) AS FC07,(SELECT TOP 1 FC08 FROM HAWOOO_CS.dbo.FBCHAT AS D WHERE A.FC02=D.FC02) AS FC08 FROM HAWOOO_CS.dbo.FBCHAT AS A WHERE A.FC02!='" + _strID + "' AND FC09='" + _strID + "'", strCon);
                DataTable dt2 = SqlDbmanager.queryBySql("SELECT DISTINCT FC02,(SELECT TOP 1 FC06 FROM FBCHAT AS B WHERE A.FC02=B.FC02) AS FC06,(SELECT TOP 1 FC07 FROM FBCHAT AS C WHERE A.FC02=C.FC02) AS FC07,(SELECT TOP 1 FC08 FROM FBCHAT AS D WHERE A.FC02=D.FC02) AS FC08,(SELECT TOP 1 FC05 FROM FBCHAT AS E WHERE A.FC02=E.FC02 AND FC04=0 ORDER BY FC06 DESC ) AS FC05 FROM FBCHAT AS A WHERE A.FC02!='" + _strID + "' AND FC09='" + _strID + "'", strCon);

                DataTable dt3 = new DataTable();
                dt3.Columns.Add("FC02");
                dt3.Columns.Add("FC05");
                dt3.Columns.Add("FC06");
                dt3.Columns.Add("FC07");
                dt3.Columns.Add("FC08");
                dt3.Columns.Add("FC10");
                dt3.Columns.Add("NAME");
                dt3.Columns.Add("PIC");
            


                foreach (DataRow dr in dt2.Rows)
                {
                    DataRow dr2 = dt3.NewRow();
                    //客戶資料
                    string result = string.Empty;
                    var path = "https://graph.facebook.com/v2.6/" + dr["FC02"].ToString() + "?fields=first_name,last_name,profile_pic,locale,timezone,gender&access_token=" + _strToken;
                    var request = (HttpWebRequest)WebRequest.Create(path);
                    request.Method = "GET";
                    RootObject_user r = new RootObject_user();
                    using (var response = request.GetResponse() as HttpWebResponse)
                    {
                        if (request.HaveResponse && response != null)
                        {
                            using (var reader = new StreamReader(response.GetResponseStream()))
                            {
                                result = reader.ReadToEnd();
                                r = JsonConvert.DeserializeObject<RootObject_user>(result);
                            }
                        }
                    }

                    dr2["FC02"] = dr["FC02"].ToString();
                    dr2["FC05"] = dr["FC05"].ToString();
                    dr2["FC06"] = dr["FC06"].ToString();
                    dr2["FC07"] = dr["FC07"].ToString();
                    dr2["FC08"] = dr["FC08"].ToString();
                    dr2["NAME"] = r.last_name + r.first_name;
                    dr2["PIC"] = r.profile_pic;

                    dt3.Rows.Add(dr2);
                }

                rp4.DataSource = dt3;
                rp4.DataBind();

            }
        }
    }



    protected void rp2_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            DataTable dt2 = _dt(((HiddenField)e.Item.FindControl("hfMID")).Value);
            DataView dv = dt2.DefaultView;
            dv.Sort = "create_time ASC";
            ((Repeater)e.Item.FindControl("rp3")).DataSource = dv;
            ((Repeater)e.Item.FindControl("rp3")).DataBind();
        }
    }

    public DataTable _dt(string strID)
    {
        DataTable dt2 = new DataTable();
        dt2.Columns.Add("MID");
        dt2.Columns.Add("create_time");
        dt2.Columns.Add("from_name");
        dt2.Columns.Add("from_id");
        dt2.Columns.Add("message");
        dt2.Columns.Add("BID");

        //取得貼文資訊底下全部的留言資訊
        string s2 = GetWebData("https://graph.facebook.com/v2.8/" + strID + "/comments?access_token=" + _strToken);
        var mcs2 = JsonConvert.DeserializeObject<RootObject2>(s2);
        //挑data資料
        foreach (var v in mcs2.data)
        {
            DataRow dr2 = dt2.NewRow();
            dr2["BID"] = strID;
            dr2["create_time"] = v.created_time;
            dr2["message"] = v.message;
            dr2["MID"] = v.id;
            dr2["from_id"] = v.from.id;
            dr2["from_name"] = v.from.name;
            dt2.Rows.Add(dr2);
        }

        return dt2;
    }

    protected void rp4_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "replyM")
        {
            string id = e.CommandArgument.ToString();
            DataTable dt = SqlDbmanager.queryBySql("SELECT * FROM FBCHAT WHERE FC02='" + id + "' OR FC03='" + id + "'", strCon);
            DataView dv = dt.DefaultView;
            dv.Sort = "FC06 ASC";
            ((Repeater)e.Item.FindControl("rp5")).DataSource = dv;
            ((Repeater)e.Item.FindControl("rp5")).DataBind();
        }
        else if (e.CommandName == "replyM2")
        {
            string id = e.CommandArgument.ToString();
            string str = ((TextBox)e.Item.FindControl("txtInput")).Text;
            RootObject_pm r = SendTextToUser(id, str);
            Thread.Sleep(1000);
            DataTable dt = SqlDbmanager.queryBySql("SELECT * FROM FBCHAT WHERE FC02='" + id + "' OR FC03='" + id + "'", strCon);
            DataView dv = dt.DefaultView;
            dv.Sort = "FC06 ASC";
            ((Repeater)e.Item.FindControl("rp5")).DataSource = dv;
            ((Repeater)e.Item.FindControl("rp5")).DataBind();
        }

    }


    //傳送的code
    private RootObject_pm SendTextToUser(string userId, string strText)
    {
        bool b = false;

        var d = new SendModel();
        d.message = new message { text = strText };
        d.recipient = new recipient { id = userId };

        string result = string.Empty;
        var path = "https://graph.facebook.com/v2.6/me/messages?access_token=" + _strToken;
        var request = (HttpWebRequest)WebRequest.Create(path);
        request.ContentType = "application/json";
        request.Method = "POST";
        RootObject_pm r = new RootObject_pm();

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
                    result = reader.ReadToEnd();
                    r = JsonConvert.DeserializeObject<RootObject_pm>(result);
                    b = true;
                }
            }
        }

        if (b == true)
            return r;
        else
            return null;
    }



    public class St
    {
        public static string strSt(string s)
        {
            string result = string.Empty;
            //switch (s)
            //{
            //    case "1":
            //        result = "To";
            //        break;
            //    case "0":
            //        result = "From";
            //        break;
            //}
            switch (s)
            {
                case "1":
                    result = "me";
                    break;
                case "0":
                    result = "him";
                    break;
            }
            return result;
        }
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