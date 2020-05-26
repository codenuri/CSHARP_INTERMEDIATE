using System;
using System.IO;
using System.IO.Pipes;

class Program
{
    public static void RunClient()
    {
        NamedPipeClientStream ps = new NamedPipeClientStream("MyPipe");

        ps.Connect();

        var sr = new StreamReader(ps);
        var sw = new StreamWriter(ps);
        sw.AutoFlush = true;
                
        sw.WriteLine("Hello");
        
        string s = sr.ReadLine();
        Console.WriteLine($"RECEIVED DATA: {s}");

        ps.Close();
    }

    public static void Main()
    {
        RunClient();
    }
}