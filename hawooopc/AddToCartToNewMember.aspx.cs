﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hawooo;
using System.Data;

public partial class Webform_AddToCartToNewMember : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindProduct();
        }
    }
    private void BindProduct()
    {
        string strSql = @"SELECT TA.C01,TA.RCOUNT,WP01,WP02,(CAST(ROUND(Price/7.6,1) as numeric(5,2))) as 'PRICE',WP08_1 
FROM WP
CROSS APPLY (SELECT TOP 1 Price FROM ProductPriceView WHERE PID=WP01) as PP
CROSS APPLY (
SELECT * FROM (
SELECT CT.C01,(ROW_NUMBER() OVER (PARTITION BY C01 ORDER BY COUNT(ORD01) DESC)) as RCOUNT,ORD01
FROM ORDERD 
INNER JOIN ORDERM ON ORDERM.ORM01=ORDERD.ORM01
CROSS APPLY (SELECT TOP 1 C.C01 FROM WPCLS INNER JOIN C ON C01=WPC03 AND C03=0 AND ORD01=WPC02 INNER JOIN WP ON WPC02=WP01 WHERE WP07=1) as CT
WHERE ORM03 BETWEEN  DATEADD(MONTH,-1,GETDATE()) AND GETDATE()
GROUP BY CT.C01,ORD01) 
as TB WHERE RCOUNT=1 AND ORD01=WP01 AND C01 IN (42,16,47,48)) as TA";
        DataTable dt = SqlDbmanager.queryBySql(strSql);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
    }
}