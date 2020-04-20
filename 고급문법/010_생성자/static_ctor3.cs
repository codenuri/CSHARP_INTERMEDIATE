using System;

class Point
{
    public int x = 0;
    public int y = 0;
    public static int cnt = 0;

    public Point()
    {
        x = 100;
        y = 100;
    }
    static Point()
    {
        cnt = 100;
    }

}
class Program
{
    public static void Main()
    {
        Point pt1 = new Point();
    }
}
