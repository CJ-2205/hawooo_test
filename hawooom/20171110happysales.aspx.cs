using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;


public partial class mobile_20171110happysales : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DateTime time = DateTime.Now;

            if(time>=Convert.ToDateTime("2017-11-11 00:00:00"))
            {
                Response.Redirect("20171111happysales.aspx");
            }

            DateTime t1 = Convert.ToDateTime("2017-11-10 00:00");
            DateTime t2 = Convert.ToDateTime("2017-11-10 01:00");
            DateTime t3 = Convert.ToDateTime("2017-11-10 09:00");
            DateTime t4 = Convert.ToDateTime("2017-11-10 11:00");
            DateTime t5 = Convert.ToDateTime("2017-11-10 13:00");
            DateTime t6 = Convert.ToDateTime("2017-11-10 15:00");
            DateTime t7 = Convert.ToDateTime("2017-11-10 17:00");
            DateTime t8 = Convert.ToDateTime("2017-11-10 19:00");
            DateTime t9 = Convert.ToDateTime("2017-11-10 21:00");
            DateTime t10 = Convert.ToDateTime("2017-11-10 23:00");
            DateTime t11 = Convert.ToDateTime("2017-11-11 00:00");

            DataTable dt = new DataTable();
            dt.Columns.Add("id");
            dt.Columns.Add("name");
            dt.Columns.Add("img");
            dt.Columns.Add("link");
            dt.Columns.Add("btnimg");
            dt.Columns.Add("btnvb");
            dt.Columns.Add("btneb");
            dt.Columns.Add("width");

            for (int i = 1; i <= 10; i++)
            {
                string name = string.Empty, img = string.Empty, link = string.Empty, btnimg = string.Empty;
                string btnvb = "0", btneb = "1", width = "100%";

                switch (i)
                {
                    case 1:
                        {
                            name = "Beauty小舖";
                            if (time < t1)
                            {
                                img = "timeM1_04";
                                link = "#";

                            }
                            else if (time >= t1 && time < t2)
                            {
                                img = "timeM2_04";
                                link = "http://www.hawooo.com/mobile/brand_1.aspx?bid=51";
                                btnimg = "timeM2_05";
                                btnvb = "1";
                                width = "50%";
                            }
                            else
                            {
                                img = "timeM3_04";
                                link = " http://www.hawooo.com/mobile/brand_1.aspx?bid=51";
                                btnimg = "timeM3_05";
                                btnvb = "1";
                                btneb = "0";
                                width = "50%";
                            }
                            break;
                        }
                    case 2:
                        {
                            name = "老媽拌麵";
                            if (time < t2)
                            {
                                img = "timeM1_05";
                                link = "#";

                            }
                            else if (time >= t2 && time < t3)
                            {
                                img = "timeM2_06";
                                link = "http://www.hawooo.com/mobile/brand_1.aspx?bid=62";
                                btnimg = "timeM2_07";
                                btnvb = "1";
                                width = "50%";
                            }
                            else
                            {
                                img = "timeM3_06";
                                link = "http://www.hawooo.com/mobile/brand_1.aspx?bid=62";
                                btnimg = "timeM3_07";
                                btnvb = "1";
                                btneb = "0";
                                width = "50%";
                            }
                            break;
                        }
                    case 3:
                        {
                            name = "86Shop";
                            if (time < t3)
                            {
                                img = "timeM1_06";
                                link = "#";

                            }
                            else if (time >= t3 && time < t4)
                            {
                                img = "timeM2_08";
                                link = "http://www.hawooo.com/mobile/brand_1.aspx?bid=4";
                                btnimg = "timeM2_09";
                                btnvb = "1";
                                width = "50%";
                            }
                            else
                            {
                                img = "timeM3_08";
                                link = "http://www.hawooo.com/mobile/brand_1.aspx?bid=4";
                                btnimg = "timeM3_09";
                                btnvb = "1";
                                btneb = "0";
                                width = "50%";
                            }

                            break;
                        }
                    case 4:
                        {
                            name = "快車肉乾";
                            if (time < t4)
                            {
                                img = "timeM1_07";
                                link = "#";

                            }
                            else if (time >= t4 && time < t5)
                            {
                                img = "timeM2_10";
                                link = "http://www.hawooo.com/mobile/brand_1.aspx?bid=131";
                                btnimg = "timeM2_11";
                                btnvb = "1";
                                width = "50%";
                            }
                            else
                            {
                                img = "timeM3_10";
                                link = "http://www.hawooo.com/mobile/brand_1.aspx?bid=131";
                                btnimg = "timeM3_11";
                                btnvb = "1";
                                btneb = "0";
                                width = "50%";
                            }

                            break;
                        }
                    case 5:
                        {
                            name = "愛康";
                            if (time < t5)
                            {
                                img = "timeM1_08";
                                link = "#";

                            }
                            else if (time >= t5 && time < t6)
                            {
                                img = "timeM2_12";
                                link = "http://www.hawooo.com/mobile/brand_1.aspx?bid=138";
                                btnimg = "timeM2_13";
                                btnvb = "1";
                                width = "50%";
                            }
                            else
                            {
                                img = "timeM3_12";
                                link = "http://www.hawooo.com/mobile/brand_1.aspx?bid=138";
                                btnimg = "timeM3_13";
                                btnvb = "1";
                                btneb = "0";
                                width = "50%";
                            }

                            break;
                        }
                    case 6:
                        {
                            name = "UNT";
                            if (time < t6)
                            {
                                img = "timeM1_09";
                                link = "#";

                            }
                            else if (time >= t6 && time < t7)
                            {
                                img = "timeM2_14";
                                link = "http://www.hawooo.com/mobile/brand_1.aspx?bid=154";
                                btnimg = "timeM2_15";
                                btnvb = "1";
                                width = "50%";
                            }
                            else
                            {
                                img = "timeM3_14";
                                link = "http://www.hawooo.com/mobile/brand_1.aspx?bid=154";
                                btnimg = "timeM3_15";
                                btnvb = "1";
                                btneb = "0";
                                width = "50%";
                            }

                            break;
                        }
                    case 7:
                        {
                            name = "FM";
                            if (time < t7)
                            {
                                img = "timeM1_10";
                                link = "#";

                            }
                            else if (time >= t7 && time < t8)
                            {
                                img = "timeM2_16";
                                link = "http://www.hawooo.com/mobile/brand_1.aspx?bid=8";
                                btnimg = "timeM2_17";
                                btnvb = "1";
                                width = "50%";
                            }
                            else
                            {
                                img = "timeM3_16";
                                link = "http://www.hawooo.com/mobile/brand_1.aspx?bid=8";
                                btnimg = "timeM3_17";
                                btnvb = "1";
                                btneb = "0";
                                width = "50%";
                            }

                            break;
                        }
                    case 8:
                        {
                            name = "婦潔";
                            if (time < t8)
                            {
                                img = "timeM1_11";
                                link = "#";

                            }
                            else if (time >= t8 && time < t9)
                            {
                                img = "timeM2_18";
                                link = "http://www.hawooo.com/mobile/brand_1.aspx?bid=101";
                                btnimg = "timeM2_19";
                                btnvb = "1";
                                width = "50%";
                            }
                            else
                            {
                                img = "timeM3_18";
                                link = "http://www.hawooo.com/mobile/brand_1.aspx?bid=101";
                                btnimg = "timeM3_19";
                                btnvb = "1";
                                btneb = "0";
                                width = "50%";
                            }

                            break;
                        }
                    case 9:
                        {
                            name = "柔媽";
                            if (time < t9)
                            {
                                img = "timeM1_12";
                                link = "#";

                            }
                            else if (time >= t9 && time < t10)
                            {
                                img = "timeM2_20";
                                link = "http://www.hawooo.com/mobile/search.aspx?stxt=%E6%9F%94%E5%AA%BD";
                                btnimg = "timeM2_21";
                                btnvb = "1";
                                width = "50%";
                            }
                            else
                            {
                                img = "timeM3_20";
                                link = "http://www.hawooo.com/mobile/search.aspx?stxt=%E6%9F%94%E5%AA%BD";
                                btnimg = "timeM3_21";
                                btnvb = "1";
                                btneb = "0";
                                width = "50%";
                            }

                            break;
                        }
                    case 10:
                        {
                            name = "yohopower";
                            if (time < t10)
                            {
                                img = "timeM1_13";
                                link = "#";

                            }
                            else if (time >= t10 && time < t11)
                            {
                                img = "timeM2_22";
                                link = "http://www.hawooo.com/mobile/brand_1.aspx?bid=122";
                                btnimg = "timeM2_23";
                                btnvb = "1";
                                width = "50%";
                            }
                            else
                            {
                                img = "timeM3_22";
                                link = "http://www.hawooo.com/mobile/brand_1.aspx?bid=122";
                                btnimg = "timeM3_23";
                                btnvb = "1";
                                btneb = "0";
                                width = "50%";
                            }

                            break;
                        }
                }


                DataRow dr = dt.NewRow();
                dr["id"] = i;
                dr["name"] = name;
                dr["img"] = img;
                dr["link"] = link;
                dr["btnimg"] = btnimg;
                dr["btnvb"] = btnvb;
                dr["btneb"] = btneb;
                dr["width"] = width;
                dt.Rows.Add(dr);

            }

            rp1.DataSource = dt;
            rp1.DataBind();


        }
    }

    protected void rp1_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

        string btnvb = ((HiddenField)e.Item.FindControl("hfvb")).Value;
        string btneb = ((HiddenField)e.Item.FindControl("hfeb")).Value;
        LinkButton lb = (LinkButton)e.Item.FindControl("lb1");
        if (btnvb.Equals("1"))
        {
            lb.Visible = true;
        }
        if (btneb.Equals("0"))
            lb.Enabled = false;
    }




    protected void rp1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName.Equals("getcp"))
        {
            string _PC01 = string.Empty;
            switch (e.CommandArgument.ToString())
            {
                case "1":
                    {
                        _PC01 = "11882013-E711-4F13-8AC9-E7F648E3F194";
                        break;
                    }
                case "2":
                    {
                        _PC01 = "AF01D8C4-5EF8-4E76-AFDB-761EA596E844";
                        break;
                    }
                case "3":
                    {
                        _PC01 = "976538F6-E55C-436F-B905-941F844FB8E2";
                        break;
                    }
                case "4":
                    {
                        _PC01 = "C5E497C4-F2F5-4CC6-AC42-F6E98C8BDBDF";
                        break;
                    }
                case "5":
                    {
                        _PC01 = "5B79B6BD-76AF-4DCB-92B6-05A7288B85FB";
                        break;
                    }
                case "6":
                    {
                        _PC01 = "B5E3D634-869F-4E8F-BCB5-6C2C4F236651";
                        break;
                    }
                case "7":
                    {
                        _PC01 = "1DDAC033-B9DD-40B3-966C-A10BADDE4337";
                        break;
                    }
                case "8":
                    {
                        _PC01 = "F5BE19AE-4A38-47E6-AB7F-CB9A546AA86A";
                        break;
                    }
                case "9":
                    {
                        _PC01 = "8FB04615-F884-47EE-8E44-5364802038D9";
                        break;
                    }
                case "10":
                    {
                        _PC01 = "1EE68C86-D484-4C64-8BAC-7F2B242EEEEE";
                        break;
                    }
            }

            if (Session["A01"] != null)
            {
                string rval = CouponFacade.GetProductCouponUserGetFac.GetProductCoupon(_PC01, Convert.ToInt32(Session["A01"].ToString()));
                if (rval.Equals("OK"))
                {
                    ScriptManager.RegisterStartupScript(Page, typeof(UpdatePanel), "msg", "alert('領取成功');", true);
                }
                else if (rval.Equals("ERROR"))
                {
                    ScriptManager.RegisterStartupScript(Page, typeof(UpdatePanel), "msg", "alert('領取失敗，請稍後領取');", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(Page, typeof(UpdatePanel), "msg", "alert('" + rval + "');", true);
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(Page, typeof(UpdatePanel), "msg", "confirm2url('請先登入會員','login.aspx?rurl=20171110happysales.aspx');", true);

            }
            //ScriptManager.RegisterStartupScript(Page, GetType(), "alert", "alert('" + s + "')", true);
        }
    }
}

