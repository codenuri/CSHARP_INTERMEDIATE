using System;
using System.IO;
using static System.Console; // WriteLine("AA")

class Program
{
    static void Main()
    {
        FileStream f1 = new FileStream("a1.txt", FileMode.CreateNew);
        f1.Dispose();

        using (FileStream f2 = new FileStream("a2.txt", FileMode.CreateNew))
        {

        } // f2.Dispose
    }

    public static void Foo()
    {
        //+ C# 8.0
        using FileStream f3 = new FileStream("a3.txt", FileMode.CreateNew);
        
    } // f3.Dispose()
}
