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

public partial class user_static_200409hw_staraward : System.Web.UI.Page
{
    private DataTable _source;//取得商品pool
    private List<BrandInfo> _sourceBrandsInfo;//取得品牌優惠pool
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bool ismobile = PbClass.IsMobile();
            if (ismobile)
                Response.Redirect("../mobile/200409hw_staraward.aspx" + Request.Url.Query);

            _sourceBrandsInfo = listBrand();
            _source = BindData(798);

            rp1.DataSource = FilterProduct("1", 1);
            rp1.DataBind();

            //rp2.DataSource = FilterProduct("2", 2);
            //rp2.DataBind();

            //rp3.DataSource = FilterProduct("3", 3);
            //rp3.DataBind();

            //rp4.DataSource = FilterProduct("4", 4);
            //rp4.DataBind();

            //rp5.DataSource = FilterProduct("5", 5);
            //rp5.DataBind();

            //rp6.DataSource = FilterProduct("6", 6);
            //rp6.DataBind();

            //rp7.DataSource = FilterProduct("7", 7);
            //rp7.DataBind();

            //rp8.DataSource = FilterProduct("8", 8);
            //rp8.DataBind();

            //rp9.DataSource = FilterProduct("9", 9);
            //rp9.DataBind();

            //rp10.DataSource = FilterProduct("10", 10);
            //rp10.DataBind();

