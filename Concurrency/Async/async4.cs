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

    //public static async void UpdateResult()
    //public static async Task UpdateResult()
    public static async Task<int> UpdateResult()
    {
        int ret = await SumAsync(1, 200); 

        Console.WriteLine($"{ret}");
        return ret;
    }


    public static void Main()
    {
        Task<int> t = UpdateResult();

        //t.Wait();
        Console.WriteLine($"Main : {t.Result}");


        Console.WriteLine("Main : Run Event Loop");
        Console.ReadLine();
    }
}
