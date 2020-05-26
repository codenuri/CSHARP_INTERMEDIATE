using System;
using System.Threading;

class Program
{
    static void Foo(int n)
    {
        Console.WriteLine(n);
    }
    public static void Main()
    {
        for (int i = 0; i < 20; i++)
        {
            //Foo(i);
            //Thread t = new Thread(() => Foo(i));
            int temp = i;
            Thread t = new Thread(() => Foo(temp));
            t.Start();
        }
    }
}
