using System;

class Base
{
    public         void Foo() { }
    public virtual void Goo() { }
}

class Derived : Base
{
    public new      void Foo() { }
    public override void Goo() { }
    public static   void Hoo() { }
}

class Program
{
    public static void Main()
    {
        Derived.Hoo();      // 정적 메소드
        new Derived().Foo();// 비가상
        new Derived().Goo();// 가상.. 
                            
    }
}