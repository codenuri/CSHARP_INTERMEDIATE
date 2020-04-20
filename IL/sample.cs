using System;

struct Point
{
    public int x;
    public int y;
}

class Program
{
    public static void Main()
    {
        Point pt1;
        Point pt2 = new Point();

        Console.WriteLine($"{pt1.x}");
    }
}
