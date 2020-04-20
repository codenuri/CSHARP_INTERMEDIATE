using System;
using static System.Console;

class Base
{
    public Base() { Foo(); }

    public virtual void Foo() { WriteLine("Base.Foo"); }    
}
class Derived : Base
{
    public int a = 100;
    public int b;
    
    public Derived()
    {
        b = 100;
    }
    public override void Foo() 
    { WriteLine($"Derived.Foo : {a}, {b}"); }
}

class Program
{
    public static void Main()
    {
        Derived d = new Derived();
    }
}