using System;
using System.Threading;

class Program
{
    public static void Foo()
    {
        for (int i = 0; i < 10000; i++)
            Console.Write("1");
    }
    public static void Main()
    {
        Thread t = new Thread(Foo);
        t.Start();

        for (int i = 0; i < 10000; i++)
        {
            Console.Write("2");
        }
    }
}