using System;

class Program
{   
    public int square(int n)
    {
        return n * n;
    }
    public int square2(int n) => n * n;

    public static void Main()
    {
        int n = 50;

        //int s = n switch { 10 => 11, 20 => 22, 30 => 33, _ => 100  };

        int s = n switch { 
            10 => 11, 
            20 => 22, 
            30 => 33, 
            _ => 100 
        };

        Console.WriteLine(s);


        int k = 2 * 3 + 4 - n;


        //# 일반적인 switch 문의 구조 ( switch statement )
        switch(n)
        {
            case 10: break;
            case 20: break;
            default: break;
        }

    }
}