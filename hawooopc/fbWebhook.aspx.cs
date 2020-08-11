using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.Net.Sockets;
//using webcs;
using hawooo;
using System.Data;
using System.Security.Cryptography;
using System.Text;
using System.Diagnostics;
using System.Data.SqlClient;

public partial class fb_fbWebhook : System.Web.UI.Page
{
    //private string strCon = @"Data Source=localhost;Initial Catalog=FB;User ID=howard;Password=dqtmwxatvnmm";
    private static string strCon = @"Data Source=WIN-6EMB9NE7GIP;Initial Catalog=HAWOOO_CS;User ID=hawooocs;Password=@54865706999"; //線上資料庫
    //private string _FANPAGE_TOKEN = "EAAC62v0srwoBAGWrISoUCppqmfJe0henfG9DFGR1RZAwtxeH36kwxJ5Ib0aalsCZCNoi2mdT82gJYOCGsFVZBaMOLhWLLVB6Xzu3xXHsUWl5bhzHOHew6ucDeiU8Yp8bZCCq4ElONO1zwStvoBE6ppM1V2ifjMfYOKKZCzVRZAKgZDZD";
    //Socket serverSocket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.IP);
    protected void Page_Load(object sender, EventArgs e)
    {
        //WebHook整合成功CODE
        //if (!IsPostBack)
        //{
        //    string hub_mode = "";
        //    string hub_challenge = "";
        //    string hub_verify_token = "";
        //    string strToken = "ghdf1612";
        //    string strMode = "subscribe";
        //    hub_mode = null == Request["hub.mode"] ? "" : Request["hub.mode"];
        //    hub_challenge = null == Request["hub.challenge"] ? "" : Request["hub.challenge"];
        //    hub_verify_token = null == Request["hub.verify_token"] ? "" : Request["hub.verify_token"];

        //    if (hub_mode == strMode && hub_verify_token == strToken)
        //    {
        //        Response.StatusCode = 200;
        //        Response.Write(Request.Params["hub.challenge"]);
        //    }
        //    else
        //    {
        //        Response.StatusCode = 403;
        //        Response.Write("error");
        //    }
        //}

        if (!IsPostBack)
        {
            //取得Request的資料
            var sr = new StreamReader(Request.InputStream);
            string content = sr.ReadToEnd();
            try
            {
                if (content != "")
                {
                    //Json轉為List
                    var mcs = JsonConvert.DeserializeObject<ReceiveBotModel>(content);
                    //粉絲團ID
                    Dictionary<string, string> d = new Dictionary<string, string>();
                    d.Add("780442165450140", "Sdfsdf");
                    d.Add("464335860593655", "Khjkhjkhjkhjk");
                    d.Add("1930924023903393", "XCCC");
                    d.Add("1450151798399229", "Sdddd");
                    d.Add("334712033639183", "Zxc");
                    d.Add("1650338545038282", "Asdasd");

                    //0:客戶，1:粉絲團
                    string st = "0";
                    //發件者ID是否為粉絲團
                    string strName = string.Empty;
                    string strID = string.Empty;
                    foreach (var v in d)
                    {
                        if (mcs.entry[0].messaging[0].sender.id == v.Key)
                        {
                            st = "1";
                            strName = v.Value;
                            strID = v.Key;
                            break;
                        }
                        else if (mcs.entry[0].messaging[0].recipient.id == v.Key)
                        {
                            strName = v.Value;
                            strID = v.Key;
                            //var path = "https://www.hawooo.com/user/fbTest/fbBoardNew.aspx?id=" + strID;
                            //var request = (HttpWebRequest)WebRequest.Create(path);
                            break;
                        }
                    }

  
                    SqlDbmanager.executeNonQry("Insert Into HAWOOO_CS.dbo.FBCHAT Values('" + mcs.entry[0].messaging[0].message.mid + "','" + mcs.entry[0].messaging[0].sender.id + "','" + mcs.entry[0].messaging[0].recipient.id + "','" + st + "','" + mcs.entry[0].messaging[0].message.text + "','" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "','" + mcs.entry[0].time + "','" + strName + "','" + strID + "')", strCon);




                    //客戶資料
                    //string result = string.Empty;
                    //var path = "https://graph.facebook.com/v2.6/" + mcs.entry[0].messaging[0].sender.id + "?fields=first_name,last_name,profile_pic,locale,timezone,gender&access_token=" + _FANPAGE_TOKEN;
                    //var request = (HttpWebRequest)WebRequest.Create(path);
                    //request.Method = "GET";
                    //RootObject_user r = new RootObject_user();
                    //using (var response = request.GetResponse() as HttpWebResponse)
                    //{
                    //    if (request.HaveResponse && response != null)
                    //    {
                    //        using (var reader = new StreamReader(response.GetResponseStream()))
                    //        {
                    //            result = reader.ReadToEnd();
                    //            r = JsonConvert.DeserializeObject<RootObject_user>(result);
                    //        }
                    //    }
                    //}


                    //SqlCommand cmd = new SqlCommand();
                    //cmd.CommandText = @"Insert Into 
                    //FBCHAT 
                    //Values(
                    //'@mid',
                    //'@sid',
                    //'@cid',
                    //'@msg',
                    //'@time',
                    //'@fnm',
                    //'@lnm',
                    //'@pic',
                    //'@loc',
                    //'@gen',
                    //'@a'
                    //)";

                    //cmd.Parameters.Add("@mid", SqlDbType.NVarChar).Value = mcs.entry[0].messaging[0].message.mid;
                    //cmd.Parameters.Add("@sid", SqlDbType.BigInt).Value = mcs.entry[0].messaging[0].sender.id;
                    //cmd.Parameters.Add("@cid", SqlDbType.Int).Value = 0;
                    //cmd.Parameters.Add("@msg", SqlDbType.NVarChar).Value = mcs.entry[0].messaging[0].message.text;
                    //cmd.Parameters.Add("@time", SqlDbType.DateTime).Value = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                    //cmd.Parameters.Add("@fnm", SqlDbType.NVarChar).Value = r.first_name;
                    //cmd.Parameters.Add("@lnm", SqlDbType.NVarChar).Value = r.last_name;
                    //cmd.Parameters.Add("@pic", SqlDbType.NVarChar).Value = r.profile_pic;
                    //cmd.Parameters.Add("@loc", SqlDbType.NVarChar).Value = r.locale;
                    //cmd.Parameters.Add("@gen", SqlDbType.NVarChar).Value = r.gender;
                    //cmd.Parameters.Add("@a", SqlDbType.VarChar).Value = "";


                    //SqlDbmanager.executeNonQry("Insert Into FBCHAT Values('" + mcs.entry[0].messaging[0].message.mid + "','" + mcs.entry[0].messaging[0].sender.id + "','0','" + mcs.entry[0].messaging[0].message.text + "','" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "','" + r.first_name + "','" + r.last_name + "','" + r.profile_pic + "','" + r.locale + "','" + r.gender + "','')", strCon);



                }
            }
            catch (Exception ex)
            {
                if (!Directory.Exists(HttpContext.Current.Server.MapPath("fbtest")))
                {
                    Directory.CreateDirectory(HttpContext.Current.Server.MapPath("fbtest"));
                }
                HttpServerUtility Server = HttpContext.Current.Server;
                string fileName = DateTime.Now.ToString("yyyyMMdd") + ".txt";
                FileInfo fi = new FileInfo(Server.MapPath("fbtest" + "/" + fileName));
                StreamWriter sw;
                if (fi.Exists)
                {
                    sw = File.AppendText(Server.MapPath("fbtest" + "/" + fileName));
                }
                else
                {
                    File.Create(Server.MapPath("fbtest") + "/" + fileName).Close();
                    sw = File.AppendText(Server.MapPath("fbtest" + "/" + fileName));
                }
                //wex.Response.Headers.Get("www-authenticate").ToString()
                sw.WriteLine("*----------------------------------------------------------");
                sw.WriteLine("Time:" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "");
                sw.WriteLine("Request:" + content + "");
                sw.WriteLine("Message:" + ex.ToString() + "");
                sw.WriteLine("----------------------------------------------------------*");
                sw.Flush();
                sw.Close();
            }

            //}

        }
    }



