using System;
using System.Threading;
using System.Threading.Tasks;

class Program
{
    static void F1() 
    {
        Console.WriteLine($"{Thread.CurrentThread.IsThreadPoolThread}");
        Console.WriteLine($"{Thread.CurrentThread.IsBackground}");
    }

    static void Main()
    {
        //Task t1 = new Task(F1); 
        Task t1 = new Task(F1, TaskCreationOptions.LongRunning);

        t1.Start();
        t1.Wait();

        Task t2 = Task.Run(F1);
    }
}