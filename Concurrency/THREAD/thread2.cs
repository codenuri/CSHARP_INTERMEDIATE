using System;
using System.Threading;

class Program
{
    public static void F1()             { Console.WriteLine($"F1"); }
    public static void F2(object? obj)  { Console.WriteLine($"F2 : {obj.ToString()}"); }
    public static void F3(object obj)   { Console.WriteLine($"F3 : {obj.ToString()}"); }
    public static void F4(string msg)   { Console.WriteLine($"F4 : {msg}"); }
    public static void F5(int a, int b) { Console.WriteLine($"F5 : {a}, {b}"); }

    public static void Main()
    {
        Thread t1 = new Thread(F1); t1.Start();

        Thread t2 = new Thread(F2); t2.Start("Hello");
        Thread t3 = new Thread(F3); t3.Start("Hello");
        //Thread t4 = new Thread(F4); // error 

        Thread t4 = new Thread(() => F4("Hello"));
        t4.Start();

        Thread t5 = new Thread((arg) => F4((string)arg));
        t5.Start("Hello");

        Thread t6 = new Thread(() => F5(1,2));
        t6.Start();
    }
}