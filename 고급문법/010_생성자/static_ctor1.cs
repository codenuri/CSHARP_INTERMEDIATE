using System;

class Point
{
    public int x;
    public int y;
    public static int cnt;

    public Point(int a, int b)
    {
        x = a;
        y = b;
//        cnt = 0;
    }
    static Point()
    {
        cnt = 0;
    }
}


class Program
{
    public static void Main()
    {
        Point pt1 = new Point(1, 1);
        Point pt2 = new Point(2, 2);
    }
}