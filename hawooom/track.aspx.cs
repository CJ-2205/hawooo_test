using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;

public partial class mobile_track : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["A01"] != null)
            {
                ((Literal)member_class.FindControl("lit_class_txt")).Text = "<span class='txtRsc' data-id='mb009'>收藏商品</span>";
                GetTrackProduct(int.Parse(Session["A01"].ToString()));
            }
            else
            {
                Response.Redirect("login.aspx?rurl=track.aspx");
            }
        }
    }
    private void GetTrackProduct(int A01)
    {
        LangType lg = (this.Master as mobile).LgType;
        SearchProp searchProp = new SearchProp();
        searchProp.JoinTxts.Add("INNER JOIN (SELECT WP01 as AAWP01,AA02 FROM AA WHERE A01=@A01 AND AA04=1) as AA ON AAWP01=WP.WP01 ");
        searchProp.LgType = lg;
        searchProp.page = 1;
        searchProp.pcount = 100;
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = ProductBL.GetProductSqlTxt(searchProp);
        cmd.Parameters.Add(SafeSQL.CreateInputParam("A01", SqlDbType.Int, A01));
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        non_track.Visible = false;

        if (dt.Rows.Count > 0)
        {
            string ids = "";
            decimal total = 0;
            foreach (DataRow dr in dt.Rows)
            {
                ids += dr["WP01"].ToString() + ",";
                total += PbClass.CashRate(dr["WPA06"].ToString(), Application["mycashrate"].ToString());
            }
            hfListId.Value = ids.TrimEnd(',');
            hfTotal.Value = total.ToString();
            rp_list.DataSource = dt;
            rp_list.DataBind();
        }
        else
        {
            non_track.Visible = true;
        }


    }

    protected void btn_del_Click(object sender, EventArgs e)
    {
        AA obAA = new AA();
        obAA.A01 = int.Parse(Session["A01"].ToString());
        obAA.WP01 = int.Parse(pid.Value);
        obAA.AA01 = Guid.NewGuid().ToString();
        obAA.AA02 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        obAA.AA03 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        obAA.AA04 = -1;
        AAFactory aaFac = new AAFactory();
        string rval = aaFac.SaveTrack(obAA);

        if (rval.Equals("0"))
        {
            //ScriptManager.RegisterStartupScript(Page, typeof(Page), "delmsg", "alert2url('Delete completed!','track.aspx');", true);
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "delmsg", "location.href='track.aspx';", true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "delmsg", "alert('Delete Error');", true);
        }

    }
}