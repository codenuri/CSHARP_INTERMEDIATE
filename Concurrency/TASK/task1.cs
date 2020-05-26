using System;
using System.Threading;

class Program
{    
    public static void Foo(object arg)
    {
        Console.WriteLine("Foo");
        //return 100;
    }

    public static void Main()
    {
        Thread t1 = new Thread(Foo);
        t1.Start("Hello");
        t1.Join(); // 스레드 종료 대기.

        ThreadPool.QueueUserWorkItem(Foo, "Hello");    
    }
}