    //傳送的code
    //private RootObject SendTextToUser(string userId, string strText)
    //{
    //    int i = 0;
    //    if (!Directory.Exists(HttpContext.Current.Server.MapPath("fbtest")))
    //    {
    //        Directory.CreateDirectory(HttpContext.Current.Server.MapPath("fbtest"));
    //    }
    //    HttpServerUtility Server = HttpContext.Current.Server;
    //    string fileName = DateTime.Now.ToString("yyyyMMdd") + ".txt";
    //    FileInfo fi = new FileInfo(Server.MapPath("fbtest" + "/" + fileName));
    //    StreamWriter sw;
    //    if (fi.Exists)
    //    {
    //        sw = File.AppendText(Server.MapPath("fbtest" + "/" + fileName));
    //    }
    //    else
    //    {
    //        File.Create(Server.MapPath("fbtest") + "/" + fileName).Close();
    //        sw = File.AppendText(Server.MapPath("fbtest" + "/" + fileName));
    //    }

    //    var d = new SendModel();
    //    d.message = new message { text = strText };
    //    d.recipient = new recipient { id = userId };

    //    string result = string.Empty;
    //    var path = "https://graph.facebook.com/v2.6/me/messages?access_token=" + _FANPAGE_TOKEN;
    //    var request = (HttpWebRequest)WebRequest.Create(path);
    //    request.ContentType = "application/json";
    //    request.Method = "POST";
    //    RootObject r = new RootObject();
    //    try
    //    {
    //        using (var streamWriter = new StreamWriter(request.GetRequestStream()))
    //        {
    //            streamWriter.Write(JsonConvert.SerializeObject(d));
    //            streamWriter.Flush();
    //            streamWriter.Close();
    //        }

