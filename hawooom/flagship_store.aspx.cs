using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;

public partial class mobile_static_flagship_store : System.Web.UI.Page
{
    public BrandFilterCs _filter = new BrandFilterCs();
    BrandInfoFacCs _brandInfo = new BrandInfoFacCs();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindLg();
            //首頁6個
            BindFlagDt();
            BindBrandDt();
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
    public void BindFlagDt()
    {
        _filter.type = 2;
        DataTable dtFlagShop = _brandInfo.GetBrandDt(_filter).AsEnumerable().Take(6).CopyToDataTable();
        RpFlagship.DataSource = dtFlagShop;
        RpFlagship.DataBind();
    }

    public DataTable _dt = new DataTable();
    public void BindBrandDt()
    {
        _filter.type = null;
        DataTable dtBrandClass = _brandInfo.GetBrandClassDt(_filter);
        if (dtBrandClass.Rows.Count > 0)
        {
            foreach (DataRow dr in dtBrandClass.DefaultView.ToTable(true, "CID").Rows)
            {
                DataRow[] drs = dtBrandClass.Select("CID=" + dr["CID"].ToString());
                if (drs.Length > 0)
                {
                    _dt = drs.Take(6).CopyToDataTable();
                    BindRp(dr["CID"].ToString());
                }
            }
        }
    }

    public void BindRp(string cid)
    {
        switch (cid)
        {
            case "16":
                {
                    RpMakeUp.DataSource = _dt;
                    RpMakeUp.DataBind();
                    break;
                }
            case "42":
                {
                    RpSkincare.DataSource = _dt;
                    RpSkincare.DataBind();
                    break;
                }
            case "43":
                {
                    RpSupplements.DataSource = _dt;
                    RpSupplements.DataBind();
                    break;
                }
            case "47":
                {
                    RpFood.DataSource = _dt;
                    RpFood.DataBind();
                    break;
                }
            case "48":
                {
                    RpLiving.DataSource = _dt;
                    RpLiving.DataBind();
                    break;
                }
            case "49":
                {
                    RpBaby.DataSource = _dt;
                    RpBaby.DataBind();
                    break;
                }
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




    protected void lnk_search_Click(object sender, EventArgs e)
    {
        Response.Redirect("flagship_store_search.aspx?srh=" + txt_search.Text.Trim());
    }
}