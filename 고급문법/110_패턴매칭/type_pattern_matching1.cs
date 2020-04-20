using System;

class Shape { }

class Circle : Shape
{
    public double radius = 100;
}
class Program
{
    public static void Draw(Shape s)
    {
        /*
        if ( s is Circle )
        {
            Circle c1 = (Circle)s;
            double d = c1.radius;
        }
        */
        if (s is Circle c1)
        {
            double d = c1.radius;
        }

        // var pattern matching
        if (s is var c2) // var c2 = s
        {
            
        }



    }

    static void Main()
    {
        Draw(new Circle());       
    }
}
