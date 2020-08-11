using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;


public partial class imagecode : System.Web.UI.Page
{
    private int letterWidth = 16;//單個字體的寬度範圍  
    private int letterHeight = 24;//單個字體的高度範圍  
    private int letterCount = 4;//驗證碼位數  
    //private char[] chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ".ToCharArray();
    private char[] chars = "0123456789".ToCharArray();
    private string[] fonts = { "Arial", "Georgia" };
    /// <summary>  
    /// 產生波形濾鏡效果  
    /// </summary>  
    private const double PI = 3.1415926535897932384626433832795;
    private const double PI2 = 6.283185307179586476925286766559;

    protected void Page_Load(object sender, EventArgs e)
    {

        //防止網頁後退--禁止緩存      
        Response.Expires = 0;
        Response.Buffer = true;
        Response.ExpiresAbsolute = DateTime.Now.AddSeconds(-1);
        Response.AddHeader("pragma", "no-cache");
        Response.CacheControl = "no-cache";
        string str_ValidateCode = GetRandomNumberString(letterCount);
        //HttpCookie objCookie = new HttpCookie("ValidateCode");
        //objCookie.Value = str_ValidateCode;
        //objCookie.Path = "/";
        //objCookie.Expires = DateTime.Now.AddSeconds(1200);
        //Response.Cookies.Add(objCookie);
        Session["validatecode"] = str_ValidateCode;
        CreateImage(str_ValidateCode);

    }
    public void CreateImage(string checkCode)
    {
        int int_ImageWidth = checkCode.Length * letterWidth;
        Random newRandom = new Random();
        Bitmap image = new Bitmap(int_ImageWidth, letterHeight);
        Graphics g = Graphics.FromImage(image);
        //生成隨機生成器  
        Random random = new Random();
        //白色背景  
        g.Clear(Color.White);
        //畫圖片的背景雜音線  
        for (int i = 0; i < 10; i++)
        {
            int x1 = random.Next(image.Width);
            int x2 = random.Next(image.Width);
            int y1 = random.Next(image.Height);
            int y2 = random.Next(image.Height);

            g.DrawLine(new Pen(Color.Silver), x1, y1, x2, y2);
        }

        //畫圖片的前景噪音點  
        for (int i = 0; i < 10; i++)
        {
            int x = random.Next(image.Width);
            int y = random.Next(image.Height);

            image.SetPixel(x, y, Color.FromArgb(random.Next()));
        }
        //隨機字體和顏色的驗證碼字元  
        int findex;
        for (int int_index = 0; int_index < checkCode.Length; int_index++)
        {
            findex = newRandom.Next(fonts.Length - 1);
            string str_char = checkCode.Substring(int_index, 1);
            Brush newBrush = new SolidBrush(Color.FromArgb(153, 43, 51));
            //Brush newBrush = new SolidBrush(GetRandomColor());
            Point thePos = new Point(int_index * letterWidth + 1 + newRandom.Next(3), 1 + newRandom.Next(3));//5+1+a+s+p+x  
            g.DrawString(str_char, new Font(fonts[findex], 10, FontStyle.Regular), newBrush, thePos);
        }
        //灰色邊框  
        g.DrawRectangle(new Pen(Color.LightGray, 1), 0, 0, int_ImageWidth - 1, (letterHeight - 1));
        //圖片扭曲  
        //image = TwistImage(image, true, 3, 4);  
        //將生成的圖片發回用戶端  
        MemoryStream ms = new MemoryStream();
        image.Save(ms, ImageFormat.Png);
        Response.ClearContent(); //需要輸出圖像資訊 要修改HTTP頭   
        Response.ContentType = "image/Png";
        Response.BinaryWrite(ms.ToArray());
        g.Dispose();
        image.Dispose();
    }
    /// <summary>  
    /// 正弦曲線Wave扭曲圖片  
    /// </summary>  
    /// <param name="srcBmp">圖片路徑</param>  
    /// <param name="bXDir">如果扭曲則選擇為True</param>  
    /// <param name="nMultValue">波形的幅度倍數，越大扭曲的程度越高，一般為3</param>  
    /// <param name="dPhase">波形的起始相位，取值區間[0-2*PI)</param>  
    /// <returns></returns>  
    public System.Drawing.Bitmap TwistImage(Bitmap srcBmp, bool bXDir, double dMultValue, double dPhase)
    {
        System.Drawing.Bitmap destBmp = new Bitmap(srcBmp.Width, srcBmp.Height);

        // 將點陣圖背景填充為白色  
        System.Drawing.Graphics graph = System.Drawing.Graphics.FromImage(destBmp);

        graph.FillRectangle(new SolidBrush(System.Drawing.Color.White), 0, 0, destBmp.Width, destBmp.Height);

        graph.Dispose();

        double dBaseAxisLen = bXDir ? (double)destBmp.Height : (double)destBmp.Width;

        for (int i = 0; i < destBmp.Width; i++)
        {
            for (int j = 0; j < destBmp.Height; j++)
            {
                double dx = 0;

                dx = bXDir ? (PI2 * (double)j) / dBaseAxisLen : (PI2 * (double)i) / dBaseAxisLen;

                dx += dPhase;

                double dy = Math.Sin(dx);

                // 取得當前點的顏色  
                int nOldX = 0, nOldY = 0;

                nOldX = bXDir ? i + (int)(dy * dMultValue) : i;

                nOldY = bXDir ? j : j + (int)(dy * dMultValue);

                System.Drawing.Color color = srcBmp.GetPixel(i, j);
                if (nOldX >= 0 && nOldX < destBmp.Width && nOldY >= 0 && nOldY < destBmp.Height)
                {
                    destBmp.SetPixel(nOldX, nOldY, color);
                }
            }
        }
        return destBmp;
    }
    public Color GetRandomColor()
    {
        Random RandomNum_First = new Random((int)DateTime.Now.Ticks);
        System.Threading.Thread.Sleep(RandomNum_First.Next(50));
        Random RandomNum_Sencond = new Random((int)DateTime.Now.Ticks);
        int int_Red = RandomNum_First.Next(210);
        int int_Green = RandomNum_Sencond.Next(180);
        int int_Blue = (int_Red + int_Green > 300) ? 0 : 400 - int_Red - int_Green;
        int_Blue = (int_Blue > 255) ? 255 : int_Blue;
        return Color.FromArgb(int_Red, int_Green, int_Blue);
    }
    //  生成亂數字字串  
    public string GetRandomNumberString(int int_NumberLength)
    {
        Random random = new Random();
        string validateCode = string.Empty;
        for (int i = 0; i < int_NumberLength; i++)
            validateCode += chars[random.Next(0, chars.Length)].ToString();
        return validateCode;
    }
}

