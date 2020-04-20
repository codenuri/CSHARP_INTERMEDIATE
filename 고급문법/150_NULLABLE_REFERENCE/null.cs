using System;

class Program
{
    public static void Main()
    {
        string s1 = null;

        //# C# 6.0 NULL 병합 연산자
        string s2 = s1 ?? "hello";


        //# C# 8.0 NULL 병합 대입
        s1 = "hello";

        s1 ??= "world";  // if ( s1 == null ) s1 = "world"

        Console.WriteLine(s1);

        
    }
}