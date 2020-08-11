using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_2017newyeardetail : System.Web.UI.Page
{
    [System.Web.Services.WebMethod]
    public static string GetCP(string stime, string etime, string GB01)
    {
        string msg = "";
        if (DateTime.Now < Convert.ToDateTime(stime))
        {
            msg = "尚未到領取時間";
        }
        else if (DateTime.Now > Convert.ToDateTime(etime))
        {
            msg = "已超過領取時間";
        }
        else
        {
            if (HttpContext.Current.Session["A01"] != null)
            {
                msg = CFacade.GetFac.GetGAFac.JoinEvent((HttpContext.Current.Session["A01"].ToString()), DateTime.Now.ToString("yyyy-MM-dd HH:mm"), GB01);
            }
            else
            {
                msg = "請先登入會員";
            }
        }
        return msg.ToUpper();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["type"] != null)
            {
                string u = Request.ServerVariables["HTTP_USER_AGENT"].ToLower();
                bool ismobile = PbClass.isMobile(u);
                if (ismobile)
                {
                    Response.Redirect("/mobile/2017newyeardetail.aspx?type=" + Request.QueryString["type"].ToString());
                }
                bindDT(Request.QueryString["type"].ToString());
            }
            else
            {
                bindDT("A");
            }
        }
    }
    private void bindProduct(int eid)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        List<string> qList = new List<string>();
        qList.Add("WP.WP01 IN (SELECT SPD02 FROM SPRODUCTSD WHERE SPD01=@SPD01)");
        cmd.Parameters.Add(SafeSQL.CreateInputParam("SPD01", SqlDbType.Int, eid));
        cmd.CommandText = CFacade.GetFac.GetWPFac.GetProductListSql2(null, qList, null, "ORDER BY WP27 DESC OFFSET 0 ROWS FETCH NEXT 100 ROWS ONLY", null, true);
        dt = SqlDbmanager.queryBySql(cmd);
        rp_product_list.DataSource = dt;
        rp_product_list.DataBind();
    }
    private void bindDT(string Type)
    {
        LiteralControl _header = new LiteralControl();

        switch (Type)
        {
            case "A": //2017年度暢銷金榜
                {
                    bindProduct(53);
                    _header.Text = @"<div class='am-show-md-up'>
                    <div class='fullBanner'><a href='' target='_blank'><img src='http://edm.hawooo.com/20170112/pageA_banner.png' alt='年度暢銷金榜,全部免運'></a></div>
                    @EVENT                    
                    </div>
                    <div class='am-container' style='margin-top:20px;margin-bottom:20px;'>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=1852' target='_blank'><img src='http://edm.hawooo.com/20170112/pageA_01.png' alt='BHK's奢光錠 穀胱甘太 (60顆瓶裝)'></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=1770' target='_blank'><img src='http://edm.hawooo.com/20170112/pageA_02.png' alt='BHK's逆痕錠 (30顆瓶裝)'></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=4363' target='_blank'><img src='http://edm.hawooo.com/20170112/pageA_03.png' alt='TS6 護一生 私密嫩白化妝水 100mL'></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=6055' target='_blank'><img src='http://edm.hawooo.com/20170112/pageA_04.png' alt='KA'FEN我的專屬麥克風'></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=1379' target='_blank'><img src='http://edm.hawooo.com/20170112/pageA_05.png' alt='LA BEAU 淨膚淡斑美白菁華 30ml  '></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=5076' target='_blank'><img src='http://edm.hawooo.com/20170112/pageA_06.png' alt='Propolinse蜂膠漱口水 600ml'></a>
                    </div>
                    </div>";
                    break;
                }
            case "B":
                {
                    break;
                }
            case "C": //90%off
                {
                    bindProduct(54);
                    _header.Text = @"<div class='am-show-md-up'> 
                    <div class='fullBanner'><a href='' target='_blank'><img src='http://edm.hawooo.com/20170112/pageC_banner.png' alt='Crazy Clearance Sales,Up to 90%OFF,好便宜，不买吗？'></a></div>
                    @EVENT                    
                    </div>
                    <div class='am-container' style='margin-top:20px;margin-bottom:20px;'>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/brandproductdetail.aspx?pid=2269&bid=10' target='_blank'><img src='http://edm.hawooo.com/20170112/pageC_01.png' alt='Douxi凍齡熬夜奇蹟霜'></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/brandproductdetail.aspx?pid=2229&bid=10' target='_blank'><img src='http://edm.hawooo.com/20170112/pageC_02.png' alt='Douxi薏沛健康機能水 255ml'></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=5442' target='_blank'><img src='http://edm.hawooo.com/20170112/pageC_03.png' alt='Realwoman 青木瓜膠原蛋白粉 (100g/包) 三入'></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=6925' target='_blank'><img src='http://edm.hawooo.com/20170112/pageC_04.png' alt='肌膚呵護福袋組 （V.CI5蠶絲肌肽修護精質萃（30ml）＋RONASKIN微晶煥膚霜（60ml）＋價值RM69.90的護膚品）'></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=6926' target='_blank'><img src='http://edm.hawooo.com/20170112/pageC_05.png' alt='驅黑淨白福袋組（涵沛傳明酸美白精華液15ml两入＋Dr.Eris 彈力緊緻活顏全能霜）'></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=6927' target='_blank'><img src='http://edm.hawooo.com/20170112/pageC_06.png' alt='滋養護髮福袋組（【Vitalcare蓓珂兒】LUXURY ARGAN摩洛哥堅果油洗髮精(500ml) ＋
                   【Vitalcare蓓珂兒】LUXURY ARGAN摩洛哥堅果油潤髮乳(250ml)＋价值RM30.00的髮膜）'></a>
                    </div>
                    </div>";
                    break;
                }
            case "D": //不敗組合經典必BUY
                {
                    bindProduct(59);
                    _header.Text = @"<div class='am-show-md-up'>
                    <div class='fullBanner'><a href='' target='_blank'><img src='http://edm.hawooo.com/20170112/pageD_banner.png' alt=''></a></div>
                    @EVENT                    
                    </div>
                    <div class='am-container' style='margin-top:20px;margin-bottom:20px;'>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=6903' target='_blank'><img src='http://edm.hawooo.com/20170112/pageD_01.png' alt=''></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/search.aspx?stxt=+%E8%B4%88%E6%B4%97%E8%AD%B7' target='_blank'><img src='http://edm.hawooo.com/20170112/pageD_02.png' alt=''></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=6904' target='_blank'><img src='http://edm.hawooo.com/20170112/pageD_03.png' alt=''></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=6906' target='_blank'><img src='http://edm.hawooo.com/20170112/pageD_04.png' alt=''></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=6905' target='_blank'><img src='http://edm.hawooo.com/20170112/pageD_05.png' alt=''></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=6908' target='_blank'><img src='http://edm.hawooo.com/20170112/pageD_06.png' alt=''></a>
                    </div>
                    </div>";
                    break;
                }
            case "E": //BHK's購物好雞會
                {
                    bindProduct(55);
                    _header.Text = @"<div class='am-show-md-up'>
                    <div class='fullBanner'><a href='' target='_blank'><img src='http://edm.hawooo.com/20170112/pageE_banner.png' alt=''></a></div>
                    @EVENT                    
                    </div>
                    <div class='am-container' style='margin-top:20px;margin-bottom:20px;'>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=5692' target='_blank'><img src='http://edm.hawooo.com/20170112/pageE_01.png' alt='極致美白凍齡組 (逆痕錠＋奢光錠) '></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=1852' target='_blank'><img src='http://edm.hawooo.com/20170112/pageE_02.png' alt='BHK's 奢光錠 穀胱甘太 (60顆瓶裝) 1瓶/2瓶組'></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=6056' target='_blank'><img src='http://edm.hawooo.com/20170112/pageE_03.png' alt=' 金三角逆齡保養組 (胎盤膠囊＋膠原蛋白+ 逆痕錠)'></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=2569' target='_blank'><img src='http://edm.hawooo.com/20170112/pageE_04.png' alt='BHK's 白高顆 膠囊食品 3袋組/6袋組  '></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=6615' target='_blank'><img src='http://edm.hawooo.com/20170112/pageE_05.png' alt='BHK's 超級美白組 (奢光錠+奢光淨白面膜)  '></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=636' target='_blank'><img src='http://edm.hawooo.com/20170112/pageE_06.png' alt='BHK's 裸耀膠原蛋白錠第二代 (60顆瓶裝) 一瓶/兩瓶組 '></a>
                    </div>
                    </div>";
                    break;
                }
            case "F": //桃花美妝
                {
                    bindProduct(56);
                    _header.Text = @"<div class='am-show-md-up'>
                    <div class='fullBanner'><a href='' target='_blank'><img src='http://edm.hawooo.com/20170112/pageF_banner.png' alt='桃花美妝特輯,這個新年你最正,全館商品，up to 40%off！'></a></div>
                    @EVENT                    
                    </div>
                    <div class='am-container' style='margin-top:20px;margin-bottom:20px;'>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=273' target='_blank'><img src='http://edm.hawooo.com/20170112/pageF_01.png' alt='【Miss Hana花娜小姐】三色立體唇膏'></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=6644' target='_blank'><img src='http://edm.hawooo.com/20170112/pageF_02.png' alt='FEAZAC 舒科 胺基酸彩色修護染-派對玩色組40mL'></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=5900' target='_blank'><img src='http://edm.hawooo.com/20170112/pageF_03.png' alt='MKUP 美咖 完美三色精華遮瑕膏'></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=6902' target='_blank'><img src='http://edm.hawooo.com/20170112/pageF_04.png' alt='【HANAKA花戀肌】杏仁酸老皮煥膚足膜'></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=6480' target='_blank'><img src='http://edm.hawooo.com/20170112/pageF_05.png' alt='Miss Hana花娜小姐 x CHOO CHOO CAT】經典眼膠筆鐵盒限定組 附削筆器  '></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=6346' target='_blank'><img src='http://edm.hawooo.com/20170112/pageF_06.png' alt='【HANAKA花戀肌】去你的粉刺三步驟面膜組'></a>
                    </div>
                    </div>";
                    break;
                }
            case "G":
                {
                    bindProduct(57);
                    _header.Text = @"<div class='am-show-md-up'>
                    <div class='fullBanner'><a href='' target='_blank'><img src='http://edm.hawooo.com/20170112/pageG_banner.png' alt='新年穿搭術,30%off，全館時尚類品牌，消費滿RM350，送 FM鞋蜜'></a></div>
                    @EVENT                    
                    </div>
                    <div class='am-container' style='margin-top:20px;margin-bottom:20px;'>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=6205' target='_blank'><img src='http://edm.hawooo.com/20170112/pageG_01.png' alt='My Bra女王騎士 無痕無鋼圈完美飽滿內衣'></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=2595' target='_blank'><img src='http://edm.hawooo.com/20170112/pageG_02.png' alt='【Bonbons】MIT台灣手工製造全真皮麻繩平底鞋(純淨白)'></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=3615' target='_blank'><img src='http://edm.hawooo.com/20170112/pageG_03.png' alt='Anden Hud 低腰三角褲六入 (隨機出貨) '></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=6348' target='_blank'><img src='http://edm.hawooo.com/20170112/pageG_04.png' alt='V.VIENNA 微微安娜 Girl's Light 280D高強度全機能顯瘦壓力褲 黑色(1入)'></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=3613' target='_blank'><img src='http://edm.hawooo.com/20170112/pageG_05.png' alt='Anden Hud 中腰三角褲六入 (隨機出貨) '></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=5645' target='_blank'><img src='http://edm.hawooo.com/20170112/pageG_06.png' alt='My Bra anSubRosa 極品睡美人 性感無襯前開衩睡衣 三色 Free'></a>
                    </div>
                    </div>";
                    break;
                }
            case "H":
                {
                    bindProduct(58);
                    _header.Text = @"<div class='am-show-md-up'>
                    <div class='fullBanner'><a href='' target='_blank'><img src='http://edm.hawooo.com/20170112/pageH_banner.png' alt='開運美食榜,要得到他的心，先得到他的胃！'></a></div>
                    @EVENT                    
                    </div>
                    <div class='am-container' style='margin-top:20px;margin-bottom:20px;'>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=6621' target='_blank'><img src='http://edm.hawooo.com/20170112/pageH_01.png' alt='滿鍋香聚餐組 (香辣*1+濃香*1+孜然*1) 每包各4~6人用 '></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=6102' target='_blank'><img src='http://edm.hawooo.com/20170112/pageH_02.png' alt='老媽拌麵麻辣口味 2袋入(共8包)'></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=4093' target='_blank'><img src='http://edm.hawooo.com/20170112/pageH_03.png' alt='蘭山麵四款口味 寬麵 (紅蔥油/麻油/麻醬/沙茶) 12包/24包'></a>
                    </div>
                    <div class='am-u-md-6 am-u-sm-12 mainBanner'>
                    <a href='http://www.hawooo.com/user/productdetail.aspx?id=2097' target='_blank'><img src='http://edm.hawooo.com/20170112/pageH_04.png' alt='歐可茶葉拿鐵咖啡-重烘焙款 (8包/盒) 三盒組'></a>
                    </div>
                    </div>";
                    break;
                }
        }
        StringBuilder sb = new StringBuilder();
        sb.Append("<div class=\"fullBanner\"><img src=\"http://edm.hawooo.com/20170112/newyear-top-1.png\" alt=\"新年活動倒數\"></div>");
        sb.Append("<div class=\"redBanner\">");
        sb.Append("<div class=\"am-u-md-5 bonus\">");
        sb.Append("<a><img src=\"http://edm.hawooo.com/20170112/index-top_2_01.png\" style=\"width:30%;cursor: pointer;\" alt=\"點我領Rm20\" onclick='GetCoupone(\"2017-01-12 00:00\", \"2017-02-01 00:00\", \"e401b092-c052-4406-a7d7-c3f522fa57df\");'></a>");
        sb.Append("<a><img src=\"http://edm.hawooo.com/20170112/index-top_2_02.png\" style=\"width:40%;cursor: pointer;\" alt=\"點我領Rm30\" onclick='GetCoupone(\"2017-01-18 00:00\", \"2017-02-01 00:00\", \"28e575b3-042a-4b9e-8c1d-348b51fe5b6d\");'></a>");
        sb.Append("<a><img src=\"http://edm.hawooo.com/20170112/index-top_2_03.png\" style=\"width:30%;cursor: pointer;\" alt=\"點我領Rm50\" onclick='GetCoupone(\"2017-01-25 00:00\", \"2017-02-01 00:00\", \"0f15ce48-3a9a-4fb1-b934-818a40b8d027\");'></a>");
        sb.Append("</div>");
        sb.Append("<img src=\"http://edm.hawooo.com/20170112/newyear-top-2.png\">");
        sb.Append("</div>");
        _header.Text = _header.Text.Replace("@EVENT", sb.ToString());

        LiteralControl _footer = new LiteralControl();
        _footer.Text += @"<footer class='fullBanner am-show-md-up'>
        <img src='http://edm.hawooo.com/20170112/index-footer.png' alt='好物迎春,雞動Sales,折扣、紅包、抽獎讓你拿不完。'>
        </footer>
        <footer class='fullBanner am-show-sm'>
        <img src='http://edm.hawooo.com/20170112/index-footer-m.png' alt='好物迎春,雞動Sales,折扣、紅包、抽獎讓你拿不完。'>
        </footer>";
        user_user MyMasterPage = (user_user)Page.Master;
        (MyMasterPage.FindControl("p_header") as PlaceHolder).Controls.Add(_header);
        (MyMasterPage.FindControl("p_footer") as PlaceHolder).Controls.Add(_footer);
    }
    private void stxt()
    {

    }
}