    //        using (var response = request.GetResponse() as HttpWebResponse)
    //        {
    //            if (request.HaveResponse && response != null)
    //            {
    //                using (var reader = new StreamReader(response.GetResponseStream()))
    //                {
    //                    result = reader.ReadToEnd();
    //                    r = JsonConvert.DeserializeObject<RootObject>(result);
    //                    i = 1;
    //                }
    //            }

    //        }

    //        sw.WriteLine("*----------------------------------------------------------");
    //        sw.WriteLine("Time:" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "");
    //        sw.WriteLine("Recipient:" + userId + "");
    //        sw.WriteLine("Message:" + strText + "");
    //        sw.WriteLine("Request:" + JsonConvert.SerializeObject(d) + "");
    //        sw.WriteLine("Response:" + result + "");
    //        sw.WriteLine("----------------------------------------------------------*");

    //    }
    //    catch (Exception exx)
    //    {
    //        sw.WriteLine("*----------------------------------------------------------");
    //        sw.WriteLine("Time:" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "");
    //        sw.WriteLine("Recipient:" + userId + "");
    //        sw.WriteLine("Message:" + strText + "");
    //        sw.WriteLine("Request:" + JsonConvert.SerializeObject(d) + "");
    //        sw.WriteLine("Response:" + exx.ToString() + "");
    //        sw.WriteLine("----------------------------------------------------------*");

    //    }
    //    finally
    //    {
    //        sw.Flush();
    //        sw.Close();
    //    }

    //    if (i == 1)
    //        return r;
    //    else
    //        return null;
    //}


    public class Sender
    {
        public string id { get; set; }
    }

    public class Recipient
    {
        public string id { get; set; }
    }

    public class Message
    {
        public string mid { get; set; }
        public int seq { get; set; }
        public string text { get; set; }
    }

