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

public partial class user_static_200514_rayasale_valuebuy : System.Web.UI.Page
{
   protected int EventIdOfHotDeal = 782; // 958;
    protected int EventIdOfValueBuy = 782; // 959;
    protected int EventIdOfHighlightedBrand = 782; // 960;

    protected int ProductAmountOfHotDeal = 8;
    protected int ProductAmountOfValueBuy = 8;
    protected int ProductAmountOfHighlightedBrand = 8;


    private string eventId = "EVENT0513";
    private int[] _eids = { 958, 959, 960 };

    protected void Page_Load(object sender, EventArgs e)
    {
        bool ismobile = PbClass.IsMobile();
        if (ismobile)
            Response.Redirect("../mobile/200514_rayasale_valuebuy.aspx" + Request.Url.Query);//2020momsday2.aspx��אּ�o�����ʭ����W��

        if (!IsPostBack)
        {
            BindProductOfValueBuy(this.EventIdOfValueBuy, this.ProductAmountOfValueBuy);   
            BindTop8ClassData(); // RP of 6 Categories.
         
            //BindRandom15Data();
            // Useless?
        }
    }

    //private void BindRandom15Data()
    //{
    //    DataTable dt = GetGoods((this.Master as user_user).LgType, "top15");
    //    Repeater rp = products10.FindControl("rp_goods") as Repeater;
    //    rp.DataSource = dt;
    //    rp.DataBind();
    //}
    private void BindProductOfValueBuy(int EventId, int ProductAmount = 0)
    {
        DataTable Dt = GetDataDt(EventId);//�a�J���� ID�C

        if (Dt.Rows.Count > 0)
        {
            if (ProductAmount > 0)
            {
                Dt = Dt.AsEnumerable().Take(ProductAmount).CopyToDataTable();//�a�J n ���ӫ~�C
            }

            Repeater rp = products1.FindControl("rp_goods") as Repeater; //product1�O�e��<uc1:products>��ID
            rp.DataSource = Dt;
            rp.DataBind();
        }
    }

    /// <summary>
    /// ���ʰӫ~��ƪ�
    /// </summary>
    /// <param name="id">���ʽs��</param>
    /// <returns></returns>
    private DataTable GetDataDt(int id)
    {
        SqlCommand cmd = new SqlCommand();
        //�馩�u�f����: WP31�u�f�}�l�ɶ�,WP32�u�f�����ɶ�
        SearchProp searchProp = new SearchProp();
        searchProp.Cells.Add("SPD01");
        searchProp.Cells.Add("WP31");
        searchProp.Cells.Add("WP32");
        searchProp.Cells.Add("SPD05");
        searchProp.LgType = (this.Master as user_user).LgType;
        searchProp.page = 1;
        searchProp.pcount = 1000;
        searchProp.SelectIDS.Add(id);
        searchProp.OrderBy = "ORDER BY SPD05 DESC";
        cmd.CommandText = ProductBL.GetSelectProduct(searchProp);
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }

    // RP of 6 Categories.
    private void BindTop8ClassData()
    {
        DataTable dt = GetGoods((this.Master as user_user).LgType, "top4");
        if (dt.Rows.Count > 0)
        {
            if (dt.Select("CNAME='�m��'").Length > 0)
            {
                Repeater rp3 = products2.FindControl("rp_goods") as Repeater;
                rp3.DataSource = dt.Select("CNAME='�m��'").Take(8).CopyToDataTable();
                rp3.DataBind();
            }
            if (dt.Select("CNAME='�O�i'").Length > 0)
            {
                Repeater rp4 = products3.FindControl("rp_goods") as Repeater;
                rp4.DataSource = dt.Select("CNAME='�O�i'").Take(8).CopyToDataTable();
                rp4.DataBind();
            }
            if (dt.Select("CNAME='�O��'").Length > 0)
            {
                Repeater rp5 = products4.FindControl("rp_goods") as Repeater;
                rp5.DataSource = dt.Select("CNAME='�O��'").Take(8).CopyToDataTable();
                rp5.DataBind();
            }
            if (dt.Select("CNAME='�ͬ�'").Length > 0)
            {
                Repeater rp6 = products5.FindControl("rp_goods") as Repeater;
                rp6.DataSource = dt.Select("CNAME='�ͬ�'").Take(8).CopyToDataTable();
                rp6.DataBind();
            }
            if (dt.Select("CNAME='����'").Length > 0)
            {
                Repeater rp7 = products6.FindControl("rp_goods") as Repeater;
                rp7.DataSource = dt.Select("CNAME='����'").Take(8).CopyToDataTable();
                rp7.DataBind();
            }
            if (dt.Select("CNAME='����'").Length > 0)
            {
                Repeater rp8 = products7.FindControl("rp_goods") as Repeater;
                rp8.DataSource = dt.Select("CNAME='����'").Take(8).CopyToDataTable();
                rp8.DataBind();
            }
        }
    }

    /// <summary>
    /// �ӫ~��ƪ�
    /// </summary>
    /// <param name="lg">�y�t</param>
    /// <param name="et">����</param>
    /// <returns></returns>
    public DataTable GetGoods(LangType lg, string et = "")
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("SELECT ");
        if (et == "top15")
        {
            sb.Append("TOP 15 ");
        }
        sb.Append("B01,");
        sb.Append("WP01,");
        sb.Append("WP18,");
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
        sb.Append("CAST((OPrice-Price) as decimal) as decreaseAmount,");
        sb.Append("CNAME,VRANK ");
        sb.Append("FROM WP ");
        sb.Append("INNER JOIN ProductPriceView ON PID=WP01 ");
        sb.Append("LEFT JOIN WPTAG ON WP30=WPT01 ");
        sb.Append("INNER JOIN "+ eventId + " AS T ON T.PID=WP01 ");//EVENT0513 �C�����ʿ�~���ק�
        sb.Append("WHERE NOT EXISTS");
        sb.Append("(SELECT SPD02 FROM SPRODUCTSD WHERE SPD01 IN (");
        string str_eids = "";
        foreach (int eid in _eids)
        {
            str_eids += eid.ToString() + ",";
        }
        str_eids = str_eids.TrimEnd(',');
        sb.Append(str_eids);
        sb.Append(") AND WP01=SPD02) ");
        if (et == "top4")
        {
            sb.Append("AND WP01!=21569 ");
            sb.Append("AND VRANK<12 ");
            //sb.Append("ORDER BY WP18 DESC ");
        }
        if (et == "top15")
        {
            sb.Append("AND VRANK>=12 ");
            sb.Append("ORDER BY NEWID()");
        }
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sb.ToString();
        var dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }
}