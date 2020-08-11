using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using webcs;
using System.Web.Script.Serialization;

public partial class _17_Christmas_event2_20171204 : System.Web.UI.Page
{
    public int[] arraypriceunit;

    public class Person
    {
        public string id { get; set; }
        public string unit { get; set; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        //string sql = @"select * from PriceLog where (Plog03=@a01 and day(plog02)=day(GETDATE()))";

        //SqlCommand cmd = new SqlCommand();
        //cmd.CommandText = sql;
        //cmd.Parameters.Add(SafeSQL.CreateInputParam("@a01", SqlDbType.BigInt, 116));   //116改成帶session

        //DataTable dt = SqlDbmanager.queryBySql(cmd);
        ////DataTable dt = new DataTable();
        ////if (dt.Rows.Count > 0)
        ////{
        ////    //js跳出說已參與 請明天再來


        ////}
        //GetUserStatus("116");


    Response.Write(    po());
   



    }

    string po()
    {
        string bb = Request.Form["mid"];
        Response.Write( bb);
        string a = "";
        return bb;

    }

    //將商品產出帶進array裡
    public List<int> pricelist(DataTable dt)
    {
        //製作array
        List<int> listpriceunit = new List<int>();


        //將獎品寫入array
        foreach (DataRow dr in dt.Rows)
        {
            int priceunit = Convert.ToInt32(dr["EP03"].ToString());

            if (priceunit > 0)
            {
                int priceid = Convert.ToInt32(dr["EP02"].ToString());

                for (int i = 0; i < priceunit; i++)
                {
                    listpriceunit.Add(priceid);
                }
            }
        }

        arraypriceunit = listpriceunit.ToArray();

        return listpriceunit;
    }


    //將獎品歸戶 & 記錄log檔 & 將商品數量update
    void d(int priceid, int userid, int priceunit, int status)
    {
        PriceLogFac plf = new PriceLogFac();
        eventPriceFac epf = new eventPriceFac();


        if (priceid != 4)
        {
            PriceLog pl = new PriceLog();
            pl.Plog02 = DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss");
            pl.Plog03 = userid;
            pl.Plog04 = priceid;


            eventPrice ep = new eventPrice();
            ep.EP01 = status;
            ep.EP02 = priceid;
            ep.EP03 = (priceunit - 1);


            //歸戶的工作dk寫給我


            plf.insertPriceLog(pl);
            epf.updateeventPrice(ep);

        }







    }




    //使用者登入時撈當下他的stautus&撈出商品的數量
    void GetUserStatus(string userid)
    {
        string sql = @"declare @buytime int
select @buytime= count(case when orm03>'2017/11/11 23:59:59' then orm03 end) from (select * from orderm
where orm23=@orm23 and orm19>0 and orm24 >=0 and orm03 between '2017-11-01 00:00:00' and '2017-12-31 23:59:59') as dt

if @buytime=0 begin select @buytime=1 end
else begin select @buytime=@buytime end

declare @status int
select @status=(

select 
(case
when  count(orm03)=0 then 1	 --新客(11，12月都未曾消費)--
when (round((cast(sum(orm08)as float))/cast(@buytime as float),2)<200) then 2  --1212消費，單筆平均消費低於200--
when (round((cast(sum(orm08)as float))/cast(@buytime as float),2)>=200 and round((cast(sum(orm08)as float)/cast(@buytime as float)),2)<350) then 3   --1212消費，單筆平均消費200-350--
when (round((cast(sum(orm08)as float))/cast(@buytime as float),2)>=350 and round((cast(sum(orm08)as float)/cast(@buytime as float)),2)<500) then 4   --1212消費，單筆平均消費350-500--
when (round((cast(sum(orm08)as float))/cast(@buytime as float),2)>=500) then 5  --1212消費，單筆平均消費350-500--
when (@buytime=0 and (sum(orm08)/count(@buytime))<300) then 6  --活動期間未消費舊客，2個月內單筆平均消費低於300
when (@buytime=0 and (sum(orm08)/count(@buytime))>=300) then 7  --活動期間未消費舊客，2個月內單筆平均消費高於300
end) as statusd
from (select * from orderm
where orm23=@orm23 and orm19>0 and orm24 >=0 and orm03 between '2017-11-01 00:00:00' and '2017-12-31 23:59:59') as dt
)

select * from eventprice
where ep01= @status";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sql;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("orm23", SqlDbType.Int, userid));


        DataTable dt = SqlDbmanager.queryBySql(cmd);
        pricelist(dt);

        JavaScriptSerializer serializer = new JavaScriptSerializer();
        var responseEntities = pricelist(dt);



        var result = serializer.Serialize(responseEntities);
        //Response.Write(result);
        //Response.End();



    }
}

