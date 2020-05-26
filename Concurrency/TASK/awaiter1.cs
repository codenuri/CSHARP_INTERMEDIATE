using System;
using System.Runtime.CompilerServices;
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

        t.ContinueWith( task => Console.WriteLine($"ContinueWith : {task.Result}")  );


        TaskAwaiter<int> awaiter = t.GetAwaiter();

        awaiter.OnCompleted( () => Console.WriteLine($"awaiter : {awaiter.GetResult()}"));


        Console.ReadLine();
    }
}