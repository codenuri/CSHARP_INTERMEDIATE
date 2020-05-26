using System;

class Base
{
    public         void Foo() { Console.WriteLine("Base Foo"); }
    public virtual void Goo() { Console.WriteLine("Base Goo"); }
}

class Derived : Base
{
    public new      void Foo() { Console.WriteLine("Derived Foo"); }
    public override void Goo() { Console.WriteLine("Derived Goo"); }
    public          void Hoo() { Console.WriteLine("Derived Hoo"); }
}

class Program
{
    public static void Main()
    {
        Base b = null;

        int n = 1;
        //n = int.Parse(Console.ReadLine());

        if (n == 1) b = new Derived();
        else        b = new Base();

        b.Foo(); // Base Foo
        b.Goo(); // Derived Goo
        //b.Hoo(); // Error 

        dynamic d = new Derived();
        d.Hoo();
    }
}