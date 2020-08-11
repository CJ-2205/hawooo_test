using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _newhotrank : System.Web.UI.Page
{
    protected void Page_PreLoad(object sender, EventArgs e)
    {
        bool isMobile = PbClass.isMobile(Request.UserAgent);
        if (isMobile)
        {
            string qstr = Request.Url.Query.ToString();
            Response.Redirect("../mobile/newhotrank2.aspx" + qstr);      //here
        }

    }

    protected void Page_Load(object sender, EventArgs e)
    {

        int[] eid = { 362, 387 };
        DataTable dt = bindProduct1(eid);

        rp_product_list_1.DataSource = sortPID(dt, eid[0]);
        rp_product_list_1.DataBind();

        rp_product_list_2.DataSource = sortPID(dt, eid[1]);
        rp_product_list_2.DataBind();

    }

    private DataTable bindProduct1(int eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        List<string> qList = new List<string>();
        qList.Add("WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=@SPD01)");
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, null, "ORDER BY WP18 DESC OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY", null, true);
        dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }

    private DataTable bindProduct1(int[] eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();

        string sJoin = "CROSS APPLY (SELECT SPD01 FROM SPRODUCTSD WHERE SPD01 in (@SPD) AND SPD02=WP01) AS SPD";
        string sList = "WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01 in (@SPD))";
        string sParam = "";
        foreach (int i in eid)
        {
            sParam += "@SPD" + i + ",";
            cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD" + i, SqlDbType.Int, i));
        }
        sParam = sParam.Substring(0, sParam.Length - 1);
        sJoin = sJoin.Replace("@SPD", sParam);
        sList = sList.Replace("@SPD", sParam);
        List<string> JoinStrs = new List<string>();
        JoinStrs.Add(sJoin);         //補上cross apply出eid
        List<string> qList = new List<string>();
        qList.Add(sList);
        List<string> OtherCells = new List<string>();
        OtherCells.Add("SPD01");          //需要額外select出的欄位
        OtherCells.Add("WP18");
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, null, "ORDER BY WP18 DESC OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY", JoinStrs, true, OtherCells);

        dt = SqlDbmanager.queryBySql(cmd);
        return dt;

    }


    private DataTable sortPID(DataTable dt, int eid)
    {
        DataTable table = new DataTable();
        if (dt.Select("SPD01='" + eid + "'").Length > 0)
        {
            table = dt.Select("SPD01='" + eid + "'").CopyToDataTable();
            DataView dv = new DataView(table);
            dv.Sort = "WP18 DESC";
            table = dv.ToTable();
        }
        return table;
    }


    ///隨機帶40個商品出來
    private DataTable HotRank40()
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("SELECT ");
        sb.Append("WP01  ");
        sb.Append(",'in stock' as 'availability' ");
        sb.Append(",'new' as 'condition' ");
        sb.Append(",REPLACE(WP02,',','，') as 'WP02' ");
        sb.Append(", WP08_1  ");
        sb.Append(",'https://www.hawooo.com/user/productdetail.aspx?id=' + Convert(varchar(100),WP01) as 'link' ");
        sb.Append(",REPLACE(WP02,',','，') as 'title' ");
        sb.Append(",Convert(varchar(50),Convert(FLOAT(50),round(Price / 7.6,1))) as 'WPA06' ");
        sb.Append(",'' as 'gtin' ");
        sb.Append(",WP01 as 'mpn' ");
        sb.Append(",BDT.BA02 as 'brand' ");
        sb.Append(",PNAME + '>' + CNAME as 'product_type' ");
        sb.Append(",PNAME as 'content_type' ");//WP31活動開始,WP32活動結束,折扣金額OPrice-Price
        sb.Append(",Convert(varchar(50),Convert(FLOAT(50),round((SPrice) / 7.6,1))) as 'sale_price' ");
        sb.Append(",((CONVERT(VARCHAR, WP31, 120))+'T00:00-23:59'+'/'+(CONVERT(VARCHAR, WP32, 120))+'T00:00-2359') as 'sale_price_effective_date' ");
        sb.Append(",(CASE WHEN GETDATE()<=DATEADD(DAY,60,WP11) THEN 'YES' ELSE 'NO' END) as 'custom_label_0' ");
        sb.Append(",(CASE WHEN GETDATE()<=DATEADD(DAY,60,B17) THEN 'YES' ELSE 'NO' END) as 'custom_label_1' ");
        sb.Append(",(CASE WHEN ISNULL(SPD01,'') != '' THEN 'YES' ELSE 'NO' END) as 'custom_label_2' ");
        sb.Append(",'' AS WPA10  ");
        sb.Append("FROM ");
        sb.Append("WP ");//排除B28=2旗艦店的商品
        sb.Append("INNER JOIN (SELECT B.B01,BA02,B28,B17 FROM B LEFT JOIN BA ON B.B01=BA.B01 WHERE ISNULL(B28,'')!=2) as BDT ON BDT.B01=WP.B01 ");
        sb.Append("CROSS APPLY (SELECT Price,OPrice,SPrice FROM ProductPriceView2 WHERE PID=WP01 ) AS DT ");
        sb.Append("CROSS APPLY (SELECT MAX(CASE WHEN C03=0 THEN C06 END) as PNAME,MAX(CASE WHEN C03!=0 THEN C06 END) as CNAME FROM (SELECT C06,C03 FROM C INNER JOIN WPCLS ON WPC03=C01 WHERE WP01=WPC02) as TB) as CDT ");
        sb.Append("OUTER APPLY (SELECT TOP 1 SPD01 FROM SPRODUCTSD WHERE SPD02=WP01 AND SPD01 IN (461,462,463,464,465,466)) as SPD "); //是否活動商品
        sb.Append("WHERE ");
        sb.Append("WP07=1 ");
        sb.Append("AND GetDate() BETWEEN WP09 and WP10 ");

        string sql = sb.ToString();
        DataTable dt = new DataTable();
        dt = SqlDbmanager.queryBySql(sql);
        return dt;

    }


    protected void CpnBtn_Click(object sender, ImageClickEventArgs e)
    {
        string _PC01 = "7973cac8-2433-4eab-9bce-6323ec7ddb68";          //折扣卷的guid
        if (Session["A01"] != null)
        {
            string rval = CouponFacade.GetProductCouponUserGetFac.GetProductCoupon(_PC01, Convert.ToInt32(Session["A01"].ToString()));
            if (rval.Equals("OK"))
            {
                ScriptManager.RegisterStartupScript(up_product_coupon, typeof(UpdatePanel), "msg", "alert('領取成功');", true);
            }
            else if (rval.Equals("ERROR"))
            {
                ScriptManager.RegisterStartupScript(up_product_coupon, typeof(UpdatePanel), "msg", "alert('領取失敗，請稍後領取');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(up_product_coupon, typeof(UpdatePanel), "msg", "alert('" + rval + "');", true);
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "login", "doLogin('newhotrank2.aspx');", true);

        }


    }

}