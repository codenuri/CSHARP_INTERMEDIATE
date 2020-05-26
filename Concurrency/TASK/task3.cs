using System;
using System.Threading;
using System.Threading.Tasks;

class Program
{
    static void F1()           { Console.WriteLine("F1"); }
    static void F2(object obj) { Console.WriteLine("F1"); }
    static int  F3(object obj) { Console.WriteLine("F2"); return 100; }

    static void Main()
    {
        Task t1 = new Task(F1);         t1.Start();
        Task t2 = new Task(F2, "Hello");t2.Start();

        Task<int> t3 = new Task<int>(F3, "Hello"); t3.Start();


        Task t4 = Task.Run(F1);
        Task t5 = Task.Run(() => F2("Hello"));

        Task<int> t6 = Task.Run(() => F3("Hello"));


    }
}