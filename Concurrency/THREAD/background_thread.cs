using System;
using System.Threading;

class Program
{
    public static void Foo(string s, int ms)
    {
        Console.WriteLine($"{s} Start");
        Thread.Sleep(ms);
        Console.WriteLine($"{s} Finish");
    }

    public static void Main()
    {
        Thread t1 = new Thread(() => Foo("A", 3000));
        t1.IsBackground = false; // foreground
        t1.Start();

        Thread t2 = new Thread(() => Foo("B", 9000));
        t2.IsBackground = true; // background
        t2.Start();

        Thread t3 = new Thread(() => Foo("C", 7000));
        t3.IsBackground = false; // foreground
        t3.Start();

        Thread t4 = new Thread(() => Foo("D", 5000));
        t4.IsBackground = true; // background
        t4.Start();
        // 주 스레드가 종료!!
    }
}