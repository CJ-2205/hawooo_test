using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;

public partial class mobile_2018xmasbuy : System.Web.UI.Page
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
            //List<int> listId = new List<int>();
            string img = "https://www.hawooo.com/images/ftp/20181129/packagem.png";
            int id = 0;
            switch (did)
            {

                case 1:
                    {
                        id = 597;
                        img = "https://www.hawooo.com/images/ftp/20181129/packagem.png";
                        break;
                    }
                case 2:
                    {
                        id = 598;
                        img = "https://www.hawooo.com/images/ftp/20181129/b1m.png";
                        break;
                    }
                case 3:
                    {
                        id = 599;
                        img = "https://www.hawooo.com/images/ftp/20181129/b2m.png";
                        break;
                    }
                case 4:
                    {
                        id = 600;
                        img = "https://www.hawooo.com/images/ftp/20181129/b3m.png";
                        break;
                    }
                case 5:
                    {
                        id = 601;
                        img = "https://www.hawooo.com/images/ftp/20181129/b4m.png";
                        break;
                    }
            }
            ScriptManager.RegisterStartupScript(Page, GetType(), "bc", "bcolor(" + did + ");", true);
            bn.Src = img;

            BindProductList(id);
        }
    }



    private DataTable PreOrderDT = new DataTable();
    private DataTable _preOrderSumInfo = new DataTable();
    public void BindProductList(int did)
    {

        if (did > 0)
        {
            SearchProp prop = new SearchProp();
            prop.GoodsState.Add(0);
            prop.GoodsState.Add(1);
            prop.GoodsState.Add(3);
            prop.Cells.Add("SPD05"); //權重
            prop.Cells.Add("SPD06"); //限制數量,庫存
            prop.Cells.Add("SPD07"); //假數量
                                     //SPD02  商品ID-WP01,ORD01=SPD02 ORDERD.ORD01=SPD02,有下單就要扣庫存,sum(ORD06),實際銷售數量,火大於等於60%,(假數量+實際銷售數量)/限制數量,假數量+實際數量>=限制數量,壓soldout
                                     //prop.JoinTxts.Add("INNER JOIN SPRODUCTSD ON SPD02=WP.WP01 AND SPD01=@SPD01 ");
            prop.JoinTxts.Add("INNER JOIN (SELECT SPD01 AS SPD01,SPD02 AS SPD02,SPD05 AS SPD05,SPD06 AS SPD06,SPD07 AS SPD07  FROM SPRODUCTSD WHERE SPD01=@SPD01 ) AS DT ON WP.WP01=DT.SPD02  ");
            prop.WhereTxts.Add("WP05=1");
            prop.OrderBy = "ORDER BY SPD05 DESC";
            //prop.LgType = (this.Master as mobile).LgType;
            prop.LgType = (this.Master as mobile).LgType;
            string sqlTxt = ProductBL.GetProductSqlTxt(prop);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlTxt;
            cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, did));
            DataTable dt = SqlDbmanager.queryBySql(cmd);
            dt = dt.DefaultView.ToTable(true, "WP01", "WP02", "WPA06", "WPA10", "WP08_1", "WP30", "SPD05", "SPD06", "SPD07");
            //DataView dv = new DataView(PreOrderDT);
            //DataTable mdt = dv.ToTable(true, "WP01", "WP08_1", "WP02", "SPD06");

            rp.DataSource = dt;
            rp.DataBind();
        }
        //Response.Write(cmd.CommandText);
    }
}