    public class Messaging
    {
        public Sender sender { get; set; }
        public Recipient recipient { get; set; }
        public long timestamp { get; set; }
        public Message message { get; set; }
    }

    public class Entry
    {
        public string id { get; set; }
        public long time { get; set; }
        public List<Messaging> messaging { get; set; }
    }

    public class ReceiveBotModel
    {
        public string @object { get; set; }
        public List<Entry> entry { get; set; }
    }



    public class SendModel
    {
        public recipient recipient { get; set; }

        public message message { get; set; }
    }

    public class recipient
    {
        public string id { get; set; }
    }

    public class message
    {
        public string text { get; set; }
    }



    public class RootObject
    {
        public string recipient_id { get; set; }
        public string message_id { get; set; }
    }

    public class RootObject_user
    {
        public string first_name { get; set; }
        public string last_name { get; set; }
        public string profile_pic { get; set; }
        public string locale { get; set; }
        public int timezone { get; set; }
        public string gender { get; set; }
    }


    protected void btn_Click(object sender, EventArgs e)
    {
        //RootObject r = SendTextToUser("1817448381605190", txt2.Text.Trim());
        //if (r != null)
        //{
        //    SqlDbmanager.executeNonQry("Insert Into FBCHAT Values('" + r.message_id + "','1600646209965606','1','" + txt2.Text.Trim() + "','" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "','')", strCon);
        //}
    }



    //public class WebSocketServer
    //{
    //    // Server端的Socket
    //    private Socket _serverSocket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.IP);
    //    // SHA1加密
    //    private SHA1 _sha1 = SHA1CryptoServiceProvider.Create();
    //    // WebSocket專用GUID                          
    //    private static readonly String GUID = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
    //    // 儲存所有Client連線的佇列             
    //    private List<WebSocketConnection> _connections = new List<WebSocketConnection>();
    //    // 建立連線後觸發的事件                       
    //    public event ClientConnectedHandler OnConnected;
    //    // 通訊埠
    //    public Int32 Port { get; private set; }

    //    public void Start()
    //    {
    //        // 啟動Server Socket並監聽
    //        _serverSocket.Bind(new IPEndPoint(IPAddress.Any, Port));
    //        _serverSocket.Listen(128);
    //        // Server Socket準備接收Client端連線
    //        _serverSocket.BeginAccept(new AsyncCallback(onConnect), null);
    //    }

    //    private void onConnect(IAsyncResult result)
    //    {
    //        var clientSocket = _serverSocket.EndAccept(result);
    //        // 進行ShakeHand動作
    //        ShakeHands(clientSocket);
    //    }

    //    private void ShakeHands(Socket socket)
    //    {
    //        // 存放Request資料的Buffer
    //        byte[] buffer = new byte[1024];
    //        // 接收的Request長度
    //        var length = socket.Receive(buffer);
    //        // 將buffer中的資料解碼成字串
    //        var data = Encoding.UTF8.GetString(buffer, 0, length);
    //        Console.WriteLine(data);

    //        // 將資料字串中的空白位元移除
    //        var dataArray = data.Split(Environment.NewLine.ToCharArray(), StringSplitOptions.RemoveEmptyEntries);
    //        // 從Client傳來的Request Header訊息中取
    //        var key = dataArray.Where(s => s.Contains("Sec-WebSocket-Key: ")).Single().Replace("Sec-WebSocket-Key: ", String.Empty).Trim();
    //        var acceptKey = CreateAcceptKey(key);
    //        // WebSocket Protocol定義的ShakeHand訊息
    //        var handShakeMsg =
    //     "HTTP/1.1 101 Switching Protocols\r\n" +
    //     "Upgrade: websocket\r\n" +
    //     "Connection: Upgrade\r\n" +
    //     "Sec-WebSocket-Accept: " + acceptKey + "\r\n\r\n";

    //        socket.Send(Encoding.UTF8.GetBytes(handShakeMsg));

