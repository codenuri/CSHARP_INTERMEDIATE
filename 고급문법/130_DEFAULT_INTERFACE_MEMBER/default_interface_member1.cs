using System;

interface ICamera
{
    void takePicture();

    void uploadSNS()
    {
        Console.WriteLine("upload SNS");
    }
}

class Camera : ICamera
{
    public void takePicture()
    {
        Console.WriteLine("Take Picture With Camera");
    }
    public void uploadSNS()
    {
        Console.WriteLine("Camera upload SNS");
    }
}

class Program
{
    static void Main()
    {
        Camera c = new Camera();
        c.takePicture();
        c.uploadSNS();

        ICamera ic = c;
        ic.uploadSNS();
    }
}
