using System;
using static System.Console;

class Base
{
   // public Base()      { WriteLine("Base()"); }
    public Base(int n) { WriteLine("Base(int)"); }
}
class Derived : Base
{
    public Derived()     : base(0) { WriteLine("Derived()"); }
    public Derived(int n): base(n) { WriteLine("Derived(int)"); }
}
class Program
{
    public static void Main()
    {
        Derived d = new Derived(1);
    }
}