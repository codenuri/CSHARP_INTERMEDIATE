using System;
using System.IO;
using System.Xml;

class Program
{
    public static void Main()
    {
        FileStream fs = new FileStream("D:\\a.dat", FileMode.Create);

        //StreamWriter sw = new StreamWriter(fs);
        //sw.WriteLine("Hello, world");

        //int n = 65;
        //BinaryWriter bw = new BinaryWriter(fs);
        //bw.Write(n);

        XmlWriter xw = XmlWriter.Create(fs);

        xw.WriteStartElement("book");
        xw.WriteElementString("PRICE", "3000");
        xw.WriteEndElement();
        xw.Flush();


        //bw.Close();
        fs.Close();        
    }
}