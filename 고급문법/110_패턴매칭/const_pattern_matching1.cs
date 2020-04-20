using System;

class Circle { }

class Program
{
    public static void Main()
    {
        object o = new Circle();

        if ( o is Circle c1) { } // type pattern matching
        if ( o is var c2)    { } // var pattern matching


        int n = 10;
        
        if ( n is 10 ) // const pattern matching
        {
        }

        if ( n == 10 )
        {
        }

        object obj = 10;

        //if ( obj == 10 ) // error
        //if (obj == (object)10) // ok

        if ((int)obj == 10) // ok
        {
            //Console.WriteLine("True");
        }
        //else
            //Console.WriteLine("False");

        if ( obj is 10)
        {
        }
    }
}
