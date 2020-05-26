using System;
using System.IO;
using System.IO.Pipes;
using System.Threading;
using System.Threading.Tasks;
 
namespace ConsoleApplication19
{
    class Program
    {  
        static void Main(string[] args)
        {
            pipe_client("testpipe");
        }  
            
        private static void pipe_client(string pipeName)
        {
            var clientPipe = new NamedPipeClientStream(".", pipeName, PipeDirection.InOut, PipeOptions.None);

            clientPipe.Connect();

            var writer = new StreamWriter(clientPipe);
            var reader = new StreamReader(clientPipe);
            writer.AutoFlush = true;

            Thread.Sleep(1000);
            writer.WriteLine("Hello");

            //Thread.Sleep(1000);
                
            string s = reader.ReadLine();
            
            Console.WriteLine($"echo : {s}");

            clientPipe.Close();       
        }
    }
}