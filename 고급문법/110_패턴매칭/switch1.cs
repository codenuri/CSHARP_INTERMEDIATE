using System;

class Shape { }
class Circle : Shape { }

class Rectangle : Shape
{
    public double width = 100;
    public double height = 100;
}

class Program
{
    public static void Draw(Shape s)
    {
        switch (s)
        {
            // const pattern matching
            case null:
                break;

            // type pattern matching
            case Circle c:
                break;       


            case Rectangle r when r.width == r.height:
                break;
            
            case Rectangle r:
                break;

            default:
                break;
        }
    }








    public static void Main()
    {
        Draw(new Rectangle());

        //# 전통적인 switch 문의 구조
        int n = 1;
        switch (n)
        {
            case 1: 
                break;
            case 2: 
                break;
            default: 
                break;
        }
    }
}
