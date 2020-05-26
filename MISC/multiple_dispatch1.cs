using System;

abstract class Character
{
    public abstract void Fight();
}

class A : Character
{
    public override void Fight() { Console.WriteLine("A Fight"); }
}

class B : Character
{
    public override void Fight() { Console.WriteLine("B Fight"); }
}

class Program
{
    public static void DoFight(Character c)
    {
        c.Fight();
    }
    public static void Main()
    {
        A a = new A();
        B b = new B();
        DoFight(a);
        DoFight(b);
    }
}
