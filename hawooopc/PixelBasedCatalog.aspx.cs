using hawooo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SqlLib;
using NPOI.OpenXml4Net.OPC;
using System.Configuration;


public partial class adm_fbevent_PixelBasedCatalog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            List<SchemaProduct> products = GetProducts();
            hdnProductId.Value = "[" + string.Join(", ", products.Select(x => x.ProductId)) + "]";
            var schemaString = GenerateProductSchemaHtml(products);
            LiteralControl schemaHtml = new LiteralControl(schemaString);
            PlaceHolder1.Controls.Add(schemaHtml);
        }
    }

    private List<SchemaProduct> GetProducts()
    {
        string urlBaseString = @"https://www.hawooo.com/user/productdetail.aspx?id=";
        string imageUrlBaseString = @"https://www.hawooo.com/images/webimgs/";
        var date = DateTime.Now.AddMinutes(-120);

        string sql = "SELECT Name, Brand, Description, ProductId, @urlBaseString + CAST(ProductId AS varchar) Url, @imageUrlBaseString + ImageUrl Image, Min(Price) Price, PriceCurrency, Max(Stock) Stock, 'NewCondition' Condition, " +
            "CASE WHEN WP07 != 1 THEN 'OutOfStock' WHEN WP09 > GETDATE() OR WP10 < GETDATE() THEN 'OutOfStock' WHEN Max(Stock) <= 0 THEN 'OutOfStock' ELSE 'InStock' END Availability FROM " +
            "( " +
            "SELECT WPA01, WP02 Name, BA.BA02 Brand, WP02 Description, WP.WP01 ProductId, WP08_1 ImageUrl, WPA.WPA08, CAST(WPA.WPA06 / 7.6 AS decimal(18, 1)) Price, 'MYR' PriceCurrency, WPB.Stock, WP07, WP09, WP10, " +
            "CASE WHEN WP07 != 1 THEN 'OutOfStock' WHEN WP09 > GETDATE() OR WP10 < GETDATE() THEN 'OutOfStock' WHEN WPB.Stock <= 0 THEN 'OutOfStock' ELSE 'InStock' END Availability " +
            "FROM [HAWOOO].[dbo].[WP] WP WITH(NOLOCK) INNER JOIN[HAWOOO].[dbo].[B] B WITH(NOLOCK) ON WP.B01 = B.B01 INNER JOIN [HAWOOO].[dbo].[BA] BA WITH(NOLOCK) ON B.B01 = BA.B01 " +
            "INNER JOIN [HAWOOO].[dbo].[WPA] WPA WITH(NOLOCK) ON WPA.WP01 = WP.WP01 " +
            "INNER JOIN " +
            "( " +
              "SELECT ISNULL(MIN((NULLIF(D10, 0)) / (NULLIF(WPB04, 0))), 0) AS Stock, " +
                     "WPB02 " +
              "FROM WPB " +
                   "INNER JOIN D ON D01 = WPB03 " +
              "WHERE WPB05 = 1 " +
              "GROUP BY WPB02 " +
            ") AS WPB ON WPB02 = WPA01 " +
            "WHERE WPA05 >= @date OR WP12 >= @date " +
            ") WP " +
            "GROUP BY Name, Brand, Description, ProductId, ImageUrl, PriceCurrency, WP07, WP09, WP10";

        return SqlLib.DapperHelper.Query<SchemaProduct>(sql, new { urlBaseString, imageUrlBaseString, date }, ConfigurationManager.ConnectionStrings["ApiConn"].ToString());
    }

    private string GenerateProductSchemaHtml(List<SchemaProduct> schemaProducts)
    {
        string scripts = string.Empty;
        foreach (var schemaProduct in schemaProducts)
        {
            var script = $"<div itemscope itemtype='http://schema.org/Product'" +
                  $"<meta itemprop='brand' content='{schemaProduct.Brand}'>" +
                  $"<meta itemprop='name' content='{schemaProduct.Name}'>" +
                  $"<meta itemprop='description' content='{schemaProduct.Description}'>" +
                  $"<meta itemprop='productID' content='{schemaProduct.ProductId}'>" +
                  $"<meta itemprop='url' content='{schemaProduct.Url}'>" +
                  $"<meta itemprop='image' content='{schemaProduct.Image}'>" +
                  "<div itemprop='offers' itemscope itemtype='http://schema.org/Offer'>" +
                    $"<link itemprop='availability' href='http://schema.org/{schemaProduct.Availability}'>" +
                    $"<link itemprop='itemCondition' href='http://schema.org/{schemaProduct.Condition}'>" +
                    $"<meta itemprop='price' content='{schemaProduct.Price}'>" +
                    $"<meta itemprop='priceCurrency' content='{schemaProduct.PriceCurrency}'>" +
                  "</div>" +
                "</div>\n";
            scripts += script;
        }
        return scripts;
    }

    private class SchemaProduct
    {
        public string Name { set; get; }  //Title of the item.
        public string Brand { set; get; } //Brand of the item.
        public string Description { set; get; } //Description
        public string ProductId { set; get; } //Retailer's ID for the item.
        public string Url { set; get; } //Complete URL for the product page.
        public string Image { set; get; } //Complete URL for the product page.
        public decimal Price { set; get; } //Current price of the item.
        public string PriceCurrency { set; get; } //Currency for the price, in ISO format (for example, USD).
        public string Availability { set; get; } //Current availability of the item.
        public string Condition { set; get; } //Complete URL for the product page.
    }
}
