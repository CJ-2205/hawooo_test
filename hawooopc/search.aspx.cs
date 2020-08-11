using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;
using hawooo;
using System.Data;
using System.Linq;
using System.Text;

public partial class user_search : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        string u = Request.ServerVariables["HTTP_USER_AGENT"].ToLower();
        bool ismobile = PbClass.isMobile(u);
        if (Session["desktop"] == null)
        {
            if (ismobile)
            {
                Response.Redirect("../mobile/search.aspx" + Request.Url.Query);
                //ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "msg", "location.href=''", true);
            }
        }
    }

    //public string TransTxt()
    //{
    //    string stxt = Request.QueryString.ToString();
    //    stxt = stxt.Replace("H&J", "H%26J");
    //    string[] splitAry = stxt.Split('&');
    //    int index = Array.IndexOf(splitAry, "stxt");
    //    var val = splitAry.FirstOrDefault(v => v.Contains("stxt"));
    //    stxt = val.Split('=')[1];
    //    stxt = Server.UrlDecode(stxt);
    //    stxt = PbClass.GB2312translateBig5(stxt);
    //    stxt = stxt.Replace("臺", "台");
    //    return stxt;
    //}
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindClass();
            if (Request.QueryString["stxt"] != null)
            {

                string stxt = PbClass.SearchTxtAlgo();
                //Response.Write(stxt);

                if (stxt != "")
                {

                    BindData(stxt, "ALL");

                    //UserSearchEnterKey obj = new UserSearchEnterKey();
                    //obj.USEK01 = Guid.NewGuid().ToString();
                    //obj.USEK02 = stxt.ToString();
                    //obj.USEK03 = Request.AnonymousID.ToString();
                    //obj.USEK04 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                    //obj.USEK05 = 1;
                    //UserSearchEnterKeyFac objFac = new UserSearchEnterKeyFac();
                    //objFac.SaveUserSearchEnterKey(obj);
                }
            }
        }
    }
    public void BindClass()
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("SELECT C01,");
        switch ((this.Master as user_user).LgType)
        {
            case LangType.zh:
                sb.Append("C06 ");
                break;
            case LangType.en:
                sb.Append("(Case when ISNULL(C06_EN,'')='' then C06 else C06_EN end) as C06 ");
                break;
        }
        sb.Append("FROM C ");
        sb.Append("WHERE C02=1 ");
        sb.Append("AND C09=1 ");
        sb.Append("AND C03=0 ");
        sb.Append("ORDER BY C07 DESC ");
        DataTable dt = SqlDbmanager.queryBySql(sb.ToString());
        rp_class_list.DataSource = dt;
        rp_class_list.DataBind();
    }

    public void BindData(string skey, string type)
    {
        HotSearchKeyFac facObj = new HotSearchKeyFac();
        ViewState["key"] = skey;
        DataTable dt = facObj.GetKeyWordList(skey);
        rp_key_list.DataSource = dt;
        rp_key_list.DataBind();
        setRepeaterFormat(rp_key_list, 5);
        DataTable productDT = new DataTable();

        //判斷類別勾選
        List<int> selClassIds = new List<int>();
        foreach (RepeaterItem item in rp_class_list.Items)
        {
            CheckBox chk = item.FindControl("chk_class") as CheckBox;
            if (chk.Checked == true)
            {
                selClassIds.Add(Convert.ToInt32(((HiddenField)item.FindControl("hf_C01")).Value));
            }
        }

        //價格判斷
        int minMoney = 0;
        int maxMoney = 99999;
        if (p1.Checked)
        {
            maxMoney = 50;
        }
        if (p2.Checked)
        {
            minMoney = 50;
            maxMoney = 100;
        }
        if (p3.Checked)
        {
            minMoney = 100;
            maxMoney = 150;
        }
        if (p4.Checked)
        {
            minMoney = 150;
        }


        //Tag判斷
        List<int> tag = new List<int>();
        if (s1.Checked)
        {
            tag.Add(2);
        }
        if (s2.Checked)
        {
            tag.Add(1);
        }
        if (s3.Checked)
        {
            tag.Add(3);
        }

        ////賣場判斷
        //List<int> market = new List<int>();
        //if (m1.Checked == true)
        //{
        //    market.Add(1);
        //}



        //if (market.Count == 0)
        //{
        //    market.Add(1);
        //    market.Add(3);
        //}

        string orderStr = "";
        switch (type)
        {
            case "ALL":
                {
                    orderStr = "WP01 DESC";
                    break;
                }
            case "NEW":
                {
                    orderStr = "WP11 DESC";
                    break;
                }
            case "HOT":
                {
                    orderStr = "WP01 DESC";
                    tag.Add(2);
                    break;
                }
            case "PRICE":
                {
                    if (ViewState["WPA06"] == null)
                        ViewState["WPA06"] = "WPA06 ASC";
                    else if (ViewState["WPA06"].ToString().Equals("WPA06 ASC"))
                        ViewState["WPA06"] = "WPA06 DESC";
                    else if (ViewState["WPA06"].ToString().Equals("WPA06 DESC"))
                        ViewState["WPA06"] = "WPA06 ASC";
                    orderStr = ViewState["WPA06"].ToString();
                    break;
                }
        }

        productDT = CFacade.GetFac.GetWPFac.SearchProduct(skey, orderStr, 1, 200, selClassIds, minMoney, maxMoney, null, tag, lgType: (this.Master as user_user).LgType, stagType: SearchProp.EmTagType.TEXT);
        rp_product_list.DataSource = productDT;
        rp_product_list.DataBind();

    }

    private void setRepeaterFormat(Repeater rp, int count)
    {
        for (int i = 0; i < rp.Items.Count; i++)
        {
            if (i == 0 || (i % count) == 0)
            {
                ((Literal)rp.Items[i].FindControl("lit_ul_start")).Text = @"<li><ul class=""am-avg-sm-5 am-cf"">";
                continue;
            }

            if ((i == count - 1) || ((i + 1) % count) == 0 || (i == rp.Items.Count - 1))
            {
                ((Literal)rp.Items[i].FindControl("lit_ul_end")).Text = @"</ul></li>";
                continue;
            }

        }
    }
    protected void btn_search_Click(object sender, EventArgs e)
    {
        string _type = "ALL";
        if (hf_type.Value != "")
            _type = hf_type.Value;
        if (ViewState["key"] != null)
            BindData(ViewState["key"].ToString(), _type);
    }

    protected void rp_key_list_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

    }
}