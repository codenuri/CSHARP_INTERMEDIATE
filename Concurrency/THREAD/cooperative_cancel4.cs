using System;
using System.Threading;

class Program
{
    public static void Count(CancellationToken token, int cnt)
    {
        for (int i = 0; i < cnt; i++)
        {
            if (token.IsCancellationRequested)
            {
                Console.WriteLine("Cancelling");
                break;
            }
            Console.WriteLine(i);
            Thread.Sleep(200);
        }
        if (token.IsCancellationRequested)
        {
            Console.WriteLine("Cancelled");
        }
        else
            Console.WriteLine("Finish Count");

    }


    public static void Main()
    {
        CancellationTokenSource cts1 = new CancellationTokenSource();
        cts1.Token.Register(() => Console.WriteLine("Cancel 1"));

        CancellationTokenSource cts2 = new CancellationTokenSource();
        cts2.Token.Register(() => Console.WriteLine("Cancel 2"));

        CancellationTokenSource cts = CancellationTokenSource.CreateLinkedTokenSource(cts1.Token,
                                        cts2.Token);


        Thread t = new Thread(o => Count(cts.Token, 1000));
        t.Start();

        Console.ReadLine();
        cts2.Cancel();
    }
}

