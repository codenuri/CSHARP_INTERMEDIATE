using System;

class Car
{
    public void Go() { Console.WriteLine("Car Go"); }
}
class Program
{    
    public static void Main()
    {
        object o = new Car();
        //o.Go();     //+ compile error
        //o.Stop();   //+ compile error

        dynamic d = new Car();
        d.Go();     //+ ok.
        d.Stop();   //+ 예외 발생

        var v = new Car(); // 컴파일 시간에 v의 타입 결정. Car v = Car()
        v.Go();     //+ ok
        //v.Stop();   //+ compile error
    }
}