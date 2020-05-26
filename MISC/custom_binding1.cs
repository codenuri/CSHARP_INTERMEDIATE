using System;
using System.Dynamic;

class Car : DynamicObject
{
    public void Go() { Console.WriteLine("Car Go"); }

    public override bool TryInvokeMember(InvokeMemberBinder binder, object[] args, out object result)
    {
        Console.WriteLine("AAA");
        result = null;
        return true;// base.TryInvokeMember(binder, args, out result);
    }
}

class Program
{
    public static void Main()
    {
        dynamic d = new Car();
        d.Go();
    }
}
