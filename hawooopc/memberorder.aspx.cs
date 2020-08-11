using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

public partial class user_memberorder : System.Web.UI.Page
{
    public List<ApiRes> _res = new List<ApiRes>();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["LG"] = (this.Master as user_user).LgType;
            if (Session["A01"] != null)
            {

                DataTable dt = CFacade.OrderFac.MemberOrderList(Convert.ToInt32(Session["A01"].ToString()));

                if (dt.Rows.Count > 0)
                {
                    //ApiReq ar = new ApiReq();
                    //ar.user_name = Session["A01"].ToString();
                    //ApiInfo api = new ApiInfo();
                    //api.url = "http://rvtest.hawoo.com/api/order/GetOrderPendingReview";
                    //api.token = "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjbGllbnRfaWQiOiJ0ZGlKc2s1enlqenZSbTgiLCJuYW1lIjoid1UzMW00NWlxVE5VM0RxIiwiaWQiOiI4MzM2MWZhYS00NWUxLTQ4Y2UtOWMzZi1hN2UxNzA3MGEwNjQiLCJuYmYiOjE1ODUxMjg0OTksImV4cCI6MTkwMDY2MTI5OSwiaWF0IjoxNTg1MTI4NDk5fQ.IywAucwVYHRpMOEgakt_Xb9kD3SINxO31jSm4gNf77c";
                    //api.json = JsonConvert.SerializeObject(ar);
                    //List<ApiRes> res = JsonConvert.DeserializeObject<List<ApiRes>>(PostWebData(api));


                    //if (res!=null && res.Count > 0)
                    //    litMsg.Text = res[0].order_no;

                    GetRvApi();
                    dt.DefaultView.RowFilter = "ORM02 NOT LIKE 'G%'";
                    DataTable dtNormal = dt.DefaultView.ToTable();
                    if (dtNormal.Rows.Count == 0)
                        part2.Visible = false;
                    else
                        part1.Visible = false;

                    dt.DefaultView.RowFilter = "ORM02 LIKE 'G%'";

                    rp_order_list.DataSource = dtNormal;
                    rp_order_list.DataBind();


                }
                else
                {
                    part2.Visible = false;
                }
            }
            else
            {
                Response.Redirect("shop.aspx");
            }
        }

    }
    protected void rp_order_list_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            ((Literal)e.Item.FindControl("lit_ORM12")).Text = CFacade.OrderFac.PaymentText(int.Parse(((Literal)e.Item.FindControl("lit_ORM12")).Text), (LangType)ViewState["LG"]);
            int ORM24 = Convert.ToInt32(((Literal)e.Item.FindControl("lit_ORM24")).Text);
            int ORM19 = Convert.ToInt32(((Literal)e.Item.FindControl("lit_ORM19")).Text);
            string stateTxt = CFacade.OrderFac.MOrderStateTxt(ORM24, (LangType)ViewState["LG"]);
            if (ORM24 >= 0)
            {
                ((Literal)e.Item.FindControl("lit_ORM24")).Text = stateTxt;
            }
            else
            {
                ((Literal)e.Item.FindControl("lit_ORM24")).Text = "<span style='color:#C00;font-weight:800'>" + stateTxt + "</span>";
            }
            ((Literal)e.Item.FindControl("lit_ORM19")).Text = CFacade.OrderFac.MOrderPayStateTxt(ORM19, (LangType)ViewState["LG"]);


            if (_res != null && _res.Any())
            {
                var query = from q in _res
                            where q.order_no == ((Literal)e.Item.FindControl("lit_ORM02")).Text
                            select q;
                if (query.Any())
                {
                    foreach (var v in query)
                    {
                        if (v.pending_review > 0)
                        {
                            ((Literal)e.Item.FindControl("litRvPendingCount")).Text = @"<span class='to-be-reviewed'>待評價(" + v.pending_review + ")</span>";
                        }
                    }
                }
            }

        }
    }

    public void GetRvApi()
    {
        try
        {
            ApiReq ar = new ApiReq();
            ar.user_name = Session["A01"].ToString();
            ApiInfo api = new ApiInfo();
            api.url = "http://rvtest.hawoo.com/api/order/GetOrderPendingReview";
            api.token = "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjbGllbnRfaWQiOiJ0ZGlKc2s1enlqenZSbTgiLCJuYW1lIjoid1UzMW00NWlxVE5VM0RxIiwiaWQiOiI4MzM2MWZhYS00NWUxLTQ4Y2UtOWMzZi1hN2UxNzA3MGEwNjQiLCJuYmYiOjE1ODUxMjg0OTksImV4cCI6MTkwMDY2MTI5OSwiaWF0IjoxNTg1MTI4NDk5fQ.IywAucwVYHRpMOEgakt_Xb9kD3SINxO31jSm4gNf77c";
            api.json = JsonConvert.SerializeObject(ar);
            _res = JsonConvert.DeserializeObject<List<ApiRes>>(PostWebData(api));
        }
        catch
        {

        }
    }
    public class ApiReq
    {
        public string user_name { get; set; }
    }

    public class ApiInfo
    {
        public string url { get; set; }
        public string token { get; set; }
        public string json { get; set; }
    }

    public class ApiRes
    {
        public string order_no { get; set; }
        public int pending_review { get; set; }
        public int total_review { get; set; }
    }


    public static string PostWebData(ApiInfo api)
    {
        string s = string.Empty;
        try
        {
            HttpWebRequest req = (HttpWebRequest)WebRequest.Create(api.url);
            req.Method = "POST";
            req.ContentType = "application/json";
            if (!api.token.Equals(""))
                req.Headers.Add(HttpRequestHeader.Authorization, api.token);
            using (var streamWriter = new StreamWriter(req.GetRequestStream()))
            {
                streamWriter.Write(api.json);
                streamWriter.Flush();
                streamWriter.Close();
            }

            using (WebResponse wr = req.GetResponse())
            {
                using (StreamReader myStreamReader = new StreamReader(wr.GetResponseStream()))
                {
                    string data = myStreamReader.ReadToEnd();
                    return data;
                }
            }
        }
        catch (WebException wex)
        {

            HttpWebResponse response = (HttpWebResponse)wex.Response;
            Stream stream = response.GetResponseStream();
            StreamReader sr = new StreamReader(stream);
            string result = sr.ReadToEnd();
            return result;

        }
    }

}