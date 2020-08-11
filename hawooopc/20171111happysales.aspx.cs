using hawooo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_20171111happysales : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DateTime time = DateTime.Now;

            DateTime t1 = Convert.ToDateTime("2017-11-11 00:00");
            DateTime t2 = Convert.ToDateTime("2017-11-11 01:00");
            DateTime t3 = Convert.ToDateTime("2017-11-11 09:00");
            DateTime t4 = Convert.ToDateTime("2017-11-11 11:00");
            DateTime t5 = Convert.ToDateTime("2017-11-11 13:00");
            DateTime t6 = Convert.ToDateTime("2017-11-11 15:00");
            DateTime t7 = Convert.ToDateTime("2017-11-11 17:00");
            DateTime t8 = Convert.ToDateTime("2017-11-11 19:00");
            DateTime t9 = Convert.ToDateTime("2017-11-11 21:00");
            DateTime t10 = Convert.ToDateTime("2017-11-11 23:00");
            DateTime t11 = Convert.ToDateTime("2017-11-12 00:00");

            DataTable dt = new DataTable();
            dt.Columns.Add("id");
            dt.Columns.Add("name");
            dt.Columns.Add("img");
            dt.Columns.Add("link");
            dt.Columns.Add("btnimg");
            dt.Columns.Add("btnvb");
            dt.Columns.Add("btneb");

            for (int i = 1; i <= 10; i++)
            {
                string name = string.Empty, img = string.Empty, link = string.Empty, btnimg = string.Empty;
                string btnvb = "0", btneb = "1";

                switch (i)
                {
                    case 1:
                        {
                            name = "Kafen";
                            if (time < t1)
                            {
                                img = "11timePC1_04";
                                link = "#";

                            }
                            else if (time >= t1 && time < t2)
                            {
                                img = "11timePC2_04";
                                link = "https://www.hawooo.com/user/brands.aspx?bid=63";
                                btnimg = "timePC2_09";
                                btnvb = "1";
                            }
                            else
                            {
                                img = "11timePC2_04";
                                link = "https://www.hawooo.com/user/brands.aspx?bid=63";
                                btnimg = "timePC3_09";
                                btnvb = "1";
                                btneb = "0";
                            }
                            break;
                        }
                    case 2:
                        {
                            name = "Qmomo";
                            if (time < t2)
                            {
                                img = "11timePC1_05";
                                link = "#";
                            }
                            else if (time >= t2 && time < t3)
                            {
                                img = "11timePC2_05";
                                link = "https://www.hawooo.com/user/brands.aspx?bid=128";
                                btnimg = "timePC2_10";
                                btnvb = "1";
                            }
                            else
                            {
                                img = "11timePC2_05";
                                link = "https://www.hawooo.com/user/brands.aspx?bid=128";
                                btnimg = "timePC3_10";
                                btnvb = "1";
                                btneb = "0";
                            }
                            break;
                        }
                    case 3:
                        {
                            name = "大姨媽";
                            if (time < t3)
                            {
                                img = "11timePC1_06";
                                link = "#";
                            }
                            else if (time >= t3 && time < t4)
                            {
                                img = "11timePC2_06";
                                link = "https://www.hawooo.com/user/brands.aspx?bid=53";
                                btnimg = "timePC2_11";
                                btnvb = "1";
                            }
                            else
                            {
                                img = "11timePC2_06";
                                link = "https://www.hawooo.com/user/brands.aspx?bid=53";
                                btnimg = "timePC3_11";
                                btnvb = "1";
                                btneb = "0";
                            }

                            break;
                        }
                    case 4:
                        {
                            name = "BHK's";
                            if (time < t4)
                            {
                                img = "11timePC1_07";
                                link = "#";
                            }
                            else if (time >= t4 && time < t5)
                            {
                                img = "11timePC2_07";
                                link = "https://www.hawooo.com/user/brands.aspx?bid=12";
                                btnimg = "timePC2_12";
                                btnvb = "1";
                            }
                            else
                            {
                                img = "11timePC2_07";
                                link = "https://www.hawooo.com/user/brands.aspx?bid=12";
                                btnimg = "timePC3_12";
                                btnvb = "1";
                                btneb = "0";
                            }

                            break;
                        }
                    case 5:
                        {
                            name = "FaLaiya";
                            if (time < t5)
                            {
                                img = "11timePC1_08";
                                link = "#";
                            }
                            else if (time >= t5 && time < t6)
                            {
                                img = "11timePC2_08";
                                link = "https://www.hawooo.com/user/brands.aspx?bid=114";
                                btnimg = "timePC2_13";
                                btnvb = "1";
                            }
                            else
                            {
                                img = "11timePC2_08";
                                link = "https://www.hawooo.com/user/brands.aspx?bid=114";
                                btnimg = "timePC3_13";
                                btnvb = "1";
                                btneb = "0";
                            }

                            break;
                        }
                    case 6:
                        {
                            name = "頂級乾操";
                            if (time < t6)
                            {
                                img = "11timePC1_09";
                                link = "#";
                            }
                            else if (time >= t6 && time < t7)
                            {
                                img = "11timePC2_14";
                                link = "https://www.hawooo.com/user/brands.aspx?bid=139";
                                btnimg = "timePC2_19";
                                btnvb = "1";
                            }
                            else
                            {
                                img = "11timePC2_14";
                                link = "https://www.hawooo.com/user/brands.aspx?bid=139";
                                btnimg = "timePC3_19";
                                btnvb = "1";
                                btneb = "0";
                            }

                            break;
                        }
                    case 7:
                        {
                            name = "NewArt";
                            if (time < t7)
                            {
                                img = "11timePC1_10";
                                link = "#";
                            }
                            else if (time >= t7 && time < t8)
                            {
                                img = "11timePC2_15";
                                link = "https://www.hawooo.com/user/brands.aspx?bid=79";
                                btnimg = "timePC2_20";
                                btnvb = "1";
                            }
                            else
                            {
                                img = "11timePC2_15";
                                link = "https://www.hawooo.com/user/brands.aspx?bid=79";
                                btnimg = "timePC3_20";
                                btnvb = "1";
                                btneb = "0";
                            }

                            break;
                        }
                    case 8:
                        {
                            name = "Laler菈楽";
                            if (time < t8)
                            {
                                img = "11timePC1_11";
                                link = "#";
                            }
                            else if (time >= t8 && time < t9)
                            {
                                img = "11timePC2_16";
                                link = "https://www.hawooo.com/user/brands.aspx?bid=104";
                                btnimg = "timePC2_21";
                                btnvb = "1";
                            }
                            else
                            {
                                img = "11timePC2_16";
                                link = "https://www.hawooo.com/user/brands.aspx?bid=104";
                                btnimg = "timePC3_21";
                                btnvb = "1";
                                btneb = "0";
                            }

                            break;
                        }
                    case 9:
                        {
                            name = "LaBeau";
                            if (time < t9)
                            {
                                img = "11timePC1_12";
                                link = "#";
                            }
                            else if (time >= t9 && time < t10)
                            {
                                img = "11timePC2_17";
                                link = "https://www.hawooo.com/user/search.aspx?stxt=LaBeau";
                                btnimg = "timePC2_22";
                                btnvb = "1";
                            }
                            else
                            {
                                img = "11timePC2_17";
                                link = "https://www.hawooo.com/user/search.aspx?stxt=LaBeau";
                                btnimg = "timePC3_22";
                                btnvb = "1";
                                btneb = "0";
                            }

                            break;
                        }
                    case 10:
                        {
                            name = "Nature Tree";
                            if (time < t10)
                            {
                                img = "11timePC1_13";
                                link = "#";
                            }
                            else if (time >= t10 && time < t11)
                            {
                                img = "11timePC2_18";
                                link = "https://www.hawooo.com/user/brands.aspx?bid=117";
                                btnimg = "timePC2_23";
                                btnvb = "1";
                            }
                            else
                            {
                                img = "11timePC2_18";
                                link = "https://www.hawooo.com/user/brands.aspx?bid=117";
                                btnimg = "timePC3_23";
                                btnvb = "1";
                                btneb = "0";
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
            lb.Visible = true;
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
                        _PC01 = "AA3E599F-9FC5-41C0-80BF-F1E89196E5C0";
                        break;
                    }
                case "2":
                    {
                        _PC01 = "4A2E4E5F-7F2C-499F-BAE6-7CAB366530D9";
                        break;
                    }
                case "3":
                    {
                        _PC01 = "6CB22B1C-DE6C-48E2-A669-1C30E6D1BC92";
                        break;
                    }
                case "4":
                    {
                        _PC01 = "014FFCC8-EA78-47A8-8069-EE57C43426B5";
                        break;
                    }
                case "5":
                    {
                        _PC01 = "636B4E59-DA25-4326-AE7F-E17A767E9A56";
                        break;
                    }
                case "6":
                    {
                        _PC01 = "C17D507C-76F3-458D-9FA0-71AF658DF269";
                        break;
                    }
                case "7":
                    {
                        _PC01 = "D50E1808-AF72-4987-8741-2F25B79F6C57";
                        break;
                    }
                case "8":
                    {
                        _PC01 = "3918F2ED-6EA6-452C-81DB-B21B59BE1EF5";
                        break;
                    }
                case "9":
                    {
                        _PC01 = "D9ED5526-A1FE-4C48-8E7B-B6F095788C5B";
                        break;
                    }
                case "10":
                    {
                        _PC01 = "1CA94621-1385-43D2-89F9-8E849F6AAC0B";
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
                //ScriptManager.RegisterStartupScript(Page, GetType(), "alert", "alert('" + s + "')", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "login", "doLogin('20171111happysales.aspx');", true);
            }
        }
    }
}