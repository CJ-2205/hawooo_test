using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;

public partial class user_2018cnyregister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //CacheHelper.RemoveAllCache("GEVENT");
            login.Visible = false;
            noorder.Visible = false;
            if (Session["A01"] == null)
            {
                login.Visible = true;
            }
            else
            {
                BindOrder();
            }
        }
    }

    string dataPath = "../20180209/event0209.xls";
    //string dataPath = "../App_Data/excel/testevent0209.xls";
    public DataTable GetProdutDT()
    {
        DataTable EventDT = new DataTable();
        if (CacheHelper.GetCache("GEVENT") == null)
        {
            string fileName = HttpContext.Current.Server.MapPath(dataPath);
            EventDT = PbClass.ReadExcelToDataTable(fileName);
            EventDT.TableName = "GEVENT";
            CacheHelper.SetCache("GEVENT", EventDT);
        }
        else
        {
            EventDT = CacheHelper.GetCache("GEVENT") as DataTable;
        }

        return EventDT;
    }
    RegisterGiftBL rgBL = new RegisterGiftBL("2018-02-09 00:00", "2018-02-22 00:00");
    DataTable productDT = new DataTable();
    DataTable orderDT = new DataTable();
    private void BindProductDT()
    {
        productDT = GetProdutDT();
    }
    private void BindOrder()
    {
        //假訂單
        //orderDT.Columns.Add("ORM02");
        //orderDT.Columns.Add("ORM08");
        //orderDT.Columns.Add("RG05");
        //orderDT.Columns.Add("ORM19");
        //DataRow ADR = orderDT.NewRow();
        //ADR["ORM02"] = "S001";
        //ADR["ORM08"] = "199";
        //ADR["RG05"] = "";
        //ADR["ORM19"] = "1";
        //orderDT.Rows.Add(ADR);
        //ADR = orderDT.NewRow();
        //ADR["ORM02"] = "S002";
        //ADR["ORM08"] = "388";
        //ADR["RG05"] = "";
        //ADR["ORM19"] = "1";
        //orderDT.Rows.Add(ADR);
        if (Session["A01"] != null)
        {
            int A01 = int.Parse(Session["A01"].ToString());
            orderDT = rgBL.GetOrderList(A01, 188);

            if (orderDT.Rows.Count > 0)
            {
                rp_order_list.DataSource = orderDT;
                rp_order_list.DataBind();
                //綁定商品ID
                BindProductDT();

                foreach (RepeaterItem item in rp_order_list.Items)
                {
                    HiddenField ORM19 = (HiddenField)item.FindControl("hf_ORM19");
                    Control sel = (Control)item.FindControl("sel");
                    Control issel = (Control)item.FindControl("issel");
                    sel.Visible = false;
                    issel.Visible = false;
                    Literal lit_type = (Literal)item.FindControl("lit_type");

                    Control one = (Control)item.FindControl("one");
                    Control two = (Control)item.FindControl("two");
                    Control three = (Control)item.FindControl("three");
                    one.Visible = false;
                    two.Visible = false;
                    three.Visible = false;

                    Repeater rp1 = item.FindControl("rp1") as Repeater;
                    Repeater rp2 = item.FindControl("rp2") as Repeater;
                    Repeater rp3 = item.FindControl("rp3") as Repeater;
                    rp1.Visible = false;
                    rp2.Visible = false;
                    rp3.Visible = false;
                    if (ORM19.Value.Equals("1"))
                    {

                        //訂單金額
                        decimal ORM08 = decimal.Parse((item.FindControl("lit_ORM08") as Literal).Text);
                        string ORM02 = (item.FindControl("hf_ORM02") as HiddenField).Value;

                        string RG05 = ((Literal)item.FindControl("lit_RG05")).Text;
                        if (RG05 == "")
                        {
                            lit_type.Text = "<a class=\"btn-pink\" style=\"float: right\">請選贈品</a>";
                            sel.Visible = true;
                            DataTable dt = new DataTable();
                            if (ORM08 >= 188)
                            {
                                rp1.Visible = true;
                                one.Visible = true;

                                productDT.DefaultView.RowFilter = "Oprice=188";
                                dt = new DataTable();
                                dt = productDT.DefaultView.ToTable();
                                bindProduct(rp1, dt, ORM02);
                            }
                            if (ORM08 >= 288)
                            {
                                two.Visible = true;
                                rp2.Visible = true;

                                productDT.DefaultView.RowFilter = "Oprice=288";
                                dt = new DataTable();
                                dt = productDT.DefaultView.ToTable();
                                bindProduct(rp2, dt, ORM02);
                            }
                            if (ORM08 >= 388)
                            {
                                three.Visible = true;
                                rp3.Visible = true;

                                productDT.DefaultView.RowFilter = "Oprice=388";
                                dt = new DataTable();
                                dt = productDT.DefaultView.ToTable();
                                bindProduct(rp3, dt, ORM02);
                            }
                        }
                        else
                        {
                            lit_type.Text = "  <a class=\"btn-pink\" style=\"float:right\">贈品已選</a>";
                            issel.Visible = true;
                        }
                    }
                    else
                    {
                        lit_type.Text = "  <a class=\"btn-Purple\" style=\"float:right\">尚未付款</a>";
                    }


                }
            }
            else
            {
                noorder.Visible = true;
            }
        }

    }
    private void bindProduct(Repeater rp, DataTable dt, string ORM02)
    {
        DataColumn dc = new DataColumn("ORM02");
        dc.DefaultValue = ORM02;
        dc.AllowDBNull = true;
        dt.Columns.Add(dc);

        rp.DataSource = dt;
        rp.DataBind();
    }
    //S180209140925846
    protected void Button1_Click(object sender, EventArgs e)
    {
        //ScriptManager.RegisterStartupScript(up_sel, typeof(UpdatePanel), "doevnet", "$('#mbody').removeClass('loading-done');", true);
        string iid = hf_IID.Value;
        string oid = hf_OID.Value;
        string PNAME = hf_PNAME.Value;
        string rval = rgBL.EnterOrderGift(oid, iid, PNAME);
        if (rval.Equals("OK"))
        {
            Response.Redirect("2018cnyregister.aspx");
        }
        else
        {
            ScriptManager.RegisterStartupScript(up_sel, typeof(UpdatePanel), "doevnet", "LoadingDone();alert('" + rval + "');", true);

        }
    }
}