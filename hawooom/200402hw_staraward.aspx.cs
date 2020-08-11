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
using System.Web.UI.HtmlControls;
using System.Text;

public partial class mobile_static_200402hw_staraward : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindProduct();
        }
    }

    public class Product
    {
        public string _title { get; set; }
        public string _name { get; set; }
        public string _image { get; set; }
        public Product(string title, string name, string image)
        {
            _title = title;
            _name = name;
            _image = image;
        }
    }

    private void BindProduct()
    {
        string cm_a = ConfigurationManager.AppSettings["imgUrl"] + "/webimgs/";

        List<Product> list = new List<Product>();

        list.Add(new Product("Best Toner", "DR.CINK 花蜜酵母賦活精華露200ml", cm_a + "n20191230095814796.jpg"));
        list.Add(new Product("Best Home&<br />Living & Mum", "CHECK2CHECK C&H聯名冰香洗髮沐浴精 500ml", cm_a + "n20190419103344228.jpg"));
        list.Add(new Product("Best Beauty Care", "DV 醇養妍美白飲 膠原蛋白穀胱甘肽", cm_a + "n20200331093846133.jpg"));
        list.Add(new Product("Best Foundation", "NAF 仿毛流三叉戟眉彩梳 3色", cm_a + "n20190103035234114.jpg"));
        list.Add(new Product("Best Food", "快車肉乾 特厚肉乾任選多包組", cm_a + "n20200330124237895.jpg"));

        rpBrand.DataSource = list;
        rpBrand.DataBind();
    }
}