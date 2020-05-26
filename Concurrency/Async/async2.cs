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
                Thread.Sleep(10);
            }
            return s;
        });
    }

    public static void UpdateResult()
    {

        Task<int> t = SumAsync(1, 200);

        //Console.WriteLine($"{t.Result}");

        var awaiter = t.GetAwaiter();

        awaiter.OnCompleted( () =>
            Console.WriteLine($"{awaiter.GetResult()}"));
   }



    public static void Main()
    {
        UpdateResult();

        Console.WriteLine("Main : Run Event Loop");
        Console.ReadLine();
    }
}