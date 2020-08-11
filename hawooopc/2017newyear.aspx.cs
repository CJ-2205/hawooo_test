using hawooo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_2017newyear : System.Web.UI.Page
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
            string u = Request.ServerVariables["HTTP_USER_AGENT"].ToLower();
            bool ismobile = PbClass.isMobile(u);
            if (ismobile)
            {
                Response.Redirect("/mobile/2017newyear.aspx");
            }
            LiteralControl _header = new LiteralControl();
            _header.Text += @"<div class='am-show-md-up'>;
            <div class='fullBanner'>
            <a href='http://www.hawooo.com/user/2017newyeardetail.aspx?type=A' target='_blank'>
            <img src='http://edm.hawooo.com/20170112/index-top_1.png'>
            </a>
            </div>
            <div class='fullBanner'>
            <img src='http://edm.hawooo.com/20170112/index-top_2_top.png'>
            </div>
            <div class='redBanner' name='f02'>
            <div class='am-u-md-5 am-u-sm-centered time'>
                <span class='timeBox' id='t1'>
                    <b id='day'></b><i>天</i>
                    <b id='hour'></b><i>時</i>
                    <b id='min'></b><i>分</i>
                    <b id='sec'></b><i>秒</i>
                </span>
            </div>
            <img src='http://edm.hawooo.com/20170112/index-top_2_time.png'>
            </div>
            <div class='redBanner'>
            <div class='am-u-md-5 bonus'>
                <a>
                    <img src='http://edm.hawooo.com/20170112/index-top_2_01.png' style='width: 30%; cursor: pointer;' onclick='@EVENT1'></a>
                <a>
                    <img src='http://edm.hawooo.com/20170112/index-top_2_02.png' style='width: 40%; cursor: pointer;' onclick='@EVENT2'></a>
                <a>
                    <img src='http://edm.hawooo.com/20170112/index-top_2_03.png' style='width: 30%; cursor: pointer;' onclick='@EVENT3'></a>
            </div>
            <img src='http://edm.hawooo.com/20170112/index-top_2.png'>
            </div>
            </div>";
            _header.Text = _header.Text.Replace("@EVENT1", "GetCoupone(\"2017-01-12 00:00\", \"2017-02-01 00:00\", \"e401b092-c052-4406-a7d7-c3f522fa57df\");");
            _header.Text = _header.Text.Replace("@EVENT2", "GetCoupone(\"2017-01-18 00:00\", \"2017-02-01 00:00\", \"28e575b3-042a-4b9e-8c1d-348b51fe5b6d\");");
            _header.Text = _header.Text.Replace("@EVENT3", "GetCoupone(\"2017-01-25 00:00\", \"2017-02-01 00:00\", \"0f15ce48-3a9a-4fb1-b934-818a40b8d027\");");
            LiteralControl _footer = new LiteralControl();
            _footer.Text += @"<footer class='fullBanner am-show-md-up' style='margin-top: 20px'>
            <img src='http://edm.hawooo.com/20170112/index-footer.png'>
            </footer>
            <footer class='fullBanner am-show-sm'>
            <img src='http://edm.hawooo.com/20170112/index-footer-m.png'>
            </footer>";

            user_user MyMasterPage = (user_user)Page.Master;
            (MyMasterPage.FindControl("p_header") as PlaceHolder).Controls.Add(_header);
            (MyMasterPage.FindControl("p_footer") as PlaceHolder).Controls.Add(_footer);
        }
    }
}