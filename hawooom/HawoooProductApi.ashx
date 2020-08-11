<%@ WebHandler Language="C#" Class="HawoooProductApi" %>

using Newtonsoft.Json;
using System;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using System.Net;
using hawooo;

public class HawoooProductApi : IHttpHandler
{

    public static bool IfWhitDomain(string domain)
    {
        bool b = false;
        string[] whitDomains = { "localhost", "hawooo" };
        if (whitDomains.Contains(domain))
            b = true;
        return b;
    }

    public void ProcessRequest(HttpContext context)
    {
        string domain = "localhost";

        if (IfWhitDomain(domain))
        {
            context.Response.ContentType = "text/plain";

            if (context.Request["id"] != null)
            {
                try
                {
                    var v = GetProductGroup((Convert.ToInt32(context.Request["id"].ToString())));
                    context.Response.Write(JsonConvert.SerializeObject(v));
                }
                catch
                {
                    context.Response.Write("Request Error");
                }
                finally
                {
                    context.Response.End();
                }
            }
            else
            {
                context.Response.Write("Request Error");
            }

        }
        else
            context.Response.Write("Error");

    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

    public class RequestProduct
    {
        public int oid { get; set; }
    }

    public class ProductGroup
    {
        public int result { get; set; }
        public string code { get; set; }
        public string msg { get; set; }
        public List<Product> data { get; set; }
    }



    public IEnumerable<ProductGroup> GetProductGroup(int id)
    {
        var v = new ProductGroup();
        try
        {
            v.result = 1;
            v.code = "0000";
            v.msg = "Success";
            v.data = GetDataModal.GetProductTransList(id);

        }
        catch (Exception ex)
        {
            v.result = 0;
            v.code = "9999";
            v.msg = "System error";
            v.data = null;

        }
        yield return v;
    }


    public class Product
    {
        public int bid { get; set; } //B01
        public int pid { get; set; } //WP01
        public string name { get; set; } //WP02
        public string en_name { get; set; }//WP23

        public string img { get; set; } //WP08_1
        public string price { get; set; } //WPA06
        public string discount_price { get; set; } //WPA10
        public string view { get; set; } //WP27
        public string tag_id { get; set; } //WP30

        public string tag_name { get; set; }   //WPT02
        public string tag_img { get; set; }   //WPT07

    }
    public class GetDataModal
    {
        private static string con = "Data Source=211.72.12.182,14330;Initial Catalog=HAWOOO;User ID=hawooocs;Password=@54865706999";
        public static DataTable GetProductDt(int SPD01)
        {
            SqlCommand cmd = new SqlCommand();
            string strSql = "SELECT * FROM SPRODUCTSD INNER JOIN WP ON SPD02=WP01 CROSS APPLY (SELECT TOP 1 WPA06,ISNULL(WPA07,0) AS WPA07,WPA10 FROM WPA WHERE WP.WP01=WPA.WP01 AND WPA08=1 ORDER BY WPA06 ASC ) AS DT LEFT JOIN WPTAG ON WP30=WPT01 WHERE SPD01=@SPD01 AND WP07=1  ";
            cmd.CommandText = strSql;
            cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, SPD01));
            return SqlDbmanager.queryBySql(cmd, con);
        }

        public static List<Product> GetProductTransList(int SPD01)
        {
            List<Product> listP = new List<Product>();
            DataTable dt = GetProductDt(SPD01);
            foreach (DataRow dr in dt.Rows)
            {
                decimal price_rm = Math.Round((Convert.ToDecimal(dr["WPA06"].ToString()) - Convert.ToDecimal(dr["WPA07"].ToString())) / (decimal)7.6, 1, MidpointRounding.AwayFromZero);
                decimal oprice_rm = Math.Round(Convert.ToDecimal(dr["WPA10"].ToString()) / (decimal)7.6, 1, MidpointRounding.AwayFromZero);
                Product p = new Product();
                p.bid = Convert.ToInt32(dr["B01"].ToString());
                p.pid = Convert.ToInt32(dr["WP01"].ToString());
                p.name = dr["WP02"].ToString();
                p.en_name = dr["WP23"].ToString();
                p.img = dr["WP08_1"].ToString();
                p.price = price_rm.ToString("#0.00");
                p.discount_price = Math.Round(oprice_rm - price_rm, 1, MidpointRounding.AwayFromZero).ToString("#0.00");
                p.view = dr["WP27"].ToString();
                p.tag_id = dr["WP30"].ToString();
                p.tag_name = dr["WPT02"].ToString();
                p.tag_img = dr["WPT07"].ToString();
                listP.Add(p);
            }
            return listP;
        }
    }

}