using System;

class Program
{
    public static int Foo(int a, int b)
    {
        int value = 10;

        return goo(10);

        static int goo(int n)
        {
            return value + a + b + n;
        }
    }
    public static void Main()
    {
        Console.WriteLine(Foo(1, 2));
    }
}