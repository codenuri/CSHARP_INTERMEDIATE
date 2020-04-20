using System;

class Point
{
    public int x;
    public int y;
    public static int cnt;

    public Point(int a, int b) { Console.WriteLine("instance ctor"); }
    static Point() { cnt = 0;    Console.WriteLine("static ctor"); }
}
class Program
{
    public static void Main()
    {
        int n = Point.cnt;

        //    Point pt1 = new Point(1, 1);
        //    Point pt2 = new Point(1, 1);
        int n2 = A.a;
    }
}

class A
{
    public static int a;

    static A()
    {
        Console.WriteLine($"A : {B.b}");
        a = 10;
    }
}
class B
{
    public static int b;

    static B()
    {        
        Console.WriteLine($"B : {A.a}");
        b = 10;
    }
}