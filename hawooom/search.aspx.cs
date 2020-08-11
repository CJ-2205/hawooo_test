using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mobile_search : Page
{
    public LangType LgType = LangType.zh;
    protected void Page_Init(object sender, EventArgs e)
    {
        if (Session["A08"] != null)
        {
            Cookie.Set("MAIL", Session["A08"].ToString());
        }

        //string lg = CultureInfo.CurrentCulture.TwoLetterISOLanguageName;
        string lg = "zh";
        if (!Cookie.Get("LG").Equals(""))
        {
            lg = Cookie.Get("LG").ToString();
        }
        if (Session["LG"] != null)
        {
            lg = Session["LG"].ToString();
        }
        if (Request.QueryString["lg"] != null)
        {
            switch (Request.QueryString["lg"])
            {
                case "en":
                    {
                        lg = "en";
                        break;
                    }
                case "zh":
                    {
                        lg = "zh";
                        break;
                    }
            }
        }
        if (lg.Equals("zh"))
        {
            LgType = LangType.zh;
        }
        else if (lg.Equals("en"))
        {
            LgType = LangType.en;
        }

        ViewState["LG"] = LgType;
        Session["LG"] = LgType.ToString();
        Cookie.Set("LG", LgType.ToString());
        ScriptManager.RegisterStartupScript(Page, typeof(Page), "change", "ChangLg('" + LgType.ToString() + "');", true);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["stxt"] != null)
            {
                string stxt = PbClass.SearchTxtAlgo();
                if (stxt != "")
                {
                    BindData(stxt, "ALL");
                    txt_search.Text = stxt;
                }
            }
        }
    }


    public void BindData(string skey, string type)
    {
        HotSearchKeyFac facObj = new HotSearchKeyFac();
        ViewState["key"] = skey;
        DataTable dt = facObj.GetKeyWordList(skey);
        rp_key_list.DataSource = dt;
        rp_key_list.DataBind();
        DataTable productDT = new DataTable();
        List<int> tag = new List<int>();

        string OrderStr = "";
        switch (type)
        {
            case "ALL":
                {
                    OrderStr = "WP01 DESC";
                    break;
                }
            case "NEW":
                {
                    OrderStr = "WP11 DESC";
                    break;
                }
            case "HOT":
                {
                    OrderStr = "WP01 DESC";
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
                    OrderStr = ViewState["WPA06"].ToString();
                    break;
                }
        }

        productDT = CFacade.GetFac.GetWPFac.SearchProduct(skey, OrderStr, 1, 200, null, null, null, new List<int> { 1, 3 }, tag, lgType: (LangType)ViewState["LG"], stagType: SearchProp.EmTagType.IMG);
        rp_product_list.DataSource = productDT;
        rp_product_list.DataBind();

    }

    protected void btn_search_Click(object sender, EventArgs e)
    {
        string _type = "ALL";
        if (hf_type.Value != "")
            _type = hf_type.Value;
        if (ViewState["key"] != null)
            BindData(ViewState["key"].ToString(), _type);
    }

    protected void lnk_search_Click(object sender, EventArgs e)
    {

        if (txt_search.Text.Trim().Equals(""))
        {
            ScriptManager.RegisterStartupScript(Page, typeof(Page), "msg", "alert('請輸入搜尋關鍵字');", true);
        }
        else
        {
            Response.Redirect("search.aspx?stxt=" + txt_search.Text.Trim());
        }

    }
}