using System;

class CPoint
{
    public int x;
    public int y;
    public CPoint(int a = 1, int b = 1) { x = a; y = b; }
}
struct SPoint
{
    public int x;
    public int y;
    public SPoint(int a = 1, int b = 1) { x = a; y = b; }
}
class Program
{
    public static void Main()
    {
        CPoint cp1 = new CPoint(5, 5); // newobj
        SPoint sp1 = new SPoint(5, 5); // call 생성자
        CPoint cp2 = new CPoint(2);         
        SPoint sp2 = new SPoint(2);
        CPoint cp3 = new CPoint();
        SPoint sp3 = new SPoint(); // initobj

        Console.WriteLine($"{cp1.x}, {cp1.y}"); // 5, 5
        Console.WriteLine($"{sp1.x}, {sp1.y}"); // 5, 5       
        Console.WriteLine($"{cp2.x}, {cp2.y}"); // 2, 1
        Console.WriteLine($"{sp2.x}, {sp2.y}"); // 2, 1
        Console.WriteLine($"{cp3.x}, {cp3.y}"); // 1, 1
        Console.WriteLine($"{sp3.x}, {sp3.y}"); // 0, 0
    }    
}







