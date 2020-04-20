using System;

class Point
{
    public int x = 0;
    public int y = 0;

    public Point(int a, int b) { x = a; y = b; }



    public static Point operator+(Point p1, Point p2)
    {
        Point p = new Point(p1.x + p2.x, p1.y + p2.y);
        return p;
    }
    
    /*
    public static Point op_Addition(Point p1, Point p2)
    {
        Point p = new Point(p1.x + p2.x, p1.y + p2.y);
        return p;
    }
    */
}

class Program
{
    static void Main(string[] args)
    {
        Point p1 = new Point(1, 1);
        Point p2 = new Point(2, 2);

        //Point p3 = p1 + p2; 
        Point p3 = Point.op_Addition(p1, p2);

        Console.WriteLine($"{p3.x}, {p3.y}");
    }
}

