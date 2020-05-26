using System;

class Fighter       // 전투기
{
    public virtual void Fire()
    {
        Console.WriteLine("Fire Missile");
    }
}

class Program
{
    public static void Main()
    {
        Fighter fg = new Fighter();
        fg.Fire();
    }
}