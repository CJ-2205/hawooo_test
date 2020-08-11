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

public partial class mobile_static_200402super_items : System.Web.UI.Page
{
    private DataTable _source;//取得原始投票選項資料

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            GetProductOption();
            GroupingAndBindingProduct();
        }
    }

    private void GetProductOption()
    {
        string sqlStr = @"select PID,VGroup,PSort,WP02,WP08_1 from ProductVote
inner join wp on wp01=PID";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sqlStr;
        _source = SqlDbmanager.queryBySql(cmd);
    }


    private void GroupingAndBindingProduct()
    {
        var selectPd1 = _source.Select("VGroup='1'").CopyToDataTable();
        rp1.DataSource = selectPd1;
        rp1.DataBind();

        var selectPd2 = _source.Select("VGroup='2'").CopyToDataTable();
        rp2.DataSource = selectPd2;
        rp2.DataBind();

        var selectPd3 = _source.Select("VGroup='3'").CopyToDataTable();
        rp3.DataSource = selectPd3;
        rp3.DataBind();

        var selectPd4 = _source.Select("VGroup='4'").CopyToDataTable();
        rp4.DataSource = selectPd4;
        rp4.DataBind();

        var selectPd5 = _source.Select("VGroup='5'").CopyToDataTable();
        rp5.DataSource = selectPd5;
        rp5.DataBind();

        var selectPd6 = _source.Select("VGroup='6'").CopyToDataTable();
        rp6.DataSource = selectPd6;
        rp6.DataBind();

        var selectPd7 = _source.Select("VGroup='7'").CopyToDataTable();
        rp7.DataSource = selectPd7;
        rp7.DataBind();

        var selectPd8 = _source.Select("VGroup='8'").CopyToDataTable();
        rp8.DataSource = selectPd8;
        rp8.DataBind();

        var selectPd9 = _source.Select("VGroup='9'").CopyToDataTable();
        rp9.DataSource = selectPd9;
        rp9.DataBind();

        var selectPd10 = _source.Select("VGroup='10'").CopyToDataTable();
        rp10.DataSource = selectPd10;
        rp10.DataBind();

        var selectPd11 = _source.Select("VGroup='11'").CopyToDataTable();
        rp11.DataSource = selectPd11;
        rp11.DataBind();
    }

    private static DataTable VoteTodayOrNot(string userID)
    {
        string stime = DateTime.Now.ToString("yyyy-MM-dd 00:00:00");
        string etime = DateTime.Now.ToString("yyyy-MM-dd 23:59:59");
        string str = @"select * from ProductVoteLog where UserId=@UserId and VTime between @ST and @ET";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = str;
        cmd.Parameters.Add(SafeSQL.CreateInputParam("UserId", SqlDbType.VarChar, userID));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("ST", SqlDbType.VarChar, stime));
        cmd.Parameters.Add(SafeSQL.CreateInputParam("ET", SqlDbType.VarChar, etime));

        var dt = SqlDbmanager.queryBySql(cmd);
        return dt;
    }

    [System.Web.Services.WebMethod]
    public static string GetVote(string userID, string pID1, string pID2, string pID3, string pID4, string pID5, string pID6, string pID7, string pID8, string pID9, string pID10, string pID11)
    {
        DataTable dt = VoteTodayOrNot(userID);

        string returnMsg = "";
        string[] pID = new string[] { pID1, pID2, pID3, pID4, pID5, pID6, pID7, pID8, pID9, pID10, pID11 };

        if (dt.Rows.Count == 0)
        {
            int i = WriteVoteLog(userID, pID);
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
            returnMsg = "You've voted today! Come again tomorrow! Let's go shopping";
        }

        StringBuilder sb = new StringBuilder();
        sb.Append("[{");
        sb.Append("\"rmsg\":\"" + returnMsg + "\"");
        sb.Append("}]");


        return sb.ToString();

    }

    private static int WriteVoteLog(string userID, string[] pID)
    {
        string strSql = "INSERT INTO ProductVoteLog (VTime,UserId,VPID) VALUES (@VTime,@UserId,@VPID)";
        List<SqlCommand> listCmd = new List<SqlCommand>();

        for (int j = 0; j < pID.Length; j++)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = strSql;
            cmd.Parameters.Add(SafeSQL.CreateInputParam("@VTime", SqlDbType.DateTime, DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")));
            cmd.Parameters.Add(SafeSQL.CreateInputParam("@UserId", SqlDbType.BigInt, userID));
            cmd.Parameters.Add(SafeSQL.CreateInputParam("@VPID", SqlDbType.Int, pID[j]));
            listCmd.Add(cmd);
        }

        int i = SqlDbmanager.executeNonQryMutiSqlCmd(listCmd);
        return i;
    }
}