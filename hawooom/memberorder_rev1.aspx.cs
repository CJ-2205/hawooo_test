using hawooo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Newtonsoft.Json;
using System.IO;
using System.Net;

public partial class memberorder_rev1 : System.Web.UI.Page
{
    public List<ApiRes> _res = new List<ApiRes>();
    public Dictionary<string, int> _dicRvPending = new Dictionary<string, int>();
    //private DataTable orderdetail = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["LG"] = (this.Master as mobile).LgType;

            ((Literal)member_class.FindControl("lit_class_txt")).Text = "<span class='txtRsc' data-id='m010'>我的訂單</span>";
 
            if (Session["A01"] != null)
            {

                //bool b1 = false, b2 = false;
                string sqlTxt = @"SELECT ORDERM.ORM01,ORM02,ORM03,ORM08,ORM12,ORM19,ORM24,ORM25,ORD07,ORD02,ORD11,ORD05,ORD06,ORD04 FROM ORDERM WITH(NOLOCK) 
           INNER JOIN ORDERD ON ORDERD.ORM01 = ORDERM.ORM01
            WHERE ORM23=@ORM23 ORDER BY ORM03 DESC";
                //"SELECT ORM01,ORM02,ORM03,ORM08,ORM12,ORM19,ORM24,ORM25 FROM ORDERM WITH(NOLOCK) WHERE ORM23=@ORM23 ORDER BY ORM03 DESC";
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = sqlTxt;
                cmd.Parameters.Add(SafeSQL.CreateInputParam("ORM23", SqlDbType.Int, int.Parse(Session["A01"].ToString())));
                DataTable dt = SqlDbmanager.queryBySql(cmd);
                //DataTable orderdetail = SqlDbmanager.queryBySql(cmd);
                // DataTable dt = CFacade.OrderFac.MemberOrderList(Convert.ToInt32(Session["A01"].ToString()));


                if (dt.Rows.Count > 0)
                {
                    GetRvApi();
                    string filter = "ORM02 LIKE 'S%' ";
                    filter += "OR ORM02 LIKE 'L%' ";
                    dt.DefaultView.RowFilter = filter;
                    DataTable dtNormal = dt.DefaultView.ToTable("orm02",true, "ORM02", "ORM03", "ORM08","ORM12","ORM19","ORM24","ORM25");
                    BindDtInfo(dtNormal);
                }
                ChgTabs();
                

            }
            else
            {
                Response.Redirect("login.aspx?rurl=memberorder.aspx");
            }
        }
    }

    private void ChgTabs()
    {
        if (Request.QueryString["t"] != null)
        {
            int tabId = int.Parse(Request.QueryString["t"].ToString());
            ScriptManager.RegisterStartupScript(Page, typeof(Page), Guid.NewGuid().ToString(), "ChangTab(" + tabId + ");", true);
        }

    }
    private void BindDtInfo(DataTable dt)
    {
        DataTable dt1 = dt.Clone(); //待出貨

        DataTable dt2 = dt.Clone(); //尚未付款

        DataTable dt3 = dt.Clone(); //已付款&已出貨

        DataTable dt4 = dt.Clone(); //已取消

        DataTable dt5 = dt.Clone();//待評價

        DataTable dt6 = dt.Clone();//已評價


        foreach (DataRow dr in dt.Rows)
        {
            DataRow NDR;
            int payState = Convert.ToInt32(dr["ORM19"].ToString());
            int orderState = Convert.ToInt32(dr["ORM24"].ToString());

            if (_res != null && _res.Any())
            {
                var query = from q in _res
                            where q.order_no == dr["ORM02"].ToString()
                            select q;
                if (query.Any())
                {
                    foreach (var v in query)
                    {
                        //待評價
                        if (v.pending_review > 0)
                        {
                            NDR = dt5.NewRow();
                            NDR.ItemArray = dr.ItemArray.Clone() as object[];
                            dt5.Rows.Add(NDR);
                            _dicRvPending.Add(v.order_no, v.pending_review);
                        }
                        //已評價
                        else
                        {
                            NDR = dt6.NewRow();
                            NDR.ItemArray = dr.ItemArray.Clone() as object[];
                            dt6.Rows.Add(NDR);
                        }
                    }
                }
            }

            //已付款&已出貨
            if (payState == 1 && orderState >= 3)
            {
                NDR = dt3.NewRow();
                NDR.ItemArray = dr.ItemArray.Clone() as object[];
                dt3.Rows.Add(NDR);
            }
            //已取消
            if (orderState < 0)
            {
                NDR = dt4.NewRow();
                NDR.ItemArray = dr.ItemArray.Clone() as object[];
                dt4.Rows.Add(NDR);
            }
            //待出貨
            if (payState == 1 && orderState < 3)
            {
                NDR = dt1.NewRow();
                NDR.ItemArray = dr.ItemArray.Clone() as object[];
                dt1.Rows.Add(NDR);
            }
            //向未付款
            if (payState <= 0)
            {
                NDR = dt2.NewRow();
                NDR.ItemArray = dr.ItemArray.Clone() as object[];
                dt2.Rows.Add(NDR);
            }
        }
        //待出貨
        rp_order_list.DataSource = dt1;
        rp_order_list.DataBind();
        if (dt1.Rows.Count == 0)
            lit_dt1.Text = NoOrderStr();
        //viola will add
        //尚未付款
        rp_order_list2.DataSource = dt2;
        rp_order_list2.DataBind();
        if (dt2.Rows.Count == 0)
            lit_dt2.Text = NoOrderStr();
        //已付款&已出貨
        rp_order_list3.DataSource = dt3;
        rp_order_list3.DataBind();
        if (dt3.Rows.Count == 0)
            lit_dt3.Text = NoOrderStr();
        //已取消
        rp_order_list4.DataSource = dt4;
        rp_order_list4.DataBind();
        if (dt4.Rows.Count == 0)
            lit_dt4.Text = NoOrderStr();
        //待評價
        rp_rv_pending.DataSource = dt5;
        rp_rv_pending.DataBind();
        if (dt5.Rows.Count == 0)
            lit_rv_pending.Text = NoOrderStr();
        //已評價
        rp_rv_finish.DataSource = dt6;
        rp_rv_finish.DataBind();
        if (dt6.Rows.Count == 0)
        lit_rv_finish.Text = NoOrderStr();

       
    }
    private string NoOrderStr()
    {
        return "<span>No orders..</span>";
    }
    protected void rp_order_list_ItemDataBound(object sender, RepeaterItemEventArgs e )
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem )
        {
            LangType lgType = (LangType)ViewState["LG"];
            ((Literal)e.Item.FindControl("lit_ORM12")).Text = CFacade.OrderFac.PaymentText(Convert.ToInt32(((Literal)e.Item.FindControl("lit_ORM12")).Text), lgType);
            int ORM24 = Convert.ToInt32(((Literal)e.Item.FindControl("lit_ORM24")).Text);
           // int ORM19 = Convert.ToInt32(((Literal)e.Item.FindControl("lit_ORM19")).Text);
            if (ORM24 >= 0)
            {
                ((Literal)e.Item.FindControl("lit_ORM24")).Text = CFacade.OrderFac.MOrderStateTxt(ORM24, lgType);
            }
            else
            {
                ((Literal)e.Item.FindControl("lit_ORM24")).Text = "<span style='color:#999999;font-weight:800'>" + CFacade.OrderFac.MOrderStateTxt(ORM24, lgType) + "</span>";
            }

            //if (string.IsNullOrEmpty(((Literal)e.Item.FindControl("lit_ORM25")).Text))
            //{
            //    ((Literal)e.Item.FindControl("lit_ORM25")).Text = LangClass.GetMsgInfo("M053", lgType);
            //}

            //((Literal)e.Item.FindControl("lit_ORM19")).Text = CFacade.OrderFac.MOrderPayStateTxt(ORM19, lgType);
            //string ORM02 = ((Literal)e.Item.FindControl("lit_ORM02")).Text;
            //DataTable dt = GetOrderDetail(string ORM02);
            //DataTable detailDt = GetOrderDetail(dt.Rows[0]["ORM02"].ToString());
 
            //Repeater rp_cart_list = (Repeater)e.Item.FindControl("rp_cart_list");
            //rp_cart_list.DataSource = detailDt;
            //rp_cart_list.DataBind();

        }
    }
    protected void rp_rv_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            LangType lgType = (LangType)ViewState["LG"];
            ((Literal)e.Item.FindControl("lit_ORM12")).Text = CFacade.OrderFac.PaymentText(Convert.ToInt32(((Literal)e.Item.FindControl("lit_ORM12")).Text), lgType);
            int ORM19 = Convert.ToInt32(((Literal)e.Item.FindControl("lit_ORM19")).Text);


            string ORM02 = ((Literal)e.Item.FindControl("lit_ORM02")).Text;

            if (_dicRvPending.ContainsKey(ORM02))
            {
                ((Literal)e.Item.FindControl("lit_ORM24")).Text = "待評價(" + _dicRvPending[ORM02] + ")";
            }
            else
            {
                ((Literal)e.Item.FindControl("lit_ORM24")).Text = "<span style='color:#999999;font-weight:800'>已評價</span>";
            }


            if (string.IsNullOrEmpty(((Literal)e.Item.FindControl("lit_ORM25")).Text))
            {
                ((Literal)e.Item.FindControl("lit_ORM25")).Text = LangClass.GetMsgInfo("M053", lgType);
            }

            ((Literal)e.Item.FindControl("lit_ORM19")).Text = CFacade.OrderFac.MOrderPayStateTxt(ORM19, lgType);
            ((Literal)e.Item.FindControl("lit_ORD02")).Text = CFacade.OrderFac.MOrderPayStateTxt(ORM19, lgType);


        }
    }

    #region 評論區塊
    public void GetRvApi()
    {
        try
        {
            ApiReq ar = new ApiReq();
            ar.user_name = Session["A01"].ToString();
            ApiInfo api = new ApiInfo();
            api.url = "https://review.hawooo.app/api/order/GetOrderPendingReview";
            api.token = "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjbGllbnRfaWQiOiJ0ZGlKc2s1enlqenZSbTgiLCJuYW1lIjoid1UzMW00NWlxVE5VM0RxIiwiaWQiOiI4MzM2MWZhYS00NWUxLTQ4Y2UtOWMzZi1hN2UxNzA3MGEwNjQiLCJuYmYiOjE1ODE5Mjg4NDQsImV4cCI6MTg5NzU0ODA0NCwiaWF0IjoxNTgxOTI4ODQ0fQ.EWMznVqndUN8NJjA28_ZYwsClJLgSCmWH0OQeJ9VXZQ";
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

    //private DataTable GetOrderDetail(string ORM02)
    //{
    //    string strSql = @"SELECT ORDERM.ORM01,ORM02,ORM03,ORM08,ORM12,ORM19,ORM24,ORM25,ORD07,ORD02,ORD11,ORD05,ORD06,ORD04 FROM ORDERM WITH(NOLOCK) 
    //       INNER JOIN ORDERD ON ORDERD.ORM01 = ORDERM.ORM01
    //        WHERE ORM23=@ORM23 ORDER BY ORM03 DESC";
    //    SqlCommand cmd = new SqlCommand();
    //    cmd.CommandText = strSql;
    //    cmd.Parameters.Add(SafeSQL.CreateInputParam("ORM02", SqlDbType.VarChar, ORM02));
    //    return SqlDbmanager.queryBySql(cmd);
    //}
    #endregion

}