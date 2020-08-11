using NPOI.HSSF.UserModel;
using NPOI.SS.UserModel;
using NPOI.XSSF.UserModel;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using webcs;


public partial class Webform_updateorder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string filename = Path.GetFileName(FileUpload1.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/") + filename);
            string path = Server.MapPath("~/"+filename);

            DataTable dt = ImportExcelToDataTable(path, true);
            List<SqlCommand> scmd = new List<SqlCommand>();


            foreach (DataRow dr in dt.Rows)
            {
                string s = "";
                s += "UPDATE HAWOOO.DBO.ORDERM ";
                s += "SET ORM19=1";
                s += "WHERE ORM02=";
                s += dr["Order ID"].ToString();

                SqlCommand cmd = new SqlCommand(s);

                scmd.Add(cmd);
            }
            //GridView1.DataSource = dt;
            //GridView1.DataBind();


            SqlDbmanager.queryBySql(scmd);

        }


    }

    /// <summary>  
    /// 将excel导入到datatable  
    /// </summary>  
    /// <param name="filePath">excel路径</param>  
    /// <param name="isColumnName">第一行是否是列名</param>  
    /// <returns>返回datatable</returns>  
    public static DataTable ImportExcelToDataTable(string filePath, bool isColumnName)
    {
        DataTable dataTable = null;
        FileStream fs = null;
        DataColumn column = null;
        DataRow dataRow = null;
        IWorkbook workbook = null;
        ISheet sheet = null;
        IRow row = null;
        ICell cell = null;
        int startRow = 0;
        try
        {
            using (fs = File.OpenRead(filePath))
            {
                // 2007版本  
                if (filePath.IndexOf(".xlsx") > 0)
                    workbook = new XSSFWorkbook(fs);
                // 2003版本  
                else if (filePath.IndexOf(".xls") > 0)
                    workbook = new HSSFWorkbook(fs);

                if (workbook != null)
                {
                    sheet = workbook.GetSheetAt(0);//读取第一个sheet，当然也可以循环读取每个sheet  
                    dataTable = new DataTable();
                    if (sheet != null)
                    {
                        int rowCount = sheet.LastRowNum;//总行数  
                        if (rowCount > 0)
                        {
                            IRow firstRow = sheet.GetRow(0);//第一行  
                            int cellCount = firstRow.LastCellNum;//列数  

                            //构建datatable的列  
                            if (isColumnName)
                            {
                                startRow = 1;//如果第一行是列名，则从第二行开始读取  
                                for (int i = firstRow.FirstCellNum; i < cellCount; ++i)
                                {
                                    cell = firstRow.GetCell(i);
                                    if (cell != null)
                                    {
                                        if (cell.StringCellValue != null)
                                        {
                                            column = new DataColumn(cell.StringCellValue);
                                            dataTable.Columns.Add(column);
                                        }
                                    }
                                }
                            }
                            else
                            {
                                for (int i = firstRow.FirstCellNum; i < cellCount; ++i)
                                {
                                    column = new DataColumn("column" + (i + 1));
                                    dataTable.Columns.Add(column);
                                }
                            }

                            //填充行  
                            for (int i = startRow; i <= rowCount; ++i)
                            {
                                row = sheet.GetRow(i);
                                if (row == null) continue;

                                dataRow = dataTable.NewRow();
                                for (int j = row.FirstCellNum; j < cellCount; ++j)
                                {
                                    cell = row.GetCell(j);
                                    if (cell == null)
                                    {
                                        dataRow[j] = "";
                                    }
                                    else
                                    {
                                        //CellType(Unknown = -1,Numeric = 0,String = 1,Formula = 2,Blank = 3,Boolean = 4,Error = 5,)  
                                        switch (cell.CellType)
                                        {
                                            case CellType.Blank:
                                                dataRow[j] = "";
                                                break;
                                            case CellType.Numeric:
                                                short format = cell.CellStyle.DataFormat;
                                                //对时间格式（2015.12.5、2015/12/5、2015-12-5等）的处理  
                                                if (format == 14 || format == 31 || format == 57 || format == 58)
                                                    dataRow[j] = cell.DateCellValue;
                                                else
                                                    dataRow[j] = cell.NumericCellValue;
                                                break;
                                            case CellType.String:
                                                dataRow[j] = cell.StringCellValue;
                                                break;
                                        }
                                    }
                                }
                                dataTable.Rows.Add(dataRow);
                            }
                        }
                    }
                }
            }
            return dataTable;
        }
        catch (Exception ex)
        {
            if (fs != null)
            {
                fs.Close();
            }
            return dataTable;
        }
    }


}