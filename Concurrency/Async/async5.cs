// async5.cs
using System;
using System.Threading;
using System.Threading.Tasks;

class Program
{
    public static Task<int> SumAsync(int first, int last)
    {
        return Task.Run(() =>
        {
            int s = 0;
            for (int i = first; i <= last; i++)
            {
                s += i;
                Thread.Sleep( 10 );
            }
            return s;
        });
    }
    public static void Foo()
    {
        int first = i * 100 + 1;
        int last  = (i + 1) * 100;

        Task<int> t = SumAsync(first, last );

        var awaiter = t.GetAwaiter();
        awaiter.OnCompleted( () => Console.WriteLine($"{first} ~ {last} : {awaiter.GetResult()}"));
    }
    public static void Main()
    {
        Foo();

        Console.ReadLine();
    }
}