    //        Console.WriteLine(handShakeMsg);
    //        // 產生WebSocketConnection實體並加入佇列中管理
    //        var clientConn = new WebSocketConnection(socket);
    //        _connections.Add(clientConn);
    //        // 註冊Disconnected事件
    //        clientConn.OnDisconnected += new ClientDisconnectedEventHandler(DisconnectedWork);

    //        // 確認Connection是否繼續存在，並持續監聽
    //        if (OnConnected != null)
    //            OnConnected(clientConn, EventArgs.Empty);
    //        _serverSocket.BeginAccept(new AsyncCallback(onConnect), null);
    //    }

    //    private void DisconnectedWork(WebSocketConnection sender, EventArgs ev)
    //    {
    //        _connections.Remove(sender);
    //        sender.Close();
    //    }

    //    private String CreateAcceptKey(String key)
    //    {
    //        String keyStr = key + GUID;
    //        byte[] hashBytes = ComputeHash(keyStr);
    //        return Convert.ToBase64String(hashBytes);
    //    }

    //    private byte[] ComputeHash(String str)
    //    {
    //        return _sha1.ComputeHash(System.Text.Encoding.ASCII.GetBytes(str));
    //    }

    //}

    //public class WebSocketConnection
    //{
    //    private Socket _connection = null;
    //    // 存放資料的buffter
    //    private Byte[] _dataBuffer = new Byte[256];
    //    public event DataReceivedEventHandler OnDataReceived;
    //    public event ClientDisconnectedEventHandler OnDisconnected;

    //    private void listen()
    //    {
    //        _connection.BeginReceive(_dataBuffer, 0, _dataBuffer.Length, SocketFlags.None, Read, null);
    //    }

    //    private void Read(IAsyncResult result)
    //    {
    //        var receivedSize = _connection.EndReceive(result);
    //        if (receivedSize > 2)
    //        {
    //            // 判斷是否為最後一個Frame(第一個bit為FIN若為1代表此Frame為最後一個Frame)，超過一個Frame暫不處理
    //            if (!((_dataBuffer[0] & 0x80) == 0x80))
    //            {
    //                Console.WriteLine("Exceed 1 Frame. Not Handle");
    //                return;
    //            }
    //            // 是否包含Mask(第一個bit為1代表有Mask)，沒有Mask則不處理
    //            if (!((_dataBuffer[1] & 0x80) == 0x80))
    //            {
    //                Console.WriteLine("Exception: No Mask");
    //                OnDisconnected(this, EventArgs.Empty);
    //                return;
    //            }
    //            // 資料長度 = dataBuffer[1] - 127
    //            var payloadLen = _dataBuffer[1] & 0x7F;
    //            var masks = new Byte[4];
    //            var payloadData = filterPayloadData(ref payloadLen, ref masks);
    //            // 使用WebSocket Protocol中的公式解析資料
    //            for (var i = 0; i < payloadLen; i++)
    //                payloadData[i] = (Byte)(payloadData[i] ^ masks[i % 4]);

    //            // 解析出的資料
    //            var content = Encoding.UTF8.GetString(payloadData);
    //            Console.WriteLine("Received Data: {0}", content);

    //            // 確認是否繼續接收資料，並持續監聽
    //            if (OnDataReceived != null)
    //                OnDataReceived(this, new DataReceivedEventArgs(content));
    //            listen();
    //        }
    //        else
    //        {
    //            Console.WriteLine("Receive Error Data Frame");
    //            if (OnDisconnected != null)
    //                OnDisconnected(this, EventArgs.Empty);
    //        }
    //    }


