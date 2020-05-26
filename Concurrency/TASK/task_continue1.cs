using System;
using System.Threading;
using System.Threading.Tasks;

class Program
{
    public static int Sum(int cnt)
    {
        int s = 0;
        for (int i = 0; i <= cnt; i++)
            s += i;
        return s;
    }

    public static void Main()
    {
        Task<int> t = Task.Run(() => Sum(1000));

        t.ContinueWith(메소드);

        // 아래 2줄은 주스레드가 Block 되게 된다.
        //t.Wait();
        //int n = t.Result;
    }
}