using System;
using System.Threading;
using System.Threading.Tasks;

class Program
{
    public static int Sum(int cnt)
    {
        Console.WriteLine($"Sum : {Thread.CurrentThread.ManagedThreadId}");
        int s = 0;
        for (int i = 0; i <= cnt; i++)
            s += i;
        Console.WriteLine("Finish Sum");
        return s;
    }
    public static void Main()
    {
        Console.WriteLine($"Main : {Thread.CurrentThread.ManagedThreadId}");
        Task<int> t = Task.Run(() => Sum(1000));

        t.ContinueWith(Foo, TaskContinuationOptions.ExecuteSynchronously) ;

        t.ContinueWith(Goo, TaskContinuationOptions.ExecuteSynchronously);

        //t.ContinueWith((task) => Console.WriteLine("lambda"));

        Console.ReadLine();  
    }

    public static void Foo(Task<int> t)
    {
        Console.WriteLine($"Foo : {Thread.CurrentThread.ManagedThreadId}");
        Console.WriteLine($"Foo : {t.Result}");
    }
    public static void Goo(Task<int> t)
    {
        Console.WriteLine($"Goo : {Thread.CurrentThread.ManagedThreadId}");
        Console.WriteLine($"Goo : {t.Result}");
    }
}