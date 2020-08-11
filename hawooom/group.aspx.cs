using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;
using System.Data;

public partial class mobile_group : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetSelProductGup();
            GetAdList();
        }
    }

    //取得廣告列表
    public void GetAdList()
    {
        DataTable dt = CFacade.GetFac.GetFFac.getAdList("MG01");
        rp_slides.DataSource = dt;
        rp_slides.DataBind();
    }

    //取得活動列表
    public void GetSelProductGup()
    {
        DataTable dt = CFacade.GetFac.GetSPMFac.GetGroupSelProducts(3);
        rp_group.DataSource = dt;
        rp_group.DataBind();
    }
}