using System;
using System.Threading;
using System.Threading.Tasks;

class Program
{
    public static int Sum(int cnt)
    {
  
        return 100;
    }
    public static void Main()
    {
        Task<int> t = Task.Run(() => Sum(1000));

        t.ContinueWith(F1, TaskContinuationOptions.NotOnCanceled);
        t.ContinueWith(F2, TaskContinuationOptions.OnlyOnFaulted);
        t.ContinueWith(F3, TaskContinuationOptions.OnlyOnRanToCompletion);

        Console.ReadLine();
    }
    public static void F1(Task<int> t) { Console.WriteLine($"F1 : {t.Result}");  }
    public static void F2(Task<int> t) { Console.WriteLine($"F2 : {t.Result}");  }
    public static void F3(Task<int> t) { Console.WriteLine($"F3 : {t.Result}"); }
}