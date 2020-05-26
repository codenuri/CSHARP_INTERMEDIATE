using System;
using System.IO;
using System.Net;
using System.Net.Sockets;
using System.Security.Cryptography;
using System.Text;

namespace STREAM
{
    class Program
    {
        static void Main()
        {
            IPAddress ip = new IPAddress(new byte[] { 127, 0, 0, 1 });

            TcpListener server = new TcpListener(ip, 7000);
            server.Start();

            while (true)
            {
                TcpClient tc = server.AcceptTcpClient();

                NetworkStream ns = tc.GetStream();

                byte[] buff = new byte[256];

                ns.Read(buff, 0, 256);

                string output = Encoding.UTF8.GetString(buff, 0, 255);

                Console.WriteLine($"read data : {output}");
                ns.Close();
                tc.Close();
            }
            server.Stop();
        }
    }
}
