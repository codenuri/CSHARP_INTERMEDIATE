using System;

class Shape { }

class Rectangle : Shape 
{
    public double Width { set; get; } = 10;
    public double Height { set; get; } = 10;
}
class Circle : Shape
{
    public double Radius { set; get; } = 10;
}

class Point : Shape
{
    public double x = 0;
    public double y = 0;

    public void Deconstruct(out double ox, out double oy) => (ox, oy) = (x, y);
}

class Program
{
    public static void Main()
    {
        Shape s = new Circle();

        // type pattern matching
        double area = s switch 
        {
            null => 0,   // const pattern matching
            Point _ => 0,
            Circle c => Math.PI * c.Radius * c.Radius,
            Rectangle r => r.Width * r.Height,
            _ => 0
        };





        // tuple pattern
        int value1 = 0;
        int value2 = 0;

        var ret1 = (value1, value2) switch
        {
            (0, 0) => 0,
            var (a, b) when a > 100 => 100,
            var (a, b) when a <= 100 && b > 100 => 200,
            _ => 300
        };


        // positional pattern : Deconstructor 가 있는 타입
        Point pt = new Point();
        var (x1, y1) = pt;

        var ret2 = pt switch
        {
            (0, 0) => 0,
            var (a, b) when a > 100 => 100,
            var (a, b) when a <= 100 && b > 100 => 200,
            _ => 300
        };
    }
}