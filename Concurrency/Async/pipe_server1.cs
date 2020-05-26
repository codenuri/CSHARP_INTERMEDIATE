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
            pipe_server("testpipe");
        }

        private static void pipe_server(string pipeName)
        {
            var serverPipe = new NamedPipeServerStream(pipeName, PipeDirection.InOut, 1, PipeTransmissionMode.Message, PipeOptions.None, 4096, 4096);

            while (true)
            {
                Console.WriteLine("wait connect");
                serverPipe.WaitForConnection();
                Console.WriteLine("connected");
                 

                var writer = new StreamWriter(serverPipe);
                var reader = new StreamReader(serverPipe);
                writer.AutoFlush = true;

                string data = reader.ReadLine();
                Console.WriteLine($"Received : {data}");

                writer.WriteLine(data);
                 
         
                serverPipe.Flush();

                serverPipe.Disconnect();
            }
        }

    }
}