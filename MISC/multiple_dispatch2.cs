using System;

abstract class Character
{
    public abstract void Fight(A a);
    public abstract void Fight(B a);
}

class A : Character
{
    public override void Fight(A a) { Console.WriteLine("A Fight With A"); }
    public override void Fight(B b) { Console.WriteLine("A Fight With B"); }
}

class B : Character
{
    public override void Fight(A a) { Console.WriteLine("B Fight With A"); }
    public override void Fight(B b) { Console.WriteLine("B Fight With B"); }
}

class Program
{
    public static void DoFight(Character c1, dynamic c2)
    {
        c1.Fight(c2);

        /*
        if (c2 is A)
            c1.Fight((A)c2);
        else if (c2 is B)
            c1.Fight((B)c2);

        */
    }
    public static void Main()
    {
        A a = new A();
        B b = new B();
        DoFight(a, a);
        DoFight(a, b);
        DoFight(b, a);
        DoFight(b, b);
    }
}
