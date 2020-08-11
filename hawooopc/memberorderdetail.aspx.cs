using hawooo;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_memberorderdetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_PreLoad(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Guid g;
            if (Request.QueryString["oid"] != null)
            {
                if (Guid.TryParse(Request.QueryString["oid"], out g))
                {
                    ViewState["oid"] = Request.QueryString["oid"].ToString();
                    bindOrder(Request.QueryString["oid"].ToString());
                    //ScriptManager.RegisterStartupScript(Page, GetType(), "molpay", "molpayUrl('"+ Request.QueryString["oid"].ToString() + "')", true);
                }
                else
                {
                    Response.Redirect("memberorder.aspx");
                }
            }
            else
            {
                Response.Redirect("memberorder.aspx");
            }
        }
    }

    private DataTable MemberOrderDetail(string oid, int userId)
    {
        string strSql = "SELECT * FROM ORDERM WITH(NOLOCK) " +
                        "INNER JOIN ORDERD WITH(NOLOCK) ON ORDERM.ORM01=ORDERD.ORM01 " +
                        "WHERE ORDERM.ORM01=@ORM01 AND ORDERM.ORM23=@ORM23";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = strSql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("ORM01", SqlDbType.VarChar, oid));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("ORM23", SqlDbType.Int, userId));
        return SqlDbmanager.queryBySql(cmd);
    }
    private DataTable GetOrderGift(string ORM01)
    {
        string strSql = "SELECT * FROM ORDERE WITH(NOLOCK) WHERE ORM01=@ORM01";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = strSql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("ORM01", SqlDbType.UniqueIdentifier, ORM01));
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }

    private void bindOrder(string oid)
    {
        ATMPANEL.Visible = false;
        if (Session["A01"] != null)
        {
            DataTable dt = MemberOrderDetail(oid, Convert.ToInt32(Session["A01"].ToString()));
            if (dt.Rows.Count > 0)
            {
                hf_ORM01.Value = dt.Rows[0]["ORM01"].ToString();
                lit_ORM02.Text = dt.Rows[0]["ORM02"].ToString();
                lit_ORM03.Text = Convert.ToDateTime(dt.Rows[0]["ORM03"].ToString()).ToString("yyyy-MM-dd HH:mm:ss");
                lit_ORM06.Text = dt.Rows[0]["ORM06"].ToString();
                lit_ORM08.Text = dt.Rows[0]["ORM08"].ToString();
                lit_ORM10.Text = dt.Rows[0]["ORM10"].ToString();
                lit_ORM11.Text = dt.Rows[0]["ORM11"].ToString();
                lit_ORM12.Text = CFacade.OrderFac.PaymentText(Convert.ToInt32(dt.Rows[0]["ORM12"].ToString()));
                switch (dt.Rows[0]["ORM12"].ToString())
                {
                    case "0":
                        {

                            ATMPANEL.Visible = true;
                            txt_ORM26.Text = dt.Rows[0]["ORM26"].ToString();
                            txt_ORM27.Text = dt.Rows[0]["ORM27"].ToString();
                            txt_ORM28.Text = dt.Rows[0]["ORM28"].ToString();
                            if (dt.Rows[0]["ORM19"].ToString().Equals("1"))
                            {
                                btn_Send.Visible = false;
                            }
                            break;
                        }
                    case "1":
                        {
                            ATMPANEL.Visible = false;
                            break;
                        }
                }
                lit_ORM19.Text = CFacade.OrderFac.MOrderPayStateTxt(Convert.ToInt32(dt.Rows[0]["ORM19"].ToString()));
                string _ORM19 = dt.Rows[0]["ORM19"].ToString();
                string _ORM12 = dt.Rows[0]["ORM12"].ToString();
                string _ORM24 = dt.Rows[0]["ORM24"].ToString();
                if (_ORM12.Equals("1"))
                {
                    if ((_ORM19.Equals("0") || _ORM19.Equals("-1")) && !_ORM24.Equals("-1"))
                    {
                        lit_Re_Molpay.Text = "<a style=\"font-size: 20px; color: #ff0000\" href=\"../molpay/transToMolPay.aspx?oid=" + dt.Rows[0]["ORM02"].ToString() + "\">[重新付款]</a>";
                    }
                }
                lit_ORM13.Text = dt.Rows[0]["ORM13"].ToString();
                lit_ORM14.Text = dt.Rows[0]["ORM14"].ToString();
                lit_ORM15.Text = dt.Rows[0]["ORM15"].ToString();
                lit_ORM16.Text = dt.Rows[0]["ORM16"].ToString() + " " + dt.Rows[0]["ORM38"].ToString() + " " + AREA.GetAREAState2Str(dt.Rows[0]["ORM37"].ToString()) + " " + dt.Rows[0]["ORM35"].ToString();
                lit_ORM17.Text = dt.Rows[0]["ORM17"].ToString();
                lit_ORM18.Text = dt.Rows[0]["ORM18"].ToString();
                //lit_ORM20.Text = dt.Rows[0]["ORM20"].ToString();
                lit_ORM24.Text = CFacade.OrderFac.MOrderStateTxt(Convert.ToInt32(dt.Rows[0]["ORM24"].ToString()));


                //lit_ORM25.Text = "<a href='shiptracking.aspx?track=" + dt.Rows[0]["ORM25"].ToString() + "'>" + dt.Rows[0]["ORM25"].ToString() + "</a>";
                if (string.IsNullOrEmpty(dt.Rows[0]["ORM66"].ToString()))
                    lit_ORM66.Text = "0.00";
                else
                    lit_ORM66.Text = dt.Rows[0]["ORM66"].ToString();

                lit_Sum.Text = dt.Rows[0]["ORM05"].ToString();

                if (!_ORM19.Equals("0") || _ORM24.Equals("-1")) //不為尚未付款或取消訂單,移除付款按鈕
                //if (!_ORM12.Equals("1"))
                {
                    ScriptManager.RegisterStartupScript(Page, GetType(), "pay", "PayFunction('" + lit_ORM02.Text + "',1);", true);
                }
                else if (!_ORM12.Equals("1")) //付款方式不為Molpay,移除Molpay付款按紐
                {
                    ScriptManager.RegisterStartupScript(Page, GetType(), "pay", "PayFunction('" + lit_ORM02.Text + "',2);", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(Page, GetType(), "pay", "PayFunction('" + lit_ORM02.Text + "',3);", true);
                }
                //lit_ORM29.Text = dt.Rows[0]["ORM29"].ToString();
                //lit_ORM30.Text = dt.Rows[0]["ORM30"].ToString();
                //lit_ORM31.Text = dt.Rows[0]["ORM31"].ToString();
                //lit_ORM32.Text = dt.Rows[0]["ORM32"].ToString();
                //lit_ORM33.Text = dt.Rows[0]["ORM33"].ToString();
                rp_detail_list.DataSource = dt;
                rp_detail_list.DataBind();
                ORDERCFactory odrCFAC = new ORDERCFactory();
                DataTable commentDT = odrCFAC.GetORDC(dt.Rows[0]["ORM01"].ToString());

                //foreach (RepeaterItem ri in rp_detail_list.Items)
                //{
                //    if (Convert.ToInt32(dt.Rows[0]["ORM24"].ToString()) == 2)
                //    {
                //        DataRow[] sDR = commentDT.Select("ORD01='" + ((HiddenField)ri.FindControl("hf_ORD01")).Value + "'");
                //        if (sDR.Length > 0)
                //        {
                //            ((LinkButton)ri.FindControl("lnk1")).Visible = false;
                //        }
                //        else
                //        {
                //            ((LinkButton)ri.FindControl("lnk1")).Visible = true;
                //        }
                //    }
                //    else
                //    {
                //        ((LinkButton)ri.FindControl("lnk1")).Visible = false;
                //    }
                //}

                //贈品清單
                DataTable giftDT = GetOrderGift(dt.Rows[0]["ORM01"].ToString());
                rp_gift_list.DataSource = giftDT;
                rp_gift_list.DataBind();
                if (giftDT.Rows.Count > 0)
                {
                    tb2.Visible = true;
                }
                else
                {
                    tb2.Visible = false;
                }

                Goodmaji gm = new Goodmaji();
                gm.ShipRepeater = rp_ship_list;
                bool bindShip = gm.GetShipInfo(dt.Rows[0]["ORM01"].ToString());
                if (!bindShip)
                {
                    shipDetail.Visible = false;
                }

                if (BindCommentFilter(dt.Rows[0]["ORM31"].ToString(), dt.Rows[0]["ORM19"].ToString(), dt.Rows[0]["ORM24"].ToString()))
                {
                    BindComment(dt.Rows[0]["ORM02"].ToString(), Session["A01"].ToString(), Session["A02"].ToString());
                }


            }
            else
            {
                Response.Redirect("memberorder.aspx");
            }
        }
        else
        {
            Response.Redirect("index.aspx");
        }
    }

    /// <summary>
    /// 評論限制
    /// </summary>
    /// <param name="outShipDate">出貨時間</param>
    /// <param name="payState">付款狀態</param>
    /// <param name="orderState">訂單狀態</param>
    /// <returns></returns>
    public bool BindCommentFilter(string outShipDate, string payState, string orderState)
    {
        bool result = false;
        string[] CommentOrderStatus = { "3", "4" }; //訂單狀態:出貨中、訂單完成

        if (FieldCheck.isDateTime(outShipDate))
        {
            TimeSpan ts = DateTime.Now - Convert.ToDateTime(outShipDate);
            if (ts.Days <= 365) //出貨時間距離現在時間<30天
            {
                if (payState.Equals("1") && CommentOrderStatus.Contains(orderState))//付款完成並且符合限制訂單狀態
                    result = true;
            }
        }
        return result;
    }
    /// <summary>
    /// 綁定評論
    /// </summary>
    /// <param name="orderNo">訂單編號</param>
    /// <param name="userId">會員編號</param>
    public void BindComment(string orderNo, string userId, string userName)
    {
        string token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjbGllbnRfaWQiOiJ0ZGlKc2s1enlqenZSbTgiLCJuYW1lIjoid1UzMW00NWlxVE5VM0RxIiwiaWQiOiI4MzM2MWZhYS00NWUxLTQ4Y2UtOWMzZi1hN2UxNzA3MGEwNjQiLCJuYmYiOjE1ODUxMjg0OTksImV4cCI6MTkwMDY2MTI5OSwiaWF0IjoxNTg1MTI4NDk5fQ.IywAucwVYHRpMOEgakt_Xb9kD3SINxO31jSm4gNf77c";
        ScriptManager.RegisterStartupScript(Page, GetType(), "comment", "GetOrderComment('" + orderNo + "','" + userId + "','" + userName + "','" + ConfigurationManager.AppSettings["imgUrl"] + "member/" + LevelCode2Img(Session["MCard"].ToString()) + "','" + token + "');", true);
    }
    /// <summary>
    /// 會員卡等級對應圖片檔名
    /// </summary>
    /// <param name="level">會員卡等級</param>
    /// <returns></returns>
    public string LevelCode2Img(string level)
    {
        string img = "";
        switch (level)
        {
            case "W":
                {
                    img = "icon_w.svg";
                    break;
                }
            case "S":
                {
                    img = "icon_s.svg";

                    break;
                }
            case "G":
                {
                    img = "icon_g.svg";
                    break;
                }
            case "B":
                {
                    img = "icon_b.svg";
                    break;
                }
        }
        return img;
    }

    protected void lnk1_Click(object sender, EventArgs e)
    {
        RepeaterItem ri = (RepeaterItem)((Control)sender).NamingContainer;
        string _id = ((HiddenField)ri.FindControl("hf_ORD01")).Value;
        ViewState["ORD01"] = _id;
        string _name = ((Literal)ri.FindControl("lit_ORD02")).Text;
        txt_ORD02.Text = _name;
        txt_ORC003.Text = "";
        ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "open", "openPMODAL();", true);
    }
    protected void rp_detail_list_ItemCreated(object sender, RepeaterItemEventArgs e)
    {
        ScriptManager scriptMan = ScriptManager.GetCurrent(this.Page);
        LinkButton lnk_btn = e.Item.FindControl("lnk1") as LinkButton;

        if (lnk_btn != null)
        {
            //btn.Click += btn_edit_Click;
            //lnk_btn.Click += lnk1_Click;
            scriptMan.RegisterAsyncPostBackControl(lnk_btn);
        }

    }
    protected void btn_commnet_Click(object sender, EventArgs e)
    {
        string errStr = "";
        decimal d = 0;
        if (!Decimal.TryParse(hf_ORC02.Value, out d))
        {
            errStr = "請選擇評論分數 \\n";
            if (Convert.ToDecimal(hf_ORC02.Value) > 0)
            {
                errStr = "請選擇評論分數 \\n";
            }
        }

        if (errStr == "")
        {
            ORDERC objORDC = new ORDERC();
            objORDC.ORM01 = hf_ORM01.Value;
            objORDC.ORD01 = Convert.ToInt32(ViewState["ORD01"].ToString());
            objORDC.ORC01 = Guid.NewGuid().ToString();
            objORDC.ORC02 = Convert.ToDecimal(hf_ORC02.Value);
            objORDC.ORC03 = txt_ORC003.Text.Trim();
            objORDC.ORC04 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            objORDC.ORC05 = 1;
            objORDC.ORC06 = Convert.ToInt32(Session["A01"].ToString());
            ORDERCFactory objORDCFAC = new ORDERCFactory();
            bool rval = objORDCFAC.insertORDERC(objORDC);
            if (rval.Equals(true))
            {
                bindOrder(ViewState["oid"].ToString());
                UpdatePanel1.Update();
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "alert('評論成功');closePMODAL();", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "alert('評論失敗');", true);
            }
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "alert('" + errStr + "');", true);
        }

    }
    protected void btn_Send_Click(object sender, EventArgs e)
    {
        ORDERM orderM = new ORDERM();
        orderM.ORM01 = hf_ORM01.Value;
        orderM.ORM26 = txt_ORM26.Text.Trim();
        orderM.ORM27 = txt_ORM27.Text.Trim();
        orderM.ORM28 = txt_ORM28.Text.Trim();
        bool rval = CFacade.OrderFac.UpPayInfo(orderM);
        if (rval.Equals(true))
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "alert('傳送成功');", true);
        else
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "alert('傳送失敗');", true);
        }
    }



}