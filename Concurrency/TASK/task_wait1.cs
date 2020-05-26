using System;
using System.Threading;
using System.Threading.Tasks;

class Program
{
    static void F1()
    {
        Thread.Sleep(1000);
        Console.WriteLine("F1 Finish");
    }
    static void F2()
    {
        Thread.Sleep(3000);
        Console.WriteLine("F2 Finish");
    }
    static void Main()
    {
        Task t1 = Task.Run(F1);
        Task t2 = Task.Run(F2);

        Task.WaitAll(t1, t2);
                
        Console.WriteLine("Main Finish");
    }
}