    //    private Byte[] filterPayloadData(ref int length, ref Byte[] masks)
    //    {
    //        Byte[] payloadData;
    //        switch (length)
    //        {
    //            // 包含16 bit Extend Payload Length
    //            case 126:
    //                Array.Copy(_dataBuffer, 4, masks, 0, 4);
    //                length = (UInt16)(_dataBuffer[2] << 8 | _dataBuffer[3]);
    //                payloadData = new Byte[length];
    //                Array.Copy(_dataBuffer, 8, payloadData, 0, length);
    //                break;
    //            // 包含 64 bit Extend Payload Length
    //            case 127:
    //                Array.Copy(_dataBuffer, 10, masks, 0, 4);
    //                var uInt64Bytes = new Byte[8];
    //                for (int i = 0; i < 8; i++)
    //                {
    //                    uInt64Bytes[i] = _dataBuffer[9 - i];
    //                }
    //                UInt64 len = BitConverter.ToUInt64(uInt64Bytes, 0);

    //                payloadData = new Byte[len];
    //                for (UInt64 i = 0; i < len; i++)
    //                    payloadData[i] = _dataBuffer[i + 14];
    //                break;
    //            // 沒有 Extend Payload Length
    //            default:
    //                Array.Copy(_dataBuffer, 2, masks, 0, 4);
    //                payloadData = new Byte[length];
    //                Array.Copy(_dataBuffer, 6, payloadData, 0, length);
    //                break;
    //        }
    //        return payloadData;
    //    }

    //    public void Send(Object data)
    //    {
    //        if (_connection.Connected)
    //        {
    //            try
    //            {
    //                // 將資料字串轉成Byte
    //                var contentByte = Encoding.UTF8.GetBytes(data.ToString());
    //                var dataBytes = new List<byte>();

    //                if (contentByte.Length < 126)   // 資料長度小於126，Type1格式
    //                {
    //                    // 未切割的Data Frame開頭
    //                    dataBytes.Add((Byte)0x81);
    //                    dataBytes.Add((Byte)contentByte.Length);
    //                    dataBytes.AddRange(contentByte);
    //                }
    //                else if (contentByte.Length <= 65535)       // 長度介於126與65535(0xFFFF)之間，Type2格式
    //                {
    //                    dataBytes.Add((Byte)0x81);
    //                    dataBytes.Add((Byte)0x7E);              // 126
    //                                                            // Extend Data 加長至2Byte
    //                    dataBytes.Add((Byte)((contentByte.Length >> 8) & 0xFF));
    //                    dataBytes.Add((Byte)((contentByte.Length) & 0xFF));
    //                    dataBytes.AddRange(contentByte);
    //                }
    //                else                 // 長度大於65535，Type3格式
    //                {
    //                    dataBytes.Add((Byte)0x81);
    //                    dataBytes.Add((Byte)0x7F);              // 127
    //                                                            // Extned Data 加長至8Byte
    //                    dataBytes.Add((Byte)((contentByte.Length >> 56) & 0xFF));
    //                    dataBytes.Add((Byte)((contentByte.Length >> 48) & 0xFF));
    //                    dataBytes.Add((Byte)((contentByte.Length >> 40) & 0xFF));
    //                    dataBytes.Add((Byte)((contentByte.Length >> 32) & 0xFF));
    //                    dataBytes.Add((Byte)((contentByte.Length >> 24) & 0xFF));
    //                    dataBytes.Add((Byte)((contentByte.Length >> 16) & 0xFF));
    //                    dataBytes.Add((Byte)((contentByte.Length >> 8) & 0xFF));
    //                    dataBytes.Add((Byte)((contentByte.Length) & 0xFF));
    //                    dataBytes.AddRange(contentByte);
    //                }
    //                _connection.Send(dataBytes.ToArray());
    //            }
    //            catch (Exception ex)
    //            {
    //                Console.WriteLine(ex.Message);
    //                if (OnDisconnected != null)
    //                    OnDisconnected(this, EventArgs.Empty);
    //            }
    //        }
    //    }

    //}


    //public class DataReceivedEventArgs : EventArgs
    //{
    //    // OnReceive事件發生時傳入的資料字串
    //    public String Data { get; private set; }

    //    public DataReceivedEventArgs(String data)
    //    {
    //        Data = data;
    //    }
    //}


}