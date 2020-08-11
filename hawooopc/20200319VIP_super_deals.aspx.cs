﻿using System;
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

public partial class user_static_20200319VIP_super_deals : System.Web.UI.Page
{
    private DataTable _source;//取得商品pool
    private List<BrandInfo> _sourceBrandsInfo;//取得商品pool

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bool ismobile = PbClass.IsMobile();
            if (ismobile)
                Response.Redirect("../mobile/20200319VIP_super_deals.aspx" + Request.Url.Query);

            _sourceBrandsInfo = listBrand();
            _source = BindData(798);
            Repeater rp = products.FindControl("rp_goods") as Repeater;
            rp.DataSource = _source;
            rp.DataBind();

            GridView1.DataSource = FilterProduct(_source, "A", 1);
            GridView1.DataBind();

            GridView2.DataSource = FilterProduct(_source, "B", 2);
            GridView2.DataBind();
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

    private DataTable FilterProduct(DataTable sDT, string filterString, int groupNum)
    {
        //var filterDt = sDT.Select("SPD08='" + filterString + "'").CopyToDataTable();
        var filterDt = sDT.AsEnumerable().Where(v => v.Field<string>("SPD08").Equals(filterString)).CopyToDataTable();

        var filterBI = from data in _sourceBrandsInfo where data._group == groupNum select data;
        filterDt.Columns.Add("BrandInfo");
        int i = 0;

        //if (filterDt.Rows.Count >= 5)
        //{
            foreach (var item in filterBI)
            {
                filterDt.Rows[i]["BrandInfo"] = item._info;
                i++;
            }
        //}
        return filterDt;

    }


    public class BrandInfo
    {
        public string _info { get; set; }
        public int _group { get; set; }
        public int _orderBy { get; set; }

        public BrandInfo(string info, int group, int orderBy)
        {
            _info = info;
            _group = group;
            _orderBy = orderBy;

        }
    }

    public List<BrandInfo> listBrand()
    {

        List<BrandInfo> listBrandsInfo = new List<BrandInfo>();

        listBrandsInfo.Add(new BrandInfo("總值RM1300滿額贈", 1, 1));
        listBrandsInfo.Add(new BrandInfo("總值RM1300滿額贈", 1, 2));
        listBrandsInfo.Add(new BrandInfo("滿99送10片面膜", 1, 3));
        //listBrandsInfo.Add(new BrandInfo("限時54%OFF", 1, 4));
        //listBrandsInfo.Add(new BrandInfo("限時27%OFF", 1, 5));

        listBrandsInfo.Add(new BrandInfo("總值RM1300滿額贈", 2, 1));
        listBrandsInfo.Add(new BrandInfo("下單送卸妝精露+精華液試用包", 2, 2));
        listBrandsInfo.Add(new BrandInfo("", 2, 3));
        //listBrandsInfo.Add(new BrandInfo("滿99送10片面膜", 2, 4));
        //listBrandsInfo.Add(new BrandInfo("總值RM1300滿額贈", 2, 5));

        listBrandsInfo.Add(new BrandInfo("滿99送10片面膜", 3, 1));
        listBrandsInfo.Add(new BrandInfo("滿99送10片面膜", 3, 2));
        listBrandsInfo.Add(new BrandInfo("總值RM1300滿額贈", 3, 3));
        listBrandsInfo.Add(new BrandInfo("限時42% OFF", 3, 4));
        listBrandsInfo.Add(new BrandInfo("全館限時 UP TO 50% OFF", 3, 5));

        listBrandsInfo.Add(new BrandInfo("總值RM1300滿額贈", 4, 1));
        listBrandsInfo.Add(new BrandInfo("滿168送面膜保濕組", 4, 2));
        listBrandsInfo.Add(new BrandInfo("滿99送10片面膜", 4, 3));
        listBrandsInfo.Add(new BrandInfo("下單送卸妝精露+精華液試用包", 4, 4));
        listBrandsInfo.Add(new BrandInfo("限時買1送2", 4, 5));

        listBrandsInfo.Add(new BrandInfo("限時26% OFF", 5, 1));
        listBrandsInfo.Add(new BrandInfo("限時47% OFF", 5, 2));
        listBrandsInfo.Add(new BrandInfo("全館滿RM288現折8%", 5, 3));
        listBrandsInfo.Add(new BrandInfo("限時RM19.8/入", 5, 4));
        listBrandsInfo.Add(new BrandInfo("滿額送蠟筆+保溫瓶", 5, 5));

        listBrandsInfo.Add(new BrandInfo("全館滿RM388 現折8%", 6, 1));
        listBrandsInfo.Add(new BrandInfo("全館滿RM188 現折8%", 6, 2));
        listBrandsInfo.Add(new BrandInfo("限時26% OFF", 6, 3));
        listBrandsInfo.Add(new BrandInfo("全館滿RM388 現折8%", 6, 4));
        listBrandsInfo.Add(new BrandInfo("全館滿RM188 現折8%", 6, 5));

        listBrandsInfo.Add(new BrandInfo("全館滿350折25", 7, 1));
        listBrandsInfo.Add(new BrandInfo("限時RM166 OFF", 7, 2));
        listBrandsInfo.Add(new BrandInfo("全館滿300折20", 7, 3));
        listBrandsInfo.Add(new BrandInfo("全館滿299折20", 7, 4));
        listBrandsInfo.Add(new BrandInfo("滿額送髮根精華+面膜+原生凍/養紅顏 ", 7, 5));

        listBrandsInfo.Add(new BrandInfo("全館滿350折25", 8, 1));
        listBrandsInfo.Add(new BrandInfo("全館滿199現折5%", 8, 2));
        listBrandsInfo.Add(new BrandInfo("全館滿300折20", 8, 3));
        listBrandsInfo.Add(new BrandInfo("全館滿350折25", 8, 4));
        listBrandsInfo.Add(new BrandInfo("限時RM104 OFF", 8, 5));

        listBrandsInfo.Add(new BrandInfo("總值RM1300滿額贈", 9, 1));
        listBrandsInfo.Add(new BrandInfo("下單送隔離乳+滿額送RM145好禮", 9, 2));
        listBrandsInfo.Add(new BrandInfo("全館限時UP TO 55% OFF", 9, 3));
        listBrandsInfo.Add(new BrandInfo("限時6% OFF", 9, 4));
        listBrandsInfo.Add(new BrandInfo("全館限時 UP TO 50% OFF", 9, 5));

        listBrandsInfo.Add(new BrandInfo("限時51%OFF", 10, 1));
        listBrandsInfo.Add(new BrandInfo("全館 UP TO 20% OFF", 10, 2));
        listBrandsInfo.Add(new BrandInfo("限時32%OFF", 10, 3));
        listBrandsInfo.Add(new BrandInfo("全館限時 UP TO 50% OFF", 10, 4));
        listBrandsInfo.Add(new BrandInfo("限時買1送1", 10, 5));

        listBrandsInfo.Add(new BrandInfo("全館UP TO 30% OFF", 11, 1));
        listBrandsInfo.Add(new BrandInfo("全館UP TO 20% OFF", 11, 2));
        listBrandsInfo.Add(new BrandInfo("全館UP TO 10% OFF", 11, 3));
        listBrandsInfo.Add(new BrandInfo("全館UP TO 10% OFF", 11, 4));
        listBrandsInfo.Add(new BrandInfo("全館UP TO 20% OFF", 11, 5));



        return listBrandsInfo;
    }
}