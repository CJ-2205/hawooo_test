using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;

public partial class mobile_20181111sales : System.Web.UI.Page
{
    private int did = 1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if (Request.QueryString["did"] != null)
            {
                did = int.Parse(Request.QueryString["did"].ToString());
            }
            List<int> listId = new List<int>();
            switch (did)
            {
                case 1:
                    {
                        listId.Add(482);
                        mainImg.Src = "https://www.hawooo.com/images/ftp/20181101/mb1f1_01.png";
                        break;
                    }
                case 2:
                    {
                        listId.Add(387);
                        listId.Add(362);
                        listId.Add(370);
                        listId.Add(340);
                        listId.Add(338);
                        listId.Add(484);
                        listId.Add(483);
                        mainImg.Src = "https://www.hawooo.com/images/ftp/20181101/mup_01.png";
                        Panel1.Visible = true;
                        t1.Visible = true;
                        break;
                    }
            }
            bindDT(did, listId);
        }
    }

    private void bindDT(int did, List<int> ids)
    {
        SqlCommand cmd = new SqlCommand();
        //折扣優惠期間: WP31優惠開始時間,WP32優惠結束時間
        SearchProp searchProp = new SearchProp();
        searchProp.Cells.Add("SPD01");
        searchProp.Cells.Add("WP31");
        searchProp.Cells.Add("WP32");
        searchProp.Cells.Add("SPD05");
        string strIns = "INNER JOIN (SELECT SPD01 AS SPD01,SPD02 AS SPD02,SPD05 FROM SPRODUCTSD WHERE SPD01 IN (";
        int i = 0;
        foreach (int id in ids)
        {
            strIns += "@SP" + i.ToString() + ",";
            cmd.Parameters.Add(SafeSQL.CreateInputParam("SP" + i.ToString(), System.Data.SqlDbType.Int, id));
            i++;
        }
        strIns = strIns.TrimEnd(',');
        strIns += ") ) AS DT ON WP01=DT.SPD02 ";
        searchProp.JoinTxts.Add(strIns);
        //searchProp.WhereTxts.Add("WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=527)");
        searchProp.LgType = (this.Master as mobile).LgType;
        searchProp.page = 1;
        searchProp.pcount = 1000;
        searchProp.OrderBy = "ORDER BY SPD05 DESC";
        cmd.CommandText = ProductBL.GetProductSqlTxt(searchProp);
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        //string strDate = DateTime.Now.ToString("yyyy-MM-dd") + " 00:00:00";
        //rp13_1.DataSource = dt.Select("SPD01='529'").CopyToDataTable().AsEnumerable().Take(4);
        if (did.Equals(2))
        {
            if (dt.Select("SPD01=362").Length > 0)
            {
                rp1.DataSource = dt.Select("SPD01=362").CopyToDataTable();
                rp1.DataBind();
            }
            if (dt.Select("SPD01=387").Length > 0)
            {
                rp2.DataSource = dt.Select("SPD01=387").CopyToDataTable();
                rp2.DataBind();
            }
            if (dt.Select("SPD01=370").Length > 0)
            {
                rp3.DataSource = dt.Select("SPD01=370").CopyToDataTable();
                rp3.DataBind();
            }
            if (dt.Select("SPD01=340").Length > 0)
            {
                rp4.DataSource = dt.Select("SPD01=340").CopyToDataTable();
                rp4.DataBind();
            }
            if (dt.Select("SPD01=338").Length > 0)
            {
                rp5.DataSource = dt.Select("SPD01=338").CopyToDataTable();
                rp5.DataBind();
            }
            if (dt.Select("SPD01=484").Length > 0)
            {
                rp6.DataSource = dt.Select("SPD01=484").CopyToDataTable();
                rp6.DataBind();
            }

        }
        else
        {
            rp1.DataSource = dt;
            rp1.DataBind();
        }

        //if (dt.Select("SPD01='540' ").Length > 0)
        //{
        //    rp1.DataSource = dt.Select("SPD01='540'").CopyToDataTable();
        //    rp1.DataBind();
        //}
        //if (dt.Select("SPD01='541' ").Length > 0)
        //{
        //    rp2.DataSource = dt.Select("SPD01='541'").CopyToDataTable();
        //    rp2.DataBind();
        //}
        //if (dt.Select("SPD01='542' ").Length > 0)
        //{
        //    rp3.DataSource = dt.Select("SPD01='542'").CopyToDataTable();
        //    rp3.DataBind();
        //}
        //if (dt.Select("SPD01='529' AND '"+ strDate + "'>WP31 ").Length > 0)
        //{
        //rp2.DataSource = dt.Select("SPD01='529' AND '" + strDate + "'>WP31").CopyToDataTable();
        //rp2.DataBind();
        //}
        //if (dt.Select("SPD01='529' AND '" + strDate + "'<WP31").Length > 0)
        //{
        //rp3.DataSource = dt.Select("SPD01='529' AND '" + strDate + "'<WP31").CopyToDataTable();
        //rp3.DataBind();
        //}

        //rp1.DataSource = dt.Select("SPD01='528' AND '" + strDate + "'>WP31").CopyToDataTable();
        //rp1.DataBind();
        //rp2.DataSource = dt.Select("SPD01='528' AND '" + strDate + "'>WP31").CopyToDataTable();
        //rp2.DataBind();
        //rp3.DataSource = dt.Select("SPD01='528' AND '" + strDate + "'>WP31").CopyToDataTable();
        //rp3.DataBind();

    }


    //public static int id2stock(int id)
    //{
    //    int stock = 0;
    //    Dictionary<int, int> dic = new Dictionary<int, int>();
    //    dic.Add(12998, 410);
    //    dic.Add(16728, 240);
    //    dic.Add(16730, 200);
    //    dic.Add(14038, 800);
    //    dic.Add(11720, 1800);
    //    dic.Add(16732, 500);
    //    dic.Add(14406, 200);
    //    dic.Add(16733, 30);
    //    dic.Add(16734, 180);
    //    dic.Add(16735, 120);
    //    dic.Add(16736, 80);
    //    dic.Add(16737, 120);
    //    dic.Add(12255, 405);
    //    dic.Add(16738, 100);
    //    dic.Add(14330, 155);
    //    dic.Add(16739, 100);
    //    dic.Add(16740, 400);
    //    dic.Add(14354, 453);
    //    dic.Add(14811, 120);
    //    dic.Add(14350, 120);
    //    dic.Add(7446, 2100);
    //    dic.Add(14312, 200);
    //    dic.Add(12525, 50);
    //    dic.Add(16742, 200);

    //    if (dic.ContainsKey(id))
    //        stock = dic[id];
    //    return stock;
    //}


    //public static int FireCount(int id, int stock)
    //{
    //    int i = id2stock(id);
    //    i = Convert.ToInt32(i / stock * 100);
    //    return 100 - i;
    //}
}