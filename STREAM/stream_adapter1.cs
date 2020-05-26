using System;
using System.IO;
using System.IO.Compression;
using System.Text;

class Program
{
    public static void Main()
    {
        Console.WriteLine("Hello");

        FileStream fs = new FileStream("D:\\a.txt", FileMode.Create);

        // "Hello" 를 파일에 쓰고 싶다.
        //string s = "hello";
        //byte[] buff = Encoding.ASCII.GetBytes(s);

        //fs.Write(buff, 0, buff.Length);

        StreamWriter sw = new StreamWriter(fs, Encoding.ASCII);
        sw.WriteLine("Hello");

       // GZipStream gz = new GZipStream(fs);
       // gz.Write()

        sw.Close();
        fs.Close();
    }
}