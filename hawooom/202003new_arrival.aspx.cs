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
using System.Text;

public partial class mobile_static_202003new_arrival : System.Web.UI.Page
{
    private int _eventId = 798;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SetTime();
            BindGoods();
            BindNewProductsData();
        }
    }

    private void SetTime()
    {
        string sqlTxt =
            "SELECT SPM01,SPM04,SPM05 FROM SPRODUCTSM WHERE SPM01 IN (362,370) AND GETDATE() BETWEEN SPM04 AND SPM05";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sqlTxt;
        DataTable sDt = SqlDbmanager.queryBySql(cmd);

        if (sDt.Rows.Count > 0)
        {
            _eventId = Convert.ToInt32(sDt.Rows[0]["SPM01"].ToString());
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
            prop.Cells.Add("PC01");
            prop.Cells.Add("PC09");
            prop.Cells.Add("(SELECT ISNULL(COUNT(ORD01),0) as BCOUNT FROM ORDERD " +
                           "INNER JOIN ORDERM ON ORDERM.ORM01=ORDERD.ORM01 " +
                           "WHERE ORD01=WP01 AND ORM03>=SPM04) as BCOUNT ");
            prop.JoinTxts.Add("CROSS APPLY (SELECT TOP 1 PC01,PC09 FROM ProductCoupon " +
                "INNER JOIN ProductCouponSel " +
                "ON PC01=PCS01 WHERE PCS02=WP01 " +
                "ORDER BY PC04 DESC) as TA ");
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
        dt.Columns.Add("PC01");
        dt.Columns.Add("COUPON");
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
            ndr["PC01"] = dr["PC01"].ToString();
            ndr["PERSENT"] = 0 - Math.Floor(((Convert.ToDecimal(ndr["WPA06"].ToString()) / Convert.ToDecimal(ndr["WPA10"].ToString())) - 1) * 100) + "% OFF";
            ndr["COUPON"] = "RM" + dr["PC09"].ToString().Split('.')[0];
            dt.Rows.Add(ndr);
        }
        return dt;
    }

    protected void btn_get_one_coupon_OnClick(object sender, EventArgs e)
    {
        if (Session["A01"] == null)
        {
            Response.Redirect("login.aspx?rurl=202003new_arrival.aspx");
        }
        else
        {
            ProductCouponUserGetFac pcfac = new ProductCouponUserGetFac();
            string rval = pcfac.GetProductCoupon(hf_pc01.Value.ToString(), int.Parse(Session["A01"].ToString()));
            if (rval.Equals("OK"))
            {
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('You get this coupon! Shop Now!');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('Error');", true);
            }
        }
    }



    private void BindNewProductsData()
    {
        DataTable dt = GetGoods((this.Master as mobile).LgType);
        Repeater rp = products1.FindControl("rp_goods") as Repeater;
        rp.DataSource = dt;
        rp.DataBind();

    }

    public DataTable GetGoods(LangType lg)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("SELECT TOP 24 ");
        sb.Append("WP.B01,");
        sb.Append("WP.WP01,");
        sb.Append("WP23,");
        sb.Append("WP08_1,");
        sb.Append("WPT07,");
        sb.Append("WP27,");
        if (lg == LangType.zh)
        {
            sb.Append("WPT02 as WP30,");
            sb.Append("WP02,");
        }
        else if (lg == LangType.en)
        {
            sb.Append("WP23 as WP02,");
            sb.Append("(CASE WHEN WPT06='' THEN WPT02 ELSE WPT06 END) as WP30,");
        }
        sb.Append("CAST(Price as decimal) as WPA06,");
        sb.Append("CAST(OPrice as decimal) as WPA10,");
        sb.Append("CAST((OPrice-Price) as decimal) as decreaseAmount ");
        sb.Append("FROM WP ");
        sb.Append("INNER JOIN ProductPriceView ON PID=WP01 ");
        sb.Append("LEFT JOIN WPTAG WITH(NOLOCK) ON WPT01 = WP30 ");
        sb.Append(@"INNER JOIN(
SELECT B01,WP01
FROM(
SELECT 
B01,
WP01,
ROW_NUMBER() Over (Partition By B01 Order By WP11 Desc) As R
FROM WP 
INNER JOIN ProductPriceView ON PID=WP01 
LEFT JOIN WPTAG ON WP30=WPT01 
Where WP05=1 and WP07=1 and GETDATE() between WP09 and WP10 and WP11 between DATEADD(day,-60,GETDATE()) and GETDATE()
) AS DT 
WHERE R=1) AS TA ON TA.WP01=WP.WP01 ");
        sb.Append("WHERE NOT EXISTS(SELECT SPD02 FROM SPRODUCTSD WHERE SPD01 IN (362,370) AND WP.WP01=SPD02) ");
        sb.Append("ORDER BY WP11 DESC");

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sb.ToString();
        var dt = SqlDbmanager.queryBySql(cmd);

        return dt;
    }


}