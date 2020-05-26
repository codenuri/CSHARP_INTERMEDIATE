using System;

class Program
{
    public static void Main()
    {
        object o = new string("hello");
        //o.Go(); //+ Compile Error

        dynamic d = new string("hello");
        //d.Go();  //+ 예외 발생. 

        dynamic d1 = 10;
        dynamic d2 = "string";
        dynamic d3 = 3.4;

        Foo(d1); //+ Foo(int)를 실행할때 조사.. ok
        Foo(d2); //+ Foo(string)
        Foo(d3); //+ Foo(double)을 실행시간에 찾음.. 예외 발생.
        //Foo(3.4);//+ 컴파일 시간에 메소드 검색. - Compile Error

        Foo(d1, d1); // 인자가 dynamic 이지만 컴파일 에러

        Goo(d1); // 컴파일 에러.
        
    }
    //public static void Foo(int a, double  b) { Console.WriteLine("Foo(int)"); }
    public static void Foo(int a)    { Console.WriteLine("Foo(int)"); }
    public static void Foo(string s) { Console.WriteLine("Foo(string)"); }
}