using System;
using System.Threading;

public static class Program
{
    private static void Foo(object arg)
    {
        Console.WriteLine($"Foo : {arg}, {Thread.CurrentThread.ManagedThreadId}");
        Thread.Sleep(1000);

        Console.WriteLine($"{Thread.CurrentThread.IsThreadPoolThread}");

        Console.WriteLine("Finish Foo");

        Console.ReadLine();
    }

    public static void Main()
    {
        //Thread t = new Thread(Foo);
        //t.Start("Hello");
        //t.Name = "AA";

        //ThreadPool.QueueUserWorkItem(Foo, "Hello");
        ThreadPool.QueueUserWorkItem(Foo); // arg 에 null 


        Console.ReadLine();
    }
}
