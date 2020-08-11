﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;
using System.Data;
using System.Text;
using System.Data.SqlClient;

public partial class mobile_article : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindAdSilder();
            int cid = 0;
            if (Request.QueryString["aid"] != null)
            {
                int i = 0;
                if (int.TryParse(Request.QueryString["aid"].ToString(), out i))
                {
                    cid = Convert.ToInt32(Request.QueryString["aid"].ToString());
                }
            }
            bindArticleList(cid, 1);
        }
    }
    private void bindArticleList(int cid, int p)
    {
        ViewState["aid"] = cid;
        ViewState["page"] = p;
        int showCount = 10 * p;
        DataTable dt = CFacade.GetFac.GetATCBFac.GetArticleList(cid, showCount);
        rp_List.DataSource = dt;
        rp_List.DataBind();

        lnk_more.Visible = false;
        if (dt.Rows.Count > 0)
        {
            if (Convert.ToInt32(dt.Rows[0]["COUNT"].ToString()) > showCount)
            {
                lnk_more.Visible = true;
            }

            lit_no_msg.Text = "";
        }
        else
        {
            lit_no_msg.Text = "無相關文章，努力增加中!";
        }
    }
    private void bindAdSilder()
    {
        DataTable dt = GetAdList("M");
        rp_ad_list.DataSource = dt;
        rp_ad_list.DataBind();
    }
    public DataTable GetAdList(string _type)
    {
        string strSql = "SELECT ATCC01,ATCC03,ATCC04 FROM ATCC WHERE ATCC06=1 AND GETDATE() BETWEEN ATCC08 AND ATCC09 AND ATCC12=@TYPE ORDER BY ATCC07 DESC";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = strSql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("TYPE", SqlDbType.VarChar, _type));
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }
    protected void lnk_more_Click(object sender, EventArgs e)
    {
        int p = Convert.ToInt32(ViewState["page"].ToString()) + 1;
        bindArticleList(Convert.ToInt32(ViewState["aid"].ToString()), p);
    }
}