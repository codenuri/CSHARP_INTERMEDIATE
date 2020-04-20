using System;

class Program
{
    public static void Foo()
    {
        int n = square(3);

        int square(int a)
        {
            return a * a;
        }
    }

    /*
    public static double div(double a, double b)
    {
        if (b == 0)
            throw new Exception("divide by zero");

        return a / b;
    }
    */
    /*
    public static double div(double a, double b)
    { 
        return a / b;
    }
    */
    public static double div_wrapper(double a, double b)
    {
        if (b == 0)
            throw new Exception("divide by zero");

        return div(a, b);

        double div(double a, double b)
        {
            return a / b;
        }
    }

    public static void Main()
    {
        double ret = div_wrapper(10, 0);
        Console.WriteLine(ret);
    }
}