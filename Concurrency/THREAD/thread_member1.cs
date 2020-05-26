using System;
using System.Threading;

class Program
{
    public static void Foo()
    {
        // 자신의 참조가 필요하면
        Thread t = Thread.CurrentThread;
        Console.WriteLine($"{t.ManagedThreadId}");

        Console.WriteLine("Foo");
        Thread.Sleep(2000);
    }

    public static void Main()
    {
        Thread t1 = new Thread(Foo);
        t1.Start();

        t1.Name = "AAA";
        //t1.Name = "BBB"; // runtime rror

        Console.WriteLine($"{t1.IsAlive}");
        Console.WriteLine($"{t1.ManagedThreadId}");

        t1.Join();

    }
}