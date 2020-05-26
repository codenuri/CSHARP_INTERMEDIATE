using System;

class Fighter
{
    public virtual void Fire()
    {
        Console.WriteLine("Fire Missile");
    }
}

class RightMissile
{
    private Fighter fighter = null;
    
    public RightMissile(Fighter fg) { fighter = fg; }

    public void Fire()
    {
        fighter.Fire(); // 기존 객체의 기능 사용
        Console.WriteLine("Fire Right Missile"); 
    }
}

class Program
{
    public static void Main()
    {
        Fighter fg = new Fighter();
        fg.Fire();

        // 아이템 획득
        RightMissile fg2 = new RightMissile(fg);
        fg2.Fire();
    }
}