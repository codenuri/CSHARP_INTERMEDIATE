using System;
using System.IO;

class Program
{
   
    public static void WriteSync()
    {
        using (FileStream fs = new FileStream("a.txt", FileMode.Create))
        {
            byte[] buff = new byte[1024 * 1024 * 1000]; // 1G

            fs.Write(buff); //  동기적으로 쓰기

            Console.WriteLine("WriteSync Finish");
        }
    }

    public static async void WriteAsync()
    {
        using (FileStream fs = new FileStream("a.txt", FileMode.Create))
        {
            byte[] buff = new byte[1024 * 1024 * 1000]; // 1G

            await fs.WriteAsync(buff);

            Console.WriteLine("WriteAsync Finish");
        }
    }


    public static void Main()
    {
        //WriteSync();
        WriteAsync();
        Console.WriteLine("Main");
        Console.ReadLine();
    }
}
