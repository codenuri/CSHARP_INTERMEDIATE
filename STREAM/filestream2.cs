using System;
using System.IO;
using System.Net.Sockets;
using System.Text;

class Program
{
    static void Main()
    {
        string msg = "Hello World";
        byte[] buff = Encoding.UTF8.GetBytes(msg);

        FileStream fs = new FileStream("a.txt", FileMode.Create);
        
        fs.Write(buff, 0, buff.Length);

        fs.Seek(0, SeekOrigin.Begin);

        Console.WriteLine(fs.CanSeek); // true
        fs.Close();

        //-            
        TcpClient tc = new TcpClient("127.0.0.1", 7000);
        NetworkStream ns = tc.GetStream();

        ns.Write(buff, 0, buff.Length);
        Console.WriteLine(ns.CanSeek); // false
        //ns.Seek(0, SeekOrigin.Begin);

        ns.Close();
        tc.Close();
    }
}
