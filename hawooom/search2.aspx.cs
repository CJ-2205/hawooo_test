using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mobile_search2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["key"] != null)
            {
                string stxt = PbClass.GB2312translateBig5(Request.QueryString["key"].ToString());
                if (stxt != "")
                {
                    BindData(stxt, "ALL");
                    txt_search.Text = stxt;
                    UserSearchEnterKey obj = new UserSearchEnterKey();
                    obj.USEK01 = Guid.NewGuid().ToString();
                    obj.USEK02 = stxt.ToString();
                    obj.USEK03 = Request.AnonymousID.ToString();
                    obj.USEK04 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                    obj.USEK05 = 1;
                    UserSearchEnterKeyFac objFac = new UserSearchEnterKeyFac();
                    objFac.SaveUserSearchEnterKey(obj);
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

        productDT = CFacade.GetFac.GetWPFac.SearchProduct(skey, OrderStr, 1, 200, null, null, null, new List<int> { 1, 3 }, tag);
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
            ScriptManager.RegisterStartupScript(up_serach_bar, typeof(UpdatePanel), "msg", "alert('請輸入搜尋關鍵字');", true);
        }
        else
        {
            Response.Redirect("search.aspx?key=" + txt_search.Text.Trim());
            //BindData(txt_search.Text.Trim());
        }

    }
}