using System;

class Base
{
    public virtual void Foo(int a = 10)
    {
        Console.WriteLine($"Base.Foo( {a} )");
    }
}
class Derived : Base
{
    public override void Foo(int a = 20)
    {
        Console.WriteLine($"Derived.Foo( {a} )");
    }
}
class Program
{
    public static void Main()
    {
        Base b = new Derived();
        b.Foo(); // 컴파일 할때 
                   //객체(실행시간에조사하는 코드).Foo(10)
    }
}