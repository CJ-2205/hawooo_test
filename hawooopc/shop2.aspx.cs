using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_shop2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bool hDT = false;
            int p = 1;
            if (Request.QueryString["p"] != null)
            {
                if (int.TryParse(Request.QueryString["p"], out p))
                {
                    p = Convert.ToInt32(Request.QueryString["p"]);
                }
            }
            int i = 0;
            if (Request.QueryString["eid"] != null)
            {
                if (int.TryParse(Request.QueryString["eid"], out i))
                {
                    hDT = true;
                    BindList(0, 0, Convert.ToInt32(Request.QueryString["eid"].ToString()), "", p);
                }
                else
                {
                    Response.Redirect("index.aspx");
                }
            }
            if (Request.QueryString["bid"] != null)
            {
                //品牌商品列表
                if (int.TryParse(Request.QueryString["bid"], out i))
                {
                    hDT = true;
                    BindList(Convert.ToInt32(Request.QueryString["bid"].ToString()), 0, 0, "", p);
                }
                else
                {
                    Response.Redirect("index.aspx");
                }
            }

            if (Request.QueryString["cid"] != null)
            {
                if (int.TryParse(Request.QueryString["cid"], out i))
                {
                    hDT = true;
                    hf_cid.Value = cid.ToString();
                    hf_cname.Value = GetCategoryStr(cid).ToString();
                    BindList(0, Convert.ToInt32(Request.QueryString["cid"].ToString()), 0, "", p);
                }
                else
                {
                    Response.Redirect("index.aspx");
                }
            }

            if (Request.QueryString["gid"] != null)
            {
                Guid g;
                if (Guid.TryParse(Request.QueryString["gid"], out g))
                {
                    hDT = true;
                    BindList(0, 0, 0, "", p, Request.QueryString["gid"].ToString());
                }
                else
                {
                    Response.Redirect("index.aspx");
                }
            }
            if (Request.QueryString["type"] != null)
            {
                if (Request.QueryString["type"].ToString().Equals("new"))
                {
                    hDT = true;
                    BindList(0, 0, 0, "new", p);
                }
            }
            if (hDT.Equals(false))
            {
                BindList(0, 0, 0, "", p);
            }
        }
    }

    private string GetCategoryStr(int cid)
    {
        string name = "";
        string strSql = "SELECT C06 FROM C WHERE C01=@CID";
        SqlCommand cmd = new SqlCommand();
        cmd.Parameters.Add(SafeSQL.CreateInputParam("CID", SqlDbType.Int, cid));
        cmd.CommandText = strSql;
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        if (dt.Rows.Count > 0)
        {
            name = dt.Rows[0]["C06"].ToString();
        }
        return name;
    }

    private void getClassName(int bid, int cid, int eid, string gid)
    {
        lit_event_img.Text = "";
        if (bid != 0)
        {
            DataTable dt = SqlDbmanager.queryBySql("SELECT BA02,B01 FROM BA WHERE B01=" + bid);
            if (dt.Rows.Count > 0)
            {
                lit_class.Text = "<li><a href=\"shop.aspx\">品牌類別</a></li>";
                lit_class.Text += "<li><a href=\"shop.aspx?bid=" + dt.Rows[0]["B01"].ToString() + "\">" + dt.Rows[0]["BA02"].ToString() + "</a></li>";
            }
        }
        else if (cid != 0)
        {
            DataTable dt = SqlDbmanager.queryBySql("SELECT C01,C06 FROM C WHERE C01=" + cid);
            if (dt.Rows.Count > 0)
            {
                lit_class.Text = "<li><a href=\"shop.aspx\">商品分類</a></li>";
                lit_class.Text += "<li><a href=\"shop.aspx?cid=" + dt.Rows[0]["C01"].ToString() + "\">" + dt.Rows[0]["C06"].ToString() + "</a></li>";
            }
        }
        else if (eid != 0)
        {
            DataTable dt = SqlDbmanager.queryBySql("SELECT SPM01,SPM02,SPM10,SPI02,SPI04 FROM SPRODUCTSM RIGHT JOIN SPRODUCTSI ON SPI01=SPM01 WHERE SPM01=" + eid);
            if (dt.Rows.Count > 0)
            {
                lit_class.Text = "<li><a href=\"shop.aspx\">活動分類</a></li>";
                lit_class.Text += "<li><a href=\"shop.aspx?cid=" + dt.Rows[0]["SPM01"].ToString() + "\">" + dt.Rows[0]["SPM02"].ToString() + "</a></li>";
                DataRow[] sDR = dt.Select("SPI02='D01'");
                if (sDR.Length > 0)
                {
                    lit_event_img.Text = "<img src=\"../images/adimgs/" + dt.Rows[0]["SPI04"].ToString() + "\" style=\"max-width:970px;\" />";
                }
            }
        }
        else if (gid != "")
        {
            Guid g;
            if (Guid.TryParse(gid, out g))
            {
                DataTable dt = SqlDbmanager.queryBySql("SELECT GE01,GE10 FROM GiftEvent WHERE GE01='" + gid + "'");
                if (dt.Rows.Count > 0)
                {
                    lit_class.Text = "<li><a href=\"shop.aspx?gid=" + dt.Rows[0]["GE01"].ToString() + "\">活動：" + dt.Rows[0]["GE10"].ToString() + "</a></li>";
                }
            }
        }
        else
        {
            lit_class.Text = "<li><a href=\"shop.aspx\">全部商品</a></li>";
        }
    }
    //private enum sortType { 熱門程度優先, 最新上架優先, 價格由低至高, 價格由高至低 };
    //private enum sortOrder { ASC, DESC };
    private void BindList(int bid, int cid, int eid, string searchTxt, int pindex, string gid = "")
    {
        getClassName(bid, cid, eid, gid);
        int pcount = 40;
        string sorStr = " WP18 DESC,WP11 DESC ";
        //if (ordTy.Equals(sortOrder.ASC))
        //{
        //    sorStr = "ASC";
        //}
        //else if (ordTy.Equals(sortOrder.DESC))
        //{
        //    sorStr = "DESC";
        //}
        ddl_product_list.SelectedValue = "0";
        if (Request.QueryString["order"] != null)
        {
            switch (Request.QueryString["order"].ToString())
            {
                case "1":
                    {
                        //熱門程度優先
                        ddl_product_list.SelectedValue = "1";
                        sorStr = " WP27 DESC ";
                        break;
                    }
                case "2":
                    {
                        //最新上架優先
                        ddl_product_list.SelectedValue = "2";
                        sorStr = " WP.WP11 DESC ";
                        break;
                    }
                case "3":
                    {
                        //價格由高至低
                        ddl_product_list.SelectedValue = "3";
                        sorStr = " WPA06 ASC ";
                        break;
                    }
                case "4":
                    {
                        //價格由低至高    
                        ddl_product_list.SelectedValue = "4";
                        sorStr = " WPA06 DESC ";
                        break;
                    }


            }
        }


        string stxt = "";
        if (searchTxt.Equals("new"))
        {
            stxt = " WP11 BETWEEN '" + DateTime.Now.AddDays(-7).ToString("yyyy-MM-dd") + "' AND '" + DateTime.Now.ToString("yyyy-MM-dd") + "'";
        }

        //Tuple<DataTable, int> gTup = CFacade.UserFac.GetShopProducts(cid, bid, sorStr, stxt, pindex, pcount, eid, gid);
        int showp = (pindex - 1) * pcount;

        string money = "";
        if (Request.QueryString["money"] != null)
        {
            money = Request.QueryString["money"].ToString();
        }
        string tag = "";
        if (Request.QueryString["tag"] != null)
        {
            tag = Request.QueryString["tag"].ToString();
        }
        DataTable dt = CFacade.UserFac.GetShopList2(cid, bid, sorStr, showp, pcount, eid, gid, money, tag);
        rp_product_list.DataSource = dt;
        rp_product_list.DataBind();

        if (dt.Rows.Count > 0)
        {
            lit_msg.Text = "";
            decimal p = Convert.ToDecimal(dt.Rows[0]["ASUM"].ToString());
            int pp = Convert.ToInt32(Math.Ceiling(p / pcount)) - 1;
            StringBuilder sb = new StringBuilder();
            if (pp > 1)
            {
                string qStr = "";
                if (bid != 0)
                {
                    qStr += "&bid=" + bid;
                }
                if (cid != 0)
                {
                    qStr += "&cid=" + cid;
                }
                if (eid != 0)
                {
                    qStr += "&eid=" + eid;
                }
                if (gid != "")
                {
                    qStr += "&gid=" + gid;
                }
                if (Request.QueryString["money"] != null)
                {
                    qStr += "&money=" + Request.QueryString["money"].ToString();
                }
                if (searchTxt.Equals("new"))
                {
                    qStr += "&type=new";
                }
                if (Request.QueryString["order"] != null)
                {
                    qStr += "&order=" + Request.QueryString["order"].ToString();
                }
                if (Request.QueryString["tag"] != null)
                {
                    qStr += "&tag=" + Request.QueryString["tag"].ToString();
                }
                sb.Append("<li><a href=\"shop.aspx?p=1" + qStr + " \">&laquo;</a></li>");
                int spage = 1;
                int epage = pp;
                if (pp < 10)
                {
                    for (int i = spage; i <= epage; i++)
                    {
                        if (i.Equals(pindex))
                        {
                            sb.Append("<li class=\"am-active\"><a href=\"shop.aspx?p=" + i + "" + qStr + "\">" + i.ToString() + "</a></li>");
                        }
                        else
                        {
                            sb.Append("<li><a href=\"shop.aspx?p=" + i + "" + qStr + "\">" + i.ToString() + "</a></li>");
                        }
                    }
                }
                else
                {
                    if (pindex > 5 && pindex != pp)
                    {
                        sb.Append("<li><a href=\"shop.aspx?p=" + (pindex - 3) + "" + qStr + "\"><</a></li>");
                        for (int i = -2; i <= 2; i++)
                        {
                            int sp = (pindex + i);
                            if (sp <= pp)
                            {
                                if (i.Equals(0))
                                {
                                    sb.Append("<li class=\"am-active\"><a href=\"shop.aspx?p=" + sp.ToString() + "" + qStr + "\">" + sp.ToString() + "</a></li>");
                                }
                                else
                                {
                                    sb.Append("<li><a href=\"shop.aspx?p=" + sp.ToString() + "" + qStr + "\">" + sp.ToString() + "</a></li>");
                                }
                            }
                        }
                        if (pindex + 1 < pp)
                        {
                            sb.Append("<li><a href=\"shop.aspx?p=" + (pindex + 1) + "" + qStr + "\">></a></li>");
                        }
                    }
                    else if (pindex == epage)
                    {
                        sb.Append("<li><a href=\"shop.aspx?p=" + (pindex - 6) + "" + qStr + "\"><</a></li>");
                        for (int i = 5; i >= 0; i--)
                        {
                            int sp = epage - i;

                            if (i.Equals(0))
                            {
                                sb.Append("<li class=\"am-active\"><a href=\"shop.aspx?p=" + sp.ToString() + "" + qStr + "\">" + sp.ToString() + "</a></li>");
                            }
                            else
                            {
                                sb.Append("<li><a href=\"shop.aspx?p=" + sp.ToString() + "" + qStr + "\">" + sp.ToString() + "</a></li>");
                            }
                        }
                    }
                    else
                    {
                        for (int i = 1; i <= 5; i++)
                        {
                            int sp = i;
                            if (i.Equals(pindex))
                            {
                                sb.Append("<li class=\"am-active\"><a href=\"shop.aspx?p=" + sp.ToString() + "" + qStr + "\">" + sp.ToString() + "</a></li>");
                            }
                            else
                            {
                                sb.Append("<li><a href=\"shop.aspx?p=" + sp.ToString() + "" + qStr + "\">" + sp.ToString() + "</a></li>");
                            }
                        }
                        sb.Append("<li><a href=\"shop.aspx?p=" + 6 + "" + qStr + "\">></a></li>");
                    }

                }
                if (pp > 5)
                {
                    sb.Append("<li><a href=\"shop.aspx?p=" + pp + "" + qStr + "\">&raquo;</a></li>");
                }
            }
            lit_page.Text = sb.ToString();
        }
        else
        {
            lit_msg.Text = "目前無相關商品";
        }
    }
    protected void lnk_like_Click(object sender, EventArgs e)
    {
    //    if (Session["A01"] != null)
    //    {
    //        RepeaterItem ritem = (RepeaterItem)((Control)sender).NamingContainer;
    //        int _pid = Convert.ToInt32(((HiddenField)ritem.FindControl("hf_WP01")).Value);
    //        AA objAA = new AA();
    //        objAA.A01 = Convert.ToInt32(Session["A01"].ToString());
    //        objAA.WP01 = _pid;
    //        objAA.AA01 = Guid.NewGuid().ToString();
    //        objAA.AA02 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
    //        objAA.AA03 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
    //        objAA.AA04 = 1;
    //        bool rval = CFacade.GetFac.GetAAFac.SaveTrack(objAA);
    //        if (rval)
    //            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "login", "alert('追蹤成功');", true);
    //        else
    //            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "login", "alert('追蹤失敗');", true);
    //    }
    //    else
    //    {
    //        ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "login", "alert('請先登入會員');doLogin();", true);
    //    }

        //ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "alert('" + _pid + "');", true);
    }
    protected void rp_product_list_ItemCreated(object sender, RepeaterItemEventArgs e)
    {
        ScriptManager script = ScriptManager.GetCurrent(this.Page);
        LinkButton lnkBtn = e.Item.FindControl("lnk_like") as LinkButton;
        if (lnkBtn != null)
        {
            script.RegisterAsyncPostBackControl(lnkBtn);
        }
    }

    protected void ddl_product_list_SelectedIndexChanged(object sender, EventArgs e)
    {
        string[] rurl = Request.QueryString.ToString().Split('&');
        string _url = "shop.aspx?order=" + ddl_product_list.SelectedValue.ToString() + "";
        foreach (string s in rurl)
        {
            string _p = s.Split('=')[0];
            if (!_p.Equals("order"))
            {
                _url += "&" + s.ToString();
            }
        }
        Response.Redirect(_url.Trim('&'));
    }
}