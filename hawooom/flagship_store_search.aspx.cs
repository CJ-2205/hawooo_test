using System;
using System.Activities.Statements;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;

public partial class mobile_static_flagship_store_search : System.Web.UI.Page
{
    public BrandFilterCs _filter = new BrandFilterCs();
    public DataTable _dtFlagShop = new DataTable();
    BrandInfoFacCs _brandInfo = new BrandInfoFacCs();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            BindLg();
            if (Request.QueryString["srh"] != null)
            {
                txt_search.Text = Request.QueryString["srh"].ToString().Trim();
                _filter.name = txt_search.Text;
            }
            _dtFlagShop = _brandInfo.GetBrandDt(_filter);
            BindArea();
        }

    }

    public void BindLg()
    {
        LangType lg = (this.Master as mobile).LgType; //正式 LangType 
                                                      //LangType lg = LangType.en; //測試
        if (lg.Equals(LangType.en))//英文版
        {
            _filter.language = "en";
        }
        else if (lg.Equals(LangType.zh))
        {
            _filter.language = "zh";
        }
    }
    protected void lnk_search_Click(object sender, EventArgs e)
    {
        BindLg();
        _filter.name = txt_search.Text.Trim();
        _dtFlagShop = _brandInfo.GetBrandDt(_filter);
        BindArea();
    }


    private DataTable _GetArea;

    public DataTable GetArea
    {
        get
        {
            if (_GetArea == null)
            {
                DataTable dt = new DataTable();
                dt.Columns.Add("Area");
                for (int I = 0; I <= 25; I++)
                {
                    DataRow dr = dt.NewRow();
                    dr["Area"] = Convert.ToChar(65 + I).ToString();
                    dt.Rows.Add(dr);
                }
                DataRow drLast = dt.NewRow();
                drLast["Area"] = "0-9";
                dt.Rows.InsertAt(drLast, 0);
                _GetArea = dt;
            }
            return _GetArea;
        }


    }

    public void BindArea()
    {
        RpArea.DataSource = GetArea;
        RpArea.DataBind();
    }

    protected void RpArea_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Literal litArea = (Literal)e.Item.FindControl("litArea");
        Repeater rp = (Repeater)e.Item.FindControl("RpBrand");
        DataRow[] drs;

        if (litArea.Text.Equals("0-9"))
            drs = _dtFlagShop.Select("T>='0' AND T<='9' ");
        else
            drs = _dtFlagShop.Select("T='" + litArea.Text + "' ");

        if (drs.Length > 0)
        {
            rp.DataSource = drs.CopyToDataTable();
            rp.DataBind();
        }
        else
        {
            e.Item.Visible = false;
        }


    }

    public class BrandFilterCs
    {
        public int? id { get; set; }
        public string name { get; set; }

        public int? type { get; set; }

        public int? category { get; set; }

        public string language { get; set; }

    }

    public class BrandInfoFacCs
    {
        public DataTable GetBrandDt(BrandFilterCs filter)
        {
            SqlCommand cmd = new SqlCommand();
            string strSql = @"SELECT  
SUBSTRING(B45,1,1) AS T,
B.B01 AS 'BID',";
            if (filter.language.Equals("zh"))
            {
                strSql += "CASE WHEN ISNULL(B33,'')='' THEN B45 ELSE B33 END AS 'NAME',";
            }
            else if (filter.language.Equals("en"))
            {
                strSql += "B45 AS 'NAME',";
            }

            strSql += @"B23 AS 'LOGO' 
FROM B 
INNER JOIN BA ON B.B01=BA.B01   
WHERE B19=1 AND BA09=1 ";
            if (filter.id != null)
            {
                strSql += "AND B.B01=@B01 ";
                cmd.Parameters.Add(SafeSQL.CreateInputParam("B01", SqlDbType.Int, filter.id));
            }
            if (!string.IsNullOrEmpty(filter.name))
            {
                strSql += "AND (B.B45 LIKE '%'+@BNAME+'%' OR B.B33 LIKE '%'+@BNAME+'%') ";
                cmd.Parameters.Add(SafeSQL.CreateInputParam("BNAME", SqlDbType.NVarChar, filter.name));
            }
            if (filter.type != null)
            {
                strSql += "AND B.B31=@B31 ";
                cmd.Parameters.Add(SafeSQL.CreateInputParam("B31", SqlDbType.Int, filter.type));
            }
            strSql += " ORDER BY B45 ASC ";
            cmd.CommandText = strSql;
            return SqlDbmanager.queryBySql(cmd);
        }


        public DataTable GetBrandClassDt(BrandFilterCs filter)
        {
            SqlCommand cmd = new SqlCommand();
            string strSql = @"SELECT DISTINCT  
SUBSTRING(B45,1,1) AS T,
B.B01 AS 'BID',";
            if (filter.language.Equals("zh"))
            {
                strSql += "CASE WHEN ISNULL(B33,'')='' THEN B45 ELSE B33 END AS 'NAME',";
            }
            else if (filter.language.Equals("en"))
            {
                strSql += "B45 AS 'NAME',";
            }
            strSql += @"B23 AS 'LOGO',C.C01 AS 'CID' FROM B 
INNER JOIN WP  ON WP.B01=B.B01 
INNER JOIN BA ON B.B01=BA.B01 
INNER JOIN  WPCLS ON WPC02=WP.WP01
INNER JOIN C ON WPC03=C.C01
WHERE WP07=1 AND GETDATE() BETWEEN WP09 AND WP10 AND C09=1 AND C03=0 AND B19=1 AND BA09=1 ";

            if (filter.id != null)
            {
                strSql += "AND B.B01=@B01";
                cmd.Parameters.Add(SafeSQL.CreateInputParam("B01", SqlDbType.Int, filter.id));
            }
            if (!string.IsNullOrEmpty(filter.name))
            {
                strSql += "AND (B.B45 LIKE '%'+@BNAME+'%' OR B.B33 LIKE '%'+@BNAME+'%') ";
                cmd.Parameters.Add(SafeSQL.CreateInputParam("BNAME", SqlDbType.NVarChar, filter.name));
            }
            if (filter.type != null)
            {
                strSql += "AND B.B31=@B31 ";
                cmd.Parameters.Add(SafeSQL.CreateInputParam("B31", SqlDbType.Int, filter.type));
            }
            if (filter.category != null)
            {
                strSql += "AND C.C01=@C01 ";
                cmd.Parameters.Add(SafeSQL.CreateInputParam("C01", SqlDbType.Int, filter.category));
            }

            cmd.CommandText = strSql;

            return SqlDbmanager.queryBySql(cmd);
        }

    }
}