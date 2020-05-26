using System;
using System.IO;
using System.Text;

class Program
{
    public static void Main()
    {
        byte b1 = 10;
        byte[] buff = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };

        //FileStream fs1 = File.Create("D:\\a.txt");
        FileStream fs1 = new FileStream("d:\\a.txt", FileMode.Create, FileAccess.ReadWrite);

        //+ 1. 파일에 한 바이트 쓰기
        fs1.WriteByte(b1); // 10

        //+ 2. byte 배열 쓰기
        fs1.Write(buff, 0, buff.Length); // 10, 1,2,3,4,5,6,

        //+ 3. 파일 포인터 이동
        fs1.Seek(3, SeekOrigin.Begin);

        //+ 4. 한 바이트 읽기
        int n = fs1.ReadByte();
        Console.WriteLine(n); // 3


        //+ 5. 문자열 출력
        // 문자열 => byte[] 로 변경.
        string s = "Hello";
        byte[] buff2 = Encoding.ASCII.GetBytes(s);

        fs1.Write(buff2, 0, buff2.Length);


        //+ 6.파일 닫기
        fs1.Close(); // fs1.Dispose();

    }
}