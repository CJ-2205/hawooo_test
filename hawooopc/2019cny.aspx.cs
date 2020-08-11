using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;

public partial class user_2019cny : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindBrand();
            BindInfo();
        }
    }

    public void BindInfo()
    {
        string sqlTxt = "SELECT TOP 4 *,100 as WPA06,200 as WPA10,'' as WPT07 FROM WP ";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sqlTxt;
        DataTable dt = new DataTable();
        dt = SqlDbmanager.queryBySql(cmd);
        rp1.DataSource = dt;
        rp1.DataBind();

        rp2.DataSource = dt;
        rp2.DataBind();

        rp3.DataSource = dt;
        rp3.DataBind();
    }

    private void BindBrand()
    {
        List<BrandCs> list = listBrand();
        rpBrand.DataSource = listBrand();
        rpBrand.DataBind();
    }
    public class BrandCs
    {
        public int IND { get; set; }
        public int BID { get; set; }
        public string IMG { get; set; }
        public string NOTE { get; set; }
        public string LOGO { get; set; }
        public string NAME { get; set; }
        public BrandCs(int _IND, int _BID, string _IMG, string _NOTE, string _LOGO, string _NAME)
        {
            IND = _IND;
            BID = _BID;
            IMG = _IMG;
            NOTE = _NOTE;
            LOGO = _LOGO;
            NAME = _NAME;
        }

    }

    public List<BrandCs> listBrand()
    {
        List<BrandCs> listBc = new List<BrandCs>();
        listBc.Add(new BrandCs(1, 208, "bn_03", " Up to 67% off", "logo_03", "Dr.Cink"));
        listBc.Add(new BrandCs(2, 235, "bn_04", "Up to 60% off 再享滿額折", "logo_04", "Dv"));
        listBc.Add(new BrandCs(3, 222, "bn_05", "Up to 40% off 再享滿額送", "logo_05", "Dr.Lady"));
        listBc.Add(new BrandCs(4, 8, "bn_06", " Up to 51% off", "logo_06", "FM Shoes"));
        return listBc;
    }

}