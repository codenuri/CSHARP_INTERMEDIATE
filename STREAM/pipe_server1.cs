using System;
using System.IO;
using System.IO.Pipes;
using System.Text;

class Program
{
    public static void RunServer()
    {
        NamedPipeServerStream ps = new NamedPipeServerStream("MyPipe", // 이름.
                                                   PipeDirection.InOut,// 양방향
                                                   1,                  
                                                   PipeTransmissionMode.Message);
        while (true)
        {
            Console.WriteLine("Wait Client...");
            ps.WaitForConnection();     // Client 접속 대기
            Console.WriteLine("Client Connected...");

            // Stream Adapter
            var sr = new StreamReader(ps);
            var sw = new StreamWriter(ps);
            sw.AutoFlush = true;

            string data = sr.ReadLine();

            Console.WriteLine($"SERVER RECEIVED : {data}");

            sw.WriteLine(data);
            //sw.Flush();

            ps.Disconnect();
        }
    }

    public static void Main()
    {
        RunServer();
        Console.WriteLine("Main");
        Console.ReadLine();
    }
}