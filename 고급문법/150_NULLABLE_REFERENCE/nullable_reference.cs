using System;

class Program
{
    static void Main()
    {
        //int  n1 = null; // error
        //int? n2 = null;  // ok


#nullable enable       // 참조 타입 변수를 null 을 대입하면 경고..
        string s1 = null; // ok
        string? s2 = null;
#nullable disable 
        //int n = s1.Length;
    }
}

