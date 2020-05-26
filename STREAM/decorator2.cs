using System;

class Fighter
{
    public virtual void Fire()
    {
        Console.WriteLine("Fire Missile");
    }
}
// 상속을 사용한 기능 추가
class RightMissileFighter : Fighter
{
    public override void Fire()
    {
        base.Fire(); // 기존 기능 사용
        Console.WriteLine("Fire Right Missile"); // 추가 기능
    }
}

class Program
{
    public static void Main()
    {
        Fighter fg = new Fighter();
        fg.Fire();

        // 아이템 획득
        Fighter fg2 = new RightMissileFighter();
        fg2.Fire();
    }
}