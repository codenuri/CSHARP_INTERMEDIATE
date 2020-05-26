using System;

interface Item
{
    void Fire();
}

class Fighter : Item
{
    public virtual void Fire()
    {
        Console.WriteLine("Fire Missile");
    }
}

class RightMissile : Item
{
    private Item fighter = null;

    public RightMissile(Item fg) { fighter = fg; }

    public void Fire()
    {
        fighter.Fire(); // 기존 객체의 기능 사용
        Console.WriteLine("Fire Right Missile");
    }
}

class LeftMissile : Item
{
    private Item fighter = null;

    public LeftMissile(Item fg) { fighter = fg; }

    public void Fire()
    {
        fighter.Fire(); 
        Console.WriteLine("Fire Left Missile");
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

        LeftMissile fg3 = new LeftMissile(fg2);
        fg3.Fire();
    }
}