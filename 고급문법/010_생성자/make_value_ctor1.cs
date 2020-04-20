using System;

struct SPoint
{
    public int x;
    public int y;
    public int cnt;

    public SPoint(int a, int b)
    {
        //this = new SPoint();
        x = a;
        y = b;
        cnt = 0;
    }
}
class Program
{
    public static void Main()
    {
        SPoint pt = new SPoint(1, 2);
    }
}







