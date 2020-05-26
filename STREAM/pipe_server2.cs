using System;
using System.CodeDom;
using System.IO;
using System.IO.Pipes;
using System.Text;

class Program
{
    public static async void RunServer()
    {
        NamedPipeServerStream ps = new NamedPipeServerStream("MyPipe", 
                                                   PipeDirection.InOut,
                                                   1,
                                                   PipeTransmissionMode.Message,
                                                   PipeOptions.Asynchronous); // 핵심!!
        while (true)
        {
            Console.WriteLine("Wait Client...");

            await ps.WaitForConnectionAsync();  
            
            Console.WriteLine("Client Connected...");

            // Stream Adapter
            var sr = new StreamReader(ps);
            var sw = new StreamWriter(ps);
            sw.AutoFlush = true;

            string data = await sr.ReadLineAsync();

            Console.WriteLine($"SERVER RECEIVED : {data}");

            await sw.WriteLine(data);

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