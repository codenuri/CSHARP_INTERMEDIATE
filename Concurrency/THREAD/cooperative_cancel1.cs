using System;
using System.Threading;

class Program
{
    public static void Count(int cnt)
    {
        for (int i = 0; i < cnt; i++)
        {
            Console.WriteLine(i);
            Thread.Sleep(200);
        }
    }
    public static void Main()
    {
        Thread t = new Thread(o => Count(1000));
        t.Start();

    }
}

