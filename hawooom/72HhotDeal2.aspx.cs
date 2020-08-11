using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Services;

public partial class mobile_static_72HhotDeal2 : System.Web.UI.Page
{
    
    private int _eventId = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DoRedirect();
            SetTime();
            BindGoods();
        }
    }

    public void DoRedirect()
    {
        string sqlTxt ="SELECT SPM01,SPM04,SPM05 FROM SPRODUCTSM WHERE SPM01 IN (486)";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sqlTxt;
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        DateTime etime = Convert.ToDateTime(dt.Rows[0]["SPM05"].ToString());
        if (DateTime.Now >= etime)
        {
            Response.Redirect("../mobile/72HhotDeal.aspx");
        }
    }

    private void SetTime()
    {
        string sqlTxt =
            "SELECT SPM01,SPM04,SPM05 FROM SPRODUCTSM WHERE SPM01 IN (486) AND GETDATE() BETWEEN SPM04 AND SPM05";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sqlTxt;
        DataTable sDt = SqlDbmanager.queryBySql(cmd);

        if (sDt.Rows.Count > 0)
        {
            DateTime stime = DateTime.Now;
            DateTime etime = Convert.ToDateTime(sDt.Rows[0]["SPM05"].ToString());
            _eventId = Convert.ToInt32(sDt.Rows[0]["SPM01"].ToString());
            TimeSpan ts = etime - stime;
            var spend = ts.TotalSeconds;
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "set", "setTime(" + spend + ");", true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "set", "alert2url('Oops, the sale is over! No worries, check out more hot deals on our website!','index.aspx');", true);
        }
    }



    private void BindGoods()
    {
        if (_eventId != 0)
        {
            SearchProp prop = new SearchProp();
            prop.Cells.Add("SPD01");
            prop.Cells.Add("SPD07");
            prop.Cells.Add("SPD06");
            prop.Cells.Add("SPD05");
            //prop.Cells.Add("PC01");
            //prop.Cells.Add("PC09");
            //prop.Cells.Add("BCOUNT");
            prop.Cells.Add("(SELECT ISNULL(COUNT(ORD01),0) as BCOUNT FROM ORDERD " +
                           "INNER JOIN ORDERM ON ORDERM.ORM01=ORDERD.ORM01 " +
                           "WHERE ORD01=WP01 AND ORM03>=SPM04) as BCOUNT ");
            //prop.JoinTxts.Add("OUTER APPLY (SELECT ISNULL(SUM(ORD06),0) as BCOUNT FROM ORDERD INNER JOIN ORDERM ON ORDERM.ORM01=ORDERD.ORM01 WHERE ORD01=WP01 AND ORM03>=SPM04) AS TA ");
            prop.SelectIDS.Add(_eventId);
            prop.OrderBy = " ORDER BY SPD05 DESC,WP01 DESC ";
            prop.LgType = ((mobile)this.Master).LgType;
            string sqlTxt = ProductBL.GetSelectProduct(prop);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlTxt;
            DataTable dt = SqlDbmanager.queryBySql(cmd);
            DataTable bindDt = TransDt(dt);
            rp_plist.DataSource = bindDt;
            rp_plist.DataBind();
        }
    }

    private DataTable TransDt(DataTable sdt)
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("WP01");
        dt.Columns.Add("WP02");
        dt.Columns.Add("B01");
        dt.Columns.Add("WP23");
        dt.Columns.Add("WP08_1");
        dt.Columns.Add("WPA06");
        dt.Columns.Add("WPA10");
        dt.Columns.Add("SPD07");
        dt.Columns.Add("PERSENT");
        //dt.Columns.Add("PC01");
        dt.Columns.Add("WP30");
        dt.Columns.Add("WPT07");
        dt.Columns.Add("P_id");
        dt.Columns.Add("P_img");


        Plist pl = new Plist();
        Dictionary<int, string> Plist = pl.SetPlist();

        foreach (DataRow dr in sdt.Rows)
        {
            DataRow ndr = dt.NewRow();
            ndr["WP01"] = dr["WP01"].ToString();
            ndr["WP02"] = dr["WP02"].ToString();
            ndr["B01"] = dr["B01"].ToString();
            ndr["WP23"] = dr["WP23"].ToString();
            ndr["WP08_1"] = dr["WP08_1"].ToString();
            ndr["WPA06"] = PbClass.CashRate(dr["WPA06"].ToString(), "7.6");
            ndr["WPA10"] = PbClass.CashRate(dr["WPA10"].ToString(), "7.6");
            ndr["SPD07"] = Convert.ToInt32(dr["SPD07"].ToString()) + Convert.ToInt32(dr["BCOUNT"].ToString());
            //ndr["PC01"] = dr["PC01"].ToString();
            ndr["PERSENT"] = 0 - Math.Floor(((Convert.ToDecimal(ndr["WPA06"].ToString()) / Convert.ToDecimal(ndr["WPA10"].ToString())) - 1) * 100) + "% OFF";
            ndr["WP30"] = dr["WP30"].ToString();
            ndr["WPT07"] = dr["WPT07"].ToString();

            if (sdt.Rows.IndexOf(dr) <= 3)
            {
                ndr["P_img"] = Plist[key: sdt.Rows.IndexOf(dr)];
            }
            dt.Rows.Add(ndr);
        }
        return dt;
    }

    public class Plist
    {
        public Dictionary<int, string> SetPlist()
        {
            Dictionary<int, string> list = new Dictionary<int, string>()
            {
                {0, ConfigurationManager.AppSettings["imgUrl"]+"ftp/week2/pd_01.png"},
                {1, ConfigurationManager.AppSettings["imgUrl"]+"ftp/week2/pd_02.png"},
                {2, ConfigurationManager.AppSettings["imgUrl"]+"ftp/week2/pd_03.png"},
                {3, ConfigurationManager.AppSettings["imgUrl"]+"ftp/week2/pd_04.png"}
            };
            return list;
        }
    }
}