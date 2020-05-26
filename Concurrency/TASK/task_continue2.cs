using System;
using System.Threading;
using System.Threading.Tasks;

class Program
{  
    public static int Sum(int cnt)
    {
        int s = 0;
        for( int i = 0; i <= cnt; i++)
            s += i;
        Console.WriteLine("Finish Sum");
        return s;
    }
    public static void Main()
    {
        Task<int> t = Task.Run( () => Sum(1000) );

        t.ContinueWith(Foo);
        t.ContinueWith(Goo);
        t.ContinueWith((task) => Console.WriteLine("lambda"));

        Console.ReadLine();
    }

    public static void Foo(Task<int> t)
    {
        Console.WriteLine($"Foo : {t.Result}");
    }
    public static void Goo(Task<int> t)
    {
        Console.WriteLine($"Goo : {t.Result}");
    }
}