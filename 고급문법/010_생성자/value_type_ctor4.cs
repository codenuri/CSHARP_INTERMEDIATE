using System;

struct SPoint
{
    public int x;
    public int y;
}
class CCircle
{
    public SPoint center;
}
struct SCircle
{
    public SPoint center;
}

class Program
{
    public static void Main()
    {
        CCircle cc1;                    //# 객체 아님. 참조 변수
        CCircle cc2 = new CCircle();    //# 객체 생성, 모든 멤버가 0으로 초기화
        SCircle sc1;                    //# 객체 생성.
        SCircle sc2 = new SCircle();    //# 

        int n1 = cc1.center.x;  //# error. x가 메모리에 없음.
        int n2 = cc2.center.x;  //# ok. 0
        int n3 = sc1.center.x;  //# error. x가 초기화 안됨.
        int n4 = sc2.center.x;  //# ok.    x가 초기화 됨.

    }
}