            rp11.DataSource = FilterProduct("11", 11);
            rp11.DataBind();
        }
    }


    private DataTable BindData(int id)
    {
        SqlCommand cmd = new SqlCommand();
        //折扣優惠期間: WP31優惠開始時間,WP32優惠結束時間
        SearchProp searchProp = new SearchProp();
        searchProp.Cells.Add("B01");
        searchProp.Cells.Add("SPD01");
        searchProp.Cells.Add("WP31");
        searchProp.Cells.Add("WP32");
        searchProp.Cells.Add("SPD05");
        searchProp.Cells.Add("SPD06");
        searchProp.Cells.Add("SPD07");
        searchProp.Cells.Add("SPD08");

        //searchProp.WhereTxts.Add("WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=527)");
        searchProp.LgType = (this.Master as user_user).LgType;
        searchProp.page = 1;
        searchProp.pcount = 1000;
        searchProp.SelectIDS.Add(id);
        searchProp.OrderBy = "ORDER BY SPD05 DESC";
        cmd.CommandText = ProductBL.GetSelectProduct(searchProp);
        DataTable dt = SqlDbmanager.queryBySql(cmd);
        //DataTable bindDt = TransDt(dt);

        return dt;

    }

    private DataTable FilterProduct(string filterString, int groupNum)
    {
        //var filterDt = sDT.Select("SPD08='" + filterString + "'").CopyToDataTable();
        var filterDt = _source.AsEnumerable().Where(v => v.Field<string>("SPD08").Equals(filterString)).CopyToDataTable();
        var filterBI = from data in _sourceBrandsInfo where data._group == groupNum select data;
        filterDt.Columns.Add("BrandImage");
        filterDt.Columns.Add("RankImage");

        int i = 0;

        if (filterDt.Rows.Count >= 5)
        {
            foreach (var item in filterBI)
            {
                filterDt.Rows[i]["BrandImage"] = item._bImage;
                filterDt.Rows[i]["RankImage"] = item._rankImage;

                i++;
            }
        }
        return filterDt;

    }


    public class BrandInfo
    {
        public string _bImage { get; set; }
        public int _group { get; set; }
        public int _orderBy { get; set; }
        public string _rankImage { get; set; }

        public BrandInfo(string bImage, int group, int orderBy, string rankImage)
        {
            _bImage = bImage;
            _group = group;
            _orderBy = orderBy;
            _rankImage = rankImage;
        }
    }


    public List<BrandInfo> listBrand()
    {

        string cm = ConfigurationManager.AppSettings["imgUrl"];
        List<BrandInfo> listBrandsInfo = new List<BrandInfo>();

        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_01_01.png", 1, 1, cm + "ftp/20191127/aw_01.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_01_02.png", 1, 2, cm + "ftp/20191127/aw_02.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_01_03.png", 1, 3, cm + "ftp/20191127/aw_03.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_01_04.png", 1, 4, cm + "ftp/20191127/aw_04.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_01_05.png", 1, 5, cm + "ftp/20191127/aw_05.png"));

        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_02_01.png", 2, 1, cm + "ftp/20191127/aw_01.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_02_02.png", 2, 2, cm + "ftp/20191127/aw_02.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_02_03.png", 2, 3, cm + "ftp/20191127/aw_03.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_02_04.png", 2, 4, cm + "ftp/20191127/aw_04.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_02_05.png", 2, 5, cm + "ftp/20191127/aw_05.png"));

        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_03_01.png", 3, 1, cm + "ftp/20191127/aw_01.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_03_02.png", 3, 2, cm + "ftp/20191127/aw_02.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_03_03.png", 3, 3, cm + "ftp/20191127/aw_03.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_03_04.png", 3, 4, cm + "ftp/20191127/aw_04.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_03_05.png", 3, 5, cm + "ftp/20191127/aw_05.png"));

        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_04_01.png", 4, 1, cm + "ftp/20191127/aw_01.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_04_02.png", 4, 2, cm + "ftp/20191127/aw_02.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_04_03.png", 4, 3, cm + "ftp/20191127/aw_03.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_04_04.png", 4, 4, cm + "ftp/20191127/aw_04.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_04_05.png", 4, 5, cm + "ftp/20191127/aw_05.png"));

        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_05_01.png", 5, 1, cm + "ftp/20191127/aw_01.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_05_02.png", 5, 2, cm + "ftp/20191127/aw_02.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_05_03.png", 5, 3, cm + "ftp/20191127/aw_03.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_05_04.png", 5, 4, cm + "ftp/20191127/aw_04.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_05_05.png", 5, 5, cm + "ftp/20191127/aw_05.png"));

        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_06_01.png", 6, 1, cm + "ftp/20191127/aw_01.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_06_02.png", 6, 2, cm + "ftp/20191127/aw_02.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_06_03.png", 6, 3, cm + "ftp/20191127/aw_03.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_06_04.png", 6, 4, cm + "ftp/20191127/aw_04.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_06_05.png", 6, 5, cm + "ftp/20191127/aw_05.png"));

        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_07_01.png", 7, 1, cm + "ftp/20191127/aw_01.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_07_02.png", 7, 2, cm + "ftp/20191127/aw_02.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_07_03.png", 7, 3, cm + "ftp/20191127/aw_03.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_07_04.png", 7, 4, cm + "ftp/20191127/aw_04.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_07_05.png", 7, 5, cm + "ftp/20191127/aw_05.png"));

        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_08_01.png", 8, 1, cm + "ftp/20191127/aw_01.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_08_02.png", 8, 2, cm + "ftp/20191127/aw_02.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_08_03.png", 8, 3, cm + "ftp/20191127/aw_03.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_08_04.png", 8, 4, cm + "ftp/20191127/aw_04.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_08_05.png", 8, 5, cm + "ftp/20191127/aw_05.png"));

        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_09_01.png", 9, 1, cm + "ftp/20191127/aw_01.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_09_02.png", 9, 2, cm + "ftp/20191127/aw_02.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_09_03.png", 9, 3, cm + "ftp/20191127/aw_03.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_09_04.png", 9, 4, cm + "ftp/20191127/aw_04.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_09_05.png", 9, 5, cm + "ftp/20191127/aw_05.png"));

        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_10_01.png", 10, 1, cm + "ftp/20191127/aw_01.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_10_02.png", 10, 2, cm + "ftp/20191127/aw_02.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_10_03.png", 10, 3, cm + "ftp/20191127/aw_03.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_10_04.png", 10, 4, cm + "ftp/20191127/aw_04.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_10_05.png", 10, 5, cm + "ftp/20191127/aw_05.png"));

        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_11_01.png", 11, 1, cm + "ftp/20191127/aw_01.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_11_02.png", 11, 2, cm + "ftp/20191127/aw_02.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_11_03.png", 11, 3, cm + "ftp/20191127/aw_03.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_11_04.png", 11, 4, cm + "ftp/20191127/aw_04.png"));
        listBrandsInfo.Add(new BrandInfo(cm + "ftp/20200410/logo_11_05.png", 11, 5, cm + "ftp/20191127/aw_05.png"));



        return listBrandsInfo;
    }

}