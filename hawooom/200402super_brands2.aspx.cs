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

public partial class mobile_static_200402super_brands2 : System.Web.UI.Page
{
    private DataTable _source;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetBrandOption();
            GroupingAndBindingBrand();

        }
    }


    private void GetBrandOption()
    {
        string sqlStr = "SELECT * FROM BrandVote";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sqlStr;
        _source = SqlDbmanager.queryBySql(cmd);
    }

    private DataTable TransDt(DataTable sdt)
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("BID");
        dt.Columns.Add("VGroup");
        dt.Columns.Add("BSort");
        dt.Columns.Add("BLogoImg");
        dt.Columns.Add("BID2");
        dt.Columns.Add("BLogoImg2");
        dt.Columns.Add("VGroup2");

        int i = 1;
        foreach (DataRow dr in sdt.Rows)
        {
            if (i % 2 != 0)//i=1.3.5
            {
                DataRow ndr = dt.NewRow();
                ndr["BID"] = dr["BID"].ToString();
                ndr["VGroup"] = dr["VGroup"].ToString();
                ndr["BSort"] = dr["BSort"].ToString();
                ndr["BLogoImg"] = dr["BLogoImg"].ToString();
                dt.Rows.Add(ndr);
            }
            else//i=2.4.6
            {
                dt.Rows[dt.Rows.Count - 1]["BID2"] = dr["BID"].ToString();
                dt.Rows[dt.Rows.Count - 1]["BLogoImg2"] = dr["BLogoImg"].ToString();
                dt.Rows[dt.Rows.Count - 1]["VGroup2"] = dr["VGroup"].ToString();

            }
            i++;
        }

        return dt;

    }

    private void GroupingAndBindingBrand()
    {
        DataTable dt = TransDt(_source);
        var selectBrand1 = dt.Select("VGroup='1'").CopyToDataTable();
        rp1.DataSource = selectBrand1;
        rp1.DataBind();

        var selectBrand2 = dt.Select("VGroup='2'").CopyToDataTable();
        rp2.DataSource = selectBrand2;
        rp2.DataBind();

        var selectBrand3 = dt.Select("VGroup='3'").CopyToDataTable();
        rp3.DataSource = selectBrand3;
        rp3.DataBind();

        var selectBrand4 = dt.Select("VGroup='4'").CopyToDataTable();
        rp4.DataSource = selectBrand4;
        rp4.DataBind();

        var selectBrand5 = dt.Select("VGroup='5'").CopyToDataTable();
        rp5.DataSource = selectBrand5;
        rp5.DataBind();

    }





    private static DataTable VoteTodayOrNot(string userID)
    {
        string stime = DateTime.Now.ToString("yyyy-MM-dd 00:00:00");
        string etime = DateTime.Now.ToString("yyyy-MM-dd 23:59:59");
        string str = @"select * from BrandVoteLog where UserId=@UserId and VTime between @ST and @ET";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = str;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("UserId", SqlDbType.VarChar, userID));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("ST", SqlDbType.VarChar, stime));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("ET", SqlDbType.VarChar, etime));

        var dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }

    [System.Web.Services.WebMethod]
    public static string GetVote(string userID, string bID1, string bID2, string bID3, string bID4, string bID5)
    {
        DataTable dt = VoteTodayOrNot(userID);
        
        string returnMsg = "";
        string[] bID = new string[] { bID1, bID2, bID3, bID4, bID5 };

        if (dt.Rows.Count == 0)
        {
            int i = WriteVoteLog(userID, bID);
            if (i > 0)
            {
                returnMsg = "OK";
            }
            else
            {
                returnMsg = "WriteLog Error";
            }
        }
        else
        {
            returnMsg = "You've voted today! Come again tomorrow!";
        }

        StringBuilder sb = new StringBuilder();
        sb.Append("[{");
        sb.Append("\"rmsg\":\"" + returnMsg + "\"");
        sb.Append("}]");


        return sb.ToString();

    }

    private static int WriteVoteLog(string userID, string[] bID)
    {
        string strSql = "INSERT INTO BrandVoteLog (VTime,UserId,VBID) VALUES (@VTime,@UserId,@VBID)";
        List<SqlCommand> listCmd = new List<SqlCommand>();

        for (int j = 0; j < bID.Length; j++)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = strSql;
            cmd.Parameters.Add(SafeSQL.CreateInputParam("@VTime", SqlDbType.DateTime, DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")));
            cmd.Parameters.Add(SafeSQL.CreateInputParam("@UserId", SqlDbType.BigInt, userID));
            cmd.Parameters.Add(SafeSQL.CreateInputParam("@VBID", SqlDbType.Int, bID[j]));
            listCmd.Add(cmd);
        }

        int i = SqlDbmanager.executeNonQryMutiSqlCmd(listCmd);
        return i;
